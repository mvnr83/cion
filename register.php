<?php



require_once("includes/application_start.php");



require_once("admin/includes/db_connect.php");











if($_POST['act'] == 'add')



{session_start();if( $_SESSION['security_code'] != $_POST['security_code'] || empty($_SESSION['security_code'] ) ) { $msg = "Please enter valid captcha";		$smarty->assign("msg",$msg);		unset($_SESSION['security_code']);   }   else   {        



	$sql_uname_chk = "select id from users where user_name = '".mysql_real_escape_string($_POST[uname])."' ";

        

        $sql_email_chk = "select id from users where email = '".mysql_real_escape_string($_POST[email])."'";



	$res_uname_chk = @mysql_query($sql_uname_chk);

        $res_email_chk = @mysql_query($sql_email_chk);

        

	if(@mysql_num_rows($res_uname_chk)>0)



	{



		$msg = 'User already exists with this user name, Please retrieve your details by clicking <a href="forgotpassword.php" style="color:blue">Forgot Credentials</a> or use a different user name';



		$smarty->assign("msg",$msg);



	} else if(@mysql_num_rows($res_uname_chk)>0)



	{



		$msg = 'Email address is associated with other user account, use a different email id or retrieve your details by clicking <a href="forgotpassword.php" style="color:blue">Forgot Credentials</a>';



		$smarty->assign("msg",$msg);



	}



	else



	{



		$hourdiff = "14"; // hours diff btwn server and local time



		$dates = date("l, d F, Y, H:i a",time() + ($hourdiff * 3600));



		$sql_ins = "insert into  users(email,first_name,last_name,user_name,password,country,company,job_title,industry,address1,address2,city,state,zipcode,phone_no,dates,join_date)values('".$_POST[email]."','".$_POST[fname]."','".$_POST[lname]."','".$_POST[uname]."','".$_POST[pwd]."','".$_POST[country]."','".$_POST[company]."','".$_POST[jtitle]."','".$_POST[industry]."','".$_POST[address1]."','".$_POST[address2]."','".$_POST[city]."','".$_POST[state]."','".$_POST[pcode]."','".$_POST[phone]."','$dates',now())";



					



		$res_ins = @mysql_query($sql_ins);



		if(@mysql_affected_rows()>0)



		{

                    

                    //send email

                    	$subject = "Your account has been created - CionSystems.com";

			$message = '<html><body>			

			<table width="100%" border="0" cellspacing="3" cellpadding="2">

                        <tr><td>Hi '.ucfirst($_POST['fname']).' '.$_POST['lname'].',</td></tr>
                            <tr><td>&nbsp;</td></tr>

			<tr><td>Your Account has been created successfully. Below are the login details</td></tr>

                        <tr><td>Your User name is : '.$_POST['uname'].'</td></tr>

                        <tr><td>Please <a href="http://cionsystems.com/login.php">Click Here</a> to login</td></tr>
                        <tr><td>&nbsp;</td></tr>
    		

                        <tr><td>Thanks,</td></tr>

                        <tr><td>Cionsystems</td></tr>
                        <tr><td>www.cionsystems.com</td></tr>

			</table>

			</body>

			</html>';

			$from = "webmaster@cionsystems.com";

			$to = $_POST['email'];

			$headers  = 'MIME-Version: 1.0' . "\r\n";

			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

			

			 //Additional headers

			$headers .= 'To: '.$to."\r\n";

			$headers .= 'From: '.$from. "\r\n";

			if(mail($to,$subject,$message,$headers))

				//if(@mysql_num_rows($result)>0)

				{
                                    if(isset($_SESSION['redirect_from']) && $_SESSION['redirect_from'] == 'shoppingcart'){
                                        header("Location: place-order.php");
                                        exit(0);
                                    }

					//echo $message;

					header("Location: register_success.php");

					exit(0);

				}

		



		if($_GET['type'] == "events")



		{



		header("Location: login.php?type=events");



		exit();



		}



		else{



		header("Location: login.php");



		exit();



		}



			



			



			



		}



	}}



}





$smarty->assign("postval",$_POST);



$content=$smarty->fetch("register.tpl");



$smarty->assign("content",$content);



$smarty->display("home.tpl");







?>