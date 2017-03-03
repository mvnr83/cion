<?php 

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");
include("includes/login_check.php");

define('SANDBOX','enable'); //enable/disable

//generate invoice pdf
//include_once('pdfvendor/examples/create_pdf.php');
//exit();      

function randomString($length = 8) {
	$str = "";
	$characters = range('A','Z');
	$max = count($characters) - 1;
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, $max);
		$str .= $characters[$rand];
	}
	return $str;
}

//echo "<pre>";
//print_r($_POST);
//exit();
//echo "<pre>";
//print_r($_SESSION);
//exit();
if(!isset($_POST['pc_number']) || $_POST['pc_number'] == ''){
    header('Location: index.php');
    exit(0);
}

$no_of_products = 0;
foreach($_SESSION['cart_info'] as $k => $v){
    $no_of_products += count($v)+1;
}
//insert transaction the database
$qry = "INSERT INTO orders (
        user_id, 
        amount,
        transaction_id,
        no_of_products,
        billing_company,
        billing_name,
        
        billing_address1,
        billing_address2,
        
        billing_city,
        billing_state,
        billing_country,
        billing_postalcode,
        billing_phone,
        ship_company,
        ship_name,
        ship_address1,
        ship_address2,
        ship_city,
        ship_state,
        
        ship_country,
        ship_pincode,
        ship_phone
        ) VALUES (
        '".$_SESSION['id']."',
        '".str_replace('$','',$_POST['cart_amount'])."',
        '".randomString()."',
        '".$no_of_products."',
        '".$_POST['billing_company']."',
        '".$_POST['billing_name']."',
        '".$_POST['billing_address1']."',
        '".$_POST['billing_address2']."',
        '".$_POST['billing_city']."',
        '".$_POST['billing_state']."',
        '".$_POST['billing_country']."',
        '".$_POST['billing_pcode']."',
        '".$_POST['billing_phone']."',
        '".$_POST['shipping_company']."',
        '".$_POST['shipping_name']."',
        '".$_POST['shipping_address1']."',
        '".$_POST['shipping_address2']."',
        '".$_POST['shipping_city']."',
        '".$_POST['shipping_state']."',
        '".$_POST['shipping_country']."',
        '".$_POST['shipping_pcode']."',
        '".$_POST['shipping_phone']."'

        )";
//echo $qry; //exit();
$sql = mysql_query($qry);
$insId = mysql_insert_id();


//insert products information
foreach($_SESSION['cart_info'] as $k => $v){
    $qry = " INSERT INTO orders_info (order_id,sub_id,link_string,download_expiry_date,downloaded_date) VALUES ('".$insId."','".$k."','".randomString(12)."',NOW()+INTERVAL 1 DAY,NOW())";
    mysql_query($qry);
    if(count($v) > 0){
        foreach($v as $key => $val){
            $qry = " INSERT INTO orders_info (order_id,sub_id,link_string,download_expiry_date,downloaded_date) VALUES ('".$insId."','".$val."','".randomString(12)."',NOW()+INTERVAL 1 DAY,NOW())";
            mysql_query($qry);
        }
    }
}

if(SANDBOX != 'enable'){
    //live
    $API_LOGIN_ID = '5SZ85aey';
    $TRANSACTION_KEY = '3Se8k7U88G3e5nFj';
    $endpointUrl = 'https://api.authorize.net/xml/v1/request.api'; //production
    $cartAmt = 1;
} else {
    //sandbox
    $API_LOGIN_ID = '6c3n654TAAU';
    $TRANSACTION_KEY = '2hK996SNKsf82t68';
    $endpointUrl = 'https://apitest.authorize.net/xml/v1/request.api'; //sandbox
    $cartAmt = str_replace('$','',$_POST['cart_amount']);
}


$requestAry = array();
$requestAry['createTransactionRequest']['merchantAuthentication'] = array('name' => $API_LOGIN_ID,'transactionKey' => $TRANSACTION_KEY);
$requestAry['createTransactionRequest']['refId'] = 'ref' . time();

$transactionRequest['transactionType'] = 'authCaptureTransaction';
$transactionRequest['amount'] = $cartAmt;

