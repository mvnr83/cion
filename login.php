<?php

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

//include("includes/login_check.php");



if($_SESSION['username']!='')

{

	header("Location:index.php");

	exit(0);

}

else

{

if($_POST['uname'] != '')

{ 

	$sql = "select user_name,id,first_name,last_name,email from users where user_name = '".$_POST[uname]."' and password = '".$_POST[pwd]."' and status='Active'";

	$res = @mysql_query($sql);

	$row = @mysql_fetch_assoc($res);

	if(@mysql_num_rows($res)>0)

	{  

		$in = "UPDATE users SET last_login = now() WHERE id = {$row[id]}";

		$result = @mysql_query($in);	

		$_SESSION['username'] = $row[user_name];
                $_SESSION['lname'] = $row['first_name'];

		$_SESSION['id'] = $row[id];

		if($_SESSION['type']!="")

		{	

		header("Location: buynow.php");

		exit(0);

		}

		if($_SESSION['pcode']!="")

		{	

		header("Location:".$_SESSION['fullurl']);

		exit(0);

		}

		if(isset($_POST['keyword']) && $_POST['keyword']=="trial")

		{

			

			$key = uniqid(md5(rand()));

			$registerid = mysql_query("INSERT INTO downloadkey (uniqueid) VALUES(\"$key\")") or die(mysql_error());

			$res_product = mysql_query("select * from product_details where id=".$_POST['product_id']) or die(mysql_error());

			$fetch = mysql_fetch_assoc($res_product);

			$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$_POST['product_id']));

			

			$product=str_replace(' ','+',$get_product['product_name']);

			$subject = "Download link for CionSystems ".$fetch[product_name]."";

			$message = '<html>

						<head>

				</head>



<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #006699;">

  <tr>

    <td  bgcolor="#f5f5f5"><img src="http://www.cionsystems.com/images/clogo.gif" width="51" height="53" style="float:left" />

	<div style="color:#545454;font:normal 24px Arial, Helvetica, sans-serif;float:left;padding:15px 0px 0px 10px;">Cion<span style="color:#0a659a">Systems</span></div><sup style="font:normal 8px Arial, Helvetica, sans-serif;vertical-align:top;float:left;padding-top:15px;">TM</sup></td>

  </tr>

  <tr>

    <td height="27" style="padding:10px;">Dear '.$row[first_name].'&nbsp;'.$row[last_name].'</td>

  </tr>

  <tr>';

    if($fetch[product_code]=="tfa")

  {

  $message.='<td height="86" style="padding:10px;"><p>Thank you for registering and downloading the CionSystems '.$fetch[product_name].'.Please download by clicking on the below screen.

 </p><br /><br /><p> A sales representative will be contacting you shortly to discuss the challenges facing you and your organization and how we can help. In the meantime,';

   $message.='please feel free to install, configure and use this evaluation version to gain more knowledge about the benefits and features.</p></td>

  </tr>';

 

  }

  else{

    $message.='<td height="86" style="padding:10px;"><p>Thank you for registering and downloading the CionSystems '.$fetch[product_name].'. A sales representative will be contacting you shortly to discuss the challenges facing you and your organization and how we can help. In the meantime,'; 

if($fetch[product_code]=="sic"){$message.='please feel free to download this evaluation version to gain more knowledge about the benefits and features of our management solutions.</p></td>

  </tr>';}

    else{ $message.='please feel free to download this evaluation version to gain more knowledge about the benefits and features of our Active Directory management solutions.</p></td>

  </tr>';

  }}

			if($fetch[product_code] == "adm"){

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADM_Installation_Guide.pdf"><img src="http://www.cionsystems.com/images/install_guide.gif" alt="Installation Guide" border="0" /></a></td>

			</tr>';

			}

			else if($fetch[product_code] == "adr")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADR_Quick_Start_v1.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

			

			<tr>

				<td style="padding:10px;">See the video for installation process :<br />

				<a href="http://www.cionsystems.com/production/adreporter/adreporter.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>

			</tr>

			

			';

			}

			else if($fetch[product_code] == "cim")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/CMT_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

	

			';

			}

			else if($fetch[product_code] == "bpos")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/Enterprise_Self_Service_QSG.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

	

			';

			}

			else if($fetch[product_code] == "adcn")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADCN_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

			

			<tr>

				<td style="padding:10px;">See the video for installation process :<br />

				<a href="http://www.cionsystems.com/production/adcn/adcn.htm"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>

			</tr>';

			

			}

			else if($fetch[product_code] == "ads")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADS_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

			

			<tr>

				<td style="padding:10px;">See the video for installation process :<br />

				<a href="http://www.cionsystems.com/production/adself/adselfservice.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>

			</tr>

			

			

			';

			}

			else if($fetch[product_code] == "admpro")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADManagerPro_QuickStartGuide.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

			

			<tr>

				<td style="padding:10px;">See the video for installation process :<br />

				<a href="http://www.cionsystems.com/production/admpro/admpro.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>

			</tr>

			';

			}

				

			else if($fetch[product_code] == "adrcy")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/ADRecoveryQuickStartGuide.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

			<tr>

				<td style="padding:10px;">See the video for installation process :<br />

				<a href="http://www.cionsystems.com/production/adrecovery/adrecovery.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>

			</tr>';



			}

            else if($fetch[product_code] == "tfa")

			{

			$message .=		

			'<tr>

				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the application:<br />

				<a href="http://www.cionsystems.com/trial/Cloud_identity_Minder_Quick_Start_v3.0.0.4.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>

			</tr>

	

			';

			}





		$message .=	

			'

  <tr>

    <td height="42" style="padding:10px;">To download the application, please click on the following link:</td>

  </tr>

  <tr>

    <td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/downloadpage.php?id='.$key.'&pcode='.$product.'&user='.$row[id].'"><img src="http://www.cionsystems.com/images/trial_download.gif" alt="Download Free Trial" border="0" /></a></td>

  </tr>

  <tr>

    <td style="padding:10px;"><p>This is a 30-day free trial version and contains all features and functionality of the full product.</p>

    <p>For additional support, please send an email to: support@cionsystems.com

