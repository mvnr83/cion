<?php 


// Set parameters

$value = file_get_contents('invoice.php'); // can aso be a url, starting with http..


if(isset($_SESSION['cart_info']) && count($_SESSION['cart_info']) > 0){
    $linksContent = '';

    foreach($_SESSION['cart_info'] as $k => $v){
        $pInfo = array();
        $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN product_details pd ON pd.id = sp.product_id  WHERE sp.sub_id = '".$k."'");
        while($res = mysql_fetch_assoc($sql)){
            $resT = $res;
            $inner_sql = mysql_query("SELECT * FROM orders_info WHERE order_id = '".$insId."' AND sub_id = '".$k."'");
            while($inner_res = mysql_fetch_assoc($inner_sql)){
                $resT['link_string'] = $inner_res['link_string'];
                $resT['orderinfo_id'] = $inner_res['id'];
            }
            $linksContent .= '<tr bgcolor="#eaeceb">
                <td width="170" style="padding:0 0 0 10px; border-bottom:1px solid #cccccc" height="40">
                              <span style="font-size:11pt;color:#696a75;font-family:trebuchet;">'.$res['product_name'].'&nbsp;('.$res['plan_name'].')</span>
                          </td>
                          <td width="12%" align="right" valign="middle" style="padding-right:20px;border-bottom:1px solid #cccccc" >'.$res['price'].'</td></tr>';
        }

        if(count($v) > 0){
            foreach($v as $key => $val){
                $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN subscription_addon sa ON sp.addon_id = sa.addon_id WHERE sp.sub_id = '".$val."'");
                while($res = mysql_fetch_assoc($sql)){
                    $resT = $res;
                    $inner_sql = mysql_query("SELECT * FROM orders_info WHERE order_id = '".$insId."' AND sub_id = '".$val."'");
                    while($inner_res = mysql_fetch_assoc($inner_sql)){
                        $resT['link_string'] = $inner_res['link_string'];
                        $resT['orderinfo_id'] = $inner_res['id'];
                    }
                    $linksContent .= '<tr bgcolor="#eaeceb">
                <td width="170" style="padding:0 0 0 10px; border-bottom:1px solid #cccccc" height="40">
                              <span style="font-size:11pt;color:#0b669c;font-family:trebuchet;"> --Addon-- </span><span style="font-size:11pt;color:#696a75;font-family:trebuchet;">'.$resT['addon_name'].'&nbsp;('.$res['plan_name'].')</span>
                          </td>
                          <td width="12%" align="right" valign="middle" style="padding-right:20px;border-bottom:1px solid #cccccc" >'.$res['price'].'</td></tr>';
                }
            }
        }
    }
}

$strAry = array(
    '%%BILL_NAME%%',
    '%%BILL_COMPANY%%',
    '%%BILL_ADDRESS1%%',
    '%%BILL_ADDRESS2%%',
    '%%BILL_CITY%%',
    '%%BILL_STATE%%',
    '%%BILL_COUNTRY%%',
    '%%BILL_ZIP%%',
    '%%BILL_PHONE%%',
    '%%SHIP_NAME%%',
    '%%SHIP_COMPANY%%',
    '%%SHIP_ADDRESS1%%',
    '%%SHIP_ADDRESS2%%',
    '%%SHIP_CITY%%',
    '%%SHIP_STATE%%',
    '%%SHIP_COUNTRY%%',
    '%%SHIP_ZIP%%',
    '%%SHIP_PHONE%%',
    '%%CONTENT%%',
    '%%TOTAL_PRICE%%',
    '%%DATE%%',
    '%%TRANSACTIONID%%'
);
$replaceAry = array(
    $_POST['billing_name'],
    $_POST['billing_company'],
    $_POST['billing_address1'],
    $_POST['billing_address2'],
    $_POST['billing_city'],
    $_POST['billing_state'],
    $_POST['billing_country'],
    $_POST['billing_pcode'],
    $_POST['billing_phone'],
    $_POST['shipping_name'],
    $_POST['shipping_company'],
    $_POST['shipping_address1'],
    $_POST['shipping_address2'],
    $_POST['shipping_city'],
    $_POST['shipping_state'],
    $_POST['shipping_country'],
    $_POST['shipping_pcode'],
    $_POST['shipping_phone'],
    $linksContent,
    '$'.str_replace('$','',$_POST['cart_amount']),
    date('M d, Y'),
    $resAry['transactionResponse']['authCode']
    
);

$htmlContent = str_replace($strAry,$replaceAry,$value);
//exit($htmlContent);

/**** Start pdf creation using Mpdf ***********/

include("mpdf/mpdf.php");

$mpdf = new mPDF('ISO-8859-1', 'Letter-L', '0', '', '0', '0', '0', '0', '4', '0', '');
$mpdf->SetAutoPageBreak(true, 0);
$mpdf->AliasNbPages();

$mpdf->AddPage();
$mpdf->setAutoTopMargin = 'stretch';
$mpdf->setAutoBottomMargin = 'stretch';

$mpdf->WriteHTML($htmlContent);

//$filename = 'test_benchmark.pdf';
$mpdf->Output($pdfPath, 'F');

/********* end pdf creation using Mpdf ***********/

/**** Start pdf creation using API ***********/

// exit(htmlentities($value)); 
// $apikey = 'f4d19396-c008-4cb0-bdda-81e9da962743';                                          
//$postdata = http_build_query(
//    array(
//        'apikey' => $apikey,
//        'value' => $value,
//        'MarginBottom' => '30',
//        'MarginTop' => '20'
//    )
//);
// 
//$opts = array('http' =>
//    array(
//        'method'  => 'POST',
//        'header'  => 'Content-type: application/x-www-form-urlencoded',
//        'content' => $postdata
//    )
//);
// 
//$context  = stream_context_create($opts);
//
// 
//// Convert the HTML string to a PDF using those parameters
//$result = file_get_contents('http://api.html2pdfrocket.com/pdf', false, $context);
// 
//// Save to root folder in website
//file_put_contents($pdfPath, $result);

/********* end pdf creation using API ***********/
?>