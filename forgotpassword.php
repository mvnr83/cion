<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

$emailid = $_POST['emailid'];

if($_POST['emailid'] != '')
{
$_SESSION['email'] = $_POST['emailid'];
	$sql = "select user_name,id,first_name,last_name,email,password from users where email = '".$_POST['emailid']."' and status='Active'";
	$res = @mysql_query($sql);
	$row = @mysql_fetch_assoc($res);
	if(@mysql_num_rows($res)>0)
	{
	
		if(isset($_POST['sendmail']) && $_POST['sendmail']=="forgot")
		{
			$subject = "Cionsystems Forgot Password Notification";
			$message = '<html><body>			
			<table width="100%" border="0" cellspacing="3" cellpadding="2">
                        <tr><td >Your login details are</td></tr>
			<tr>
    		<td>UserName: '.$row[user_name].'</td>
  			</tr>
  			<tr>
    		<td>Password: '.$row[password].'</td>
  			</tr>
			</table>
			</body>
			</html>';
			$from = "webmaster@cionsystems.com";
			$to = $_POST['emailid'];
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			
			 //Additional headers
			$headers .= 'To: '.$to."\r\n";
			$headers .= 'From: '.$from. "\r\n";
			if(mail($to,$subject,$message,$headers))
				//if(@mysql_num_rows($result)>0)
				{
					//echo $message;
					header("Location: forgot_email.php");
					exit(0);
				}
		}
	}
	else
	{
		$msg = "Invalid Email Address";
		$smarty->assign("msg",$msg);
	}
}


$content=$smarty->fetch("forgotpassword.tpl");
$smarty->assign("session_email",$_SESSION['email']);
$smarty->assign("msg",$msg);
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>