For pricing of or information about other CionSystems products, please send emails to: sales@cionsystems.com



If you would like to speak with someone immediately, contact our Sales Team at 425-605-5325.</p>

    <p>Thank you again for taking the time to register on our        site.</p>

    <p>Sincerely,<br />

    The CionSystems Team</p></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

  </tr>

</table>

</body>

</html>';

			$from = "webmaster@cionsystems.com";

			$to = $row['email'];

			$headers  = 'MIME-Version: 1.0' . "\r\n";

			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

			// Additional headers

			$headers .= 'To: '.$row['first_name'].' '.$row['last_name'].'<'.$to.'>'."\r\n";

			$headers .= 'From: '.$from. "\r\n";

			$headers .= 'Bcc: sales@cionsystems.com'."\r\n";

			$sendmail = @mail($to,$subject,$message,$headers);

//Logging

//error_log($message, 3,"/logs/error.log");

error_log( '['.date("F j, Y, g:i a e O").']'.'To:'.$to.$message."<br /> \n", 3,"/logs/error.log");

//logging end

			if($sendmail)

			//if(@mysql_num_rows($res_product)>0)

			{

				//echo $message;

				header("Location: products_thankyou.php");

				exit(0);

			}

			

		}

		elseif($_SESSION['present']!=''){

				header("Location:http://cionsystems.com/5_challenges");

				exit(0);

		}

		elseif($_SESSION['whitepaper']!=''){

				header("Location:whitepapers.php");

				exit(0);

		}

		elseif($_GET['type'] == "events")

		{

		header("Location:events/");

		exit(0);

		}

		else{

		

			header("Location:myaccount.php");

			exit(0);

		}

	}

	else

	{

		$msg = "Invalid User name/Password";

		$smarty->assign("msg",$msg);

	}

	//header("Location: products_thankyou.php");

	

	

}



}

$smarty->assign("keyword",$_POST['keyword']);

$smarty->assign("pname",$_POST['pname']);

$smarty->assign("product_id",$_REQUEST['product_id']);

$smarty->assign("download_type",$_POST['download_type']);

$smarty->assign("session_username",$_SESSION['username']);

$smarty->assign("array",$array);

$content=$smarty->fetch("login.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

?>