$transactionRequest['payment']['creditCard'] = array(
    'cardNumber' => $_POST['pc_number'],
    'expirationDate' => $_POST['pc_expiry_month'].$_POST['pc_expiry_year'],
    'cardCode' => $_POST['pc_cvv']
);
$transactionRequest['customer']['id'] = $_SESSION['id'];


$billTo = array(
    'firstName' => $_POST['billing_name'],
    'lastName' => '',
    'company' => $_POST['billing_company'],
    'address' => $_POST['billing_address1'],
    'city' => $_POST['billing_city'],
    'state' => $_POST['billing_state'],
    'zip' => $_POST['billing_pcode'],
    'country' => $_POST['billing_country']
);
$shipTo = array(
    'firstName' => $_POST['shipping_name'],
    'lastName' => '',
    'company' => $_POST['shipping_company'],
    'address' => $_POST['shipping_address1'],
    'city' => $_POST['shipping_city'],
    'state' => $_POST['shipping_state'],
    'zip' => $_POST['shipping_pcode'],
    'country' => $_POST['shipping_country']
);

$transactionRequest['billTo'] = $billTo;
$transactionRequest['shipTo'] = $shipTo;

$transactionRequest['customerIP'] = $_SERVER['REMOTE_ADDR'];
//line items


$requestAry['createTransactionRequest']['transactionRequest'] = $transactionRequest;



$reqStr = json_encode($requestAry);
//exit();



$qry = " INSERT INTO authorize_trans_log (api_request,created_on) VALUES ('".$reqStr."','".date('Y-m-d H:i:s')."')";
mysql_query($qry);
$logId = mysql_insert_id();

//echo $endpointUrl;
$ch = curl_init($endpointUrl);                                                                      
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
curl_setopt($ch, CURLOPT_POSTFIELDS, $reqStr);                                                                  
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
    'Content-Type: application/json',                                                                                
    'Content-Length: ' . strlen($reqStr))                                                                       
);                                                                                                                   

//if(curl_exec($ch) === false)
//{
//    echo 'Curl error: ' . curl_error($ch);
//}


$result = curl_exec($ch);
$__BOM = pack('CCC', 239, 187, 191);
// Careful about the three ='s -- they're all needed.
while(0 === strpos($result, $__BOM))
    $result = substr($result, 3);

$qry = "UPDATE authorize_trans_log SET api_response='".$result."' WHERE id = '".$logId."'";
$sql = mysql_query($qry);


$resAry = json_decode($result,true);

if ($resAry != null && count($resAry) > 0) 
{
  
  if ( isset($resAry['messages']['message'][0]['code']) && $resAry['messages']['message'][0]['code'] == 'I00001' && $resAry['transactionResponse']['responseCode'] == 1)
  {
      //generate invoice pdf
      //include_once('pdfvendor/create_pdf.php');
      
      $qry = "UPDATE orders SET transaction_pending='Completed', payment_auth_code = '".$resAry['transactionResponse']['authCode']."', payment_trans_id = '".$resAry['transactionResponse']['transId']."' WHERE order_id = '".$insId."'";
      $sql = mysql_query($qry);
      $_SESSION['payment_id'] = $insId;
      
      $pay_success = 'yes';
      $send_downloadlink = 'yes';
      include_once('send_emails.php');
      header('Location: payment_success.php');
      exit();
    //echo "Charge Credit Card AUTH CODE : " . $tresponse->getAuthCode() . "\n";
    //echo "Charge Credit Card TRANS ID  : " . $tresponse->getTransId() . "\n";
  }
  else
  {
      $qry = "UPDATE orders SET transaction_pending='failed' WHERE order_id = '".$insId."'";
      $sql = mysql_query($qry);
      $pay_failed = 'yes';
      include_once('send_emails.php');
      header('Location: payment_failed.php');
      exit();
    //echo "Charge Credit Card ERROR :  Invalid response\n";
  }
}  
else
{
    $qry = "UPDATE orders SET transaction_pending='failed' WHERE order_id = '".$insId."'";
    $sql = mysql_query($qry);
    $pay_failed = 'yes';
    include_once('send_emails.php');
    header('Location: payment_failed.php');
    exit();
  //echo  "Charge Credit Card Null response returned";
}





