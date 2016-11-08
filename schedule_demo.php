<?php 

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

if(!empty($_SESSION['username']))
{
$get_user = mysql_fetch_array(mysql_query("select * from users where user_name='".$_SESSION['username']."'"));
$fname = $get_user['first_name'];
$company = $get_user['company'];
$phone = $get_user['phone_no'];
$email = $get_user['email'];

$to = "sales@cionsystems.com";

$from = "webmaster@cionsystems.com";
$product=$_GET['product'];
	$subject = $product." Demo Request";

			$message = '<html><body>	

			<table width="100%" border="0" cellspacing="3" cellpadding="2">

		  <tr>

			<td> Name :'.$fname.' </td>

		  </tr>

		 <tr>

			<td> Phone :'.$phone.' </td>

		  </tr>

		  <tr>

			<td> Email Address :'.$email.' </td>

		  </tr>

		  <tr>

			<td> Company name :'.$company.' </td>

		  </tr>

		 

		</table>

		</body>

		</html>';

		$headers  = 'MIME-Version: 1.0' . "\r\n";

		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

		$headers .= "From: $from". "\r\n";

		

		if(@mail($to, $subject, $message, $headers))

			{

				//echo $message;

				echo $msg;

				//exit(0);

			}


}


$pro_name = "<title>Schedule a Demo | CionSystems</title>";

$smarty->assign("pname",$product);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("schedule_thankyou.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");

require_once("newsletter.php");

?>

