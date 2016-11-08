<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$fname = $_POST['first_name'];
$company = $_POST['company'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$product = $_GET['product'];
$proname = "Enterprise Security Policy Manager";
$designation = $_POST['designation'];
$domain = "1";
$users = "2";
$description = $_POST['description'];
$ClientIp = $_SERVER['REMOTE_ADDR'];

$to = "sales@cionsystems.com";
$from = "webmaster@cionsystems.com";
$_SESSION['product_name']=$_GET['product'];
if(isset($_POST['keyword']) && $_POST['keyword']=="send" && ($ClientIp!="94.242.237.136" && $ClientIp!="94.242.237.127"))
{
session_start();if( $_SESSION['security_code'] != $_POST['security_code'] || empty($_SESSION['security_code'] ) ) { $msg = "<div align='center' class='error'>Please Enter correct captcha</div>";		$smarty->assign("msg",$msg);		unset($_SESSION['security_code']);   }   else   {

	$sql_chk = "select buy_id from buy where email = '".$_POST[email]."'";
	 $res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
		{
		$msg = "<div align='center' class='error'>Email address already exists</div>";
		$smarty->assign("msg",$msg);
		}
	
		 else{
		
		$sql = "insert into buy (product,name,phone,email,company,designation,domains,users,description,created_on) values ('".$proname."','".$_POST['first_name']."','".$_POST['phone']."','".addslashes(mysql_real_escape_string($_POST['email']))."','".$_POST['company']."','".$_POST['designation']."','".$domain."','".$users."','".$_POST['description']."',now())";
$rs = mysql_query($sql);
if($rs) 
{
$msg = "<div align='center' class='success'>Thank you for registering with us</div>";
$smarty->assign("msg",$msg);
	$subject = $proname." Beta Request";
			$message = '<html><body>	
			<table width="100%" border="0" cellspacing="3" cellpadding="2">
		  <tr>
			<td> Name :'.$_POST['first_name'].' </td>
		  </tr>
		 <tr>
			<td> Phone :'.$_POST['phone'].' </td>
		  </tr>
		  <tr>
			<td> Email Address :'.$_POST['email'].' </td>
		  </tr>
		  <tr>
			<td> Company name :'.$_POST['company'].' </td>
		  </tr>
		  <tr>
			<td> Designation :'.$_POST['designation'].' </td>
		  </tr>
		
		  <tr>
			<td> Description :'.$_POST['description'].' </td>
		  </tr>
		 
		</table>
		</body>
		</html>';
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= "From: $from". "\r\n";
		error_log( '['.date("F j, Y, g:i a e O").']'.'To:'.$email.$ClientIp."<br /> \n", 3,"/logs/ClientIp.log");
		if(@mail($to, $subject, $message, $headers))
			{
				//echo $message;
				header("Location: register_thankyou.php");
				exit(0);
			}
}
unset($_SESSION['security_code']);
}
	
	}	
}
$pro_name = "<title>Request Beta Vesrion | CionSystems</title>";
$products_sql = "select * from product_details where status='Active' ORDER BY order_product";

$res_product = mysql_query($products_sql) or die(mysql_error());

$products = array();

while($fetch = mysql_fetch_assoc($res_product))
	array_push($products,$fetch);
	
$smarty->assign("productname",$pro_name);
$smarty->assign("products",$products);	
$smarty->assign("product",$product);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("requestbeta.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>