$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("cartinfo",$cartInfo);
$smarty->assign('cart_price','$'.$total_price);
$content=$smarty->fetch("checkout.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");





/************** PHP SDK code *********/

//
//
////echo $insId;
////exit();
//require 'vendor/autoload.php'; 
//use net\authorize\api\contract\v1 as AnetAPI;
//use net\authorize\api\controller as AnetController;
//
//define("AUTHORIZENET_LOG_FILE","phplog");
//
//// Common setup for API credentials  
//  $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();   
////  $merchantAuthentication->setName("YOUR_API_LOGIN_ID");   
////  $merchantAuthentication->setTransactionKey("YOUR_TRANSACTION_KEY");   
//  $merchantAuthentication->setName("6c3n654TAAU");   
//  $merchantAuthentication->setTransactionKey("97Lus6bs4P3DVe99");   
//  $refId = 'ref' . time();
//
//// Create the payment data for a credit card
//  $creditCard = new AnetAPI\CreditCardType();
//  //$creditCard->setCardNumber("4111111111111111" );  
//  //$creditCard->setExpirationDate( "2038-12");
//  $creditCard->setCardNumber($_POST['pc_number']);  
//  $creditCard->setExpirationDate($_POST['pc_expiry_month']."-".$_POST['pc_expiry_year']);
//  $paymentOne = new AnetAPI\PaymentType();
//  $paymentOne->setCreditCard($creditCard);
//
//// Create a transaction
//  $transactionRequestType = new AnetAPI\TransactionRequestType();
//  $transactionRequestType->setTransactionType("authCaptureTransaction");   
//  //$transactionRequestType->setAmount(151.51);
//  $transactionRequestType->setAmount(str_replace('$','',$_POST['cart_amount']));
//  $transactionRequestType->setPayment($paymentOne);
//  $request = new AnetAPI\CreateTransactionRequest();
//  $request->setMerchantAuthentication($merchantAuthentication);
//  $request->setRefId( $refId);
//  $request->setTransactionRequest($transactionRequestType);
//  $controller = new AnetController\CreateTransactionController($request);
//  $response = $controller->executeWithApiResponse(\net\authorize\api\constants\ANetEnvironment::SANDBOX);   
//
//if ($response != null) 
//{
//  $tresponse = $response->getTransactionResponse();
//  if (($tresponse != null) && ($tresponse->getResponseCode()=="1"))
//  {
//      
//      
//      $qry = "UPDATE orders SET transaction_pending='Completed', payment_auth_code = '".$tresponse->getAuthCode()."', payment_trans_id = '".$tresponse->getTransId()."' WHERE order_id = '".$insId."'";
//      $sql = mysql_query($qry);
//      $_SESSION['payment_id'] = $insId;
//      
//      $pay_success = 'yes';
//      $send_downloadlink = 'yes';
//      include_once('send_emails.php');
//      header('Location: payment_success.php');
//      exit();
//    //echo "Charge Credit Card AUTH CODE : " . $tresponse->getAuthCode() . "\n";
//    //echo "Charge Credit Card TRANS ID  : " . $tresponse->getTransId() . "\n";
//  }
//  else
//  {
//      $qry = "UPDATE orders SET transaction_pending='failed' WHERE order_id = '".$insId."'";
//      $sql = mysql_query($qry);
//      $pay_failed = 'yes';
//      include_once('send_emails.php');
//      header('Location: payment_failed.php');
//      exit();
//    //echo "Charge Credit Card ERROR :  Invalid response\n";
//  }
//}  
//else
//{
//    $qry = "UPDATE orders SET transaction_pending='failed' WHERE order_id = '".$insId."'";
//    $sql = mysql_query($qry);
//    $pay_failed = 'yes';
//    include_once('send_emails.php');
//    header('Location: payment_failed.php');
//    exit();
//  //echo  "Charge Credit Card Null response returned";
//}
?>