<?php 

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

$fname = $_POST['first_name'];

$company = $_POST['company'];

$phone = $_POST['phone'];

$email = $_POST['email'];

$product = $_GET['product'];

$proname = $_POST['proname'];

$country =  $_POST['country'];





$to = "sales@cionsystems.com";

$from = "webmaster@cionsystems.com";



if(isset($_POST['keyword']) && $_POST['keyword']=="send")

{ 

		 $sql = "insert into demo (product,name,phone,email,company,country) values ('".$_POST['proname']."','".$_POST['first_name']."','".$_POST['phone']."','".addslashes(mysql_real_escape_string($_POST['email']))."','".$_POST['company']."','$country')";

$rs = mysql_query($sql);

if($rs) 

{

//$msg = "<div align='center' class='success'>Thank you for Registering with Us</div>";

//$msg = header('location:thankyou.php');







if($_GET['product'] == "ActiveDirectoryManager"){

$msg = '<script type="text/javascript">

	alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");

	window.location="http://173.160.159.49/activedirectorymanager/userlogin.aspx";

	</script>';

}



else if($_GET['product'] == "ActiveDirectoryRecovery"){

$msg = '<script type="text/javascript">

	alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");

	window.location="http://173.160.159.49/ADRecoverySetup/Default.aspx";

</script>';

}



else if($_GET['product'] == "ActiveDirectorySelfService"){

$msg = '<script type="text/javascript">alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");window.location="http://173.160.159.49/adselfservice/userlogin.aspx";</script>';

}



else if($_GET['product'] == "ActiveDirectoryReporter"){

$msg = '<script type="text/javascript">alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");window.location="http://173.160.159.49/activedirectoryreporter/userlogin.aspx";</script>';

}
//$smarty->assign("msg",$msg);

	$subject = $product." Demo Request";

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

		 

		</table>

		</body>

		</html>';

		$headers  = 'MIME-Version: 1.0' . "\r\n";

		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

		$headers .= "From: $from". "\r\n";

		

		if(@mail($to, $subject, $message, $headers))

			{

				if($_GET['product'] != "SystemInformationComparison" && $_GET['product']!='ActiveDirectoryChangeNotifier')
				{ 
				echo $msg;
				}else
				{
				header("Location:schedule_demo.php?product=".$_GET['product']);
				}

				//exit(0);

			}



}


	

	}	

	

$sc = "test";

if($_GET['product'] == "ActiveDirectoryManager"){

	$img = '<img src="images/test_adm.jpg" />';



}else if($_GET['product'] == "ActiveDirectoryRecovery"){

	$img = '<img src="images/test_adrecovery.jpg" />';

}else if($_GET['product'] == "ActiveDirectorySelfService"){

	$img = '<img src="images/test_adself.jpg" />';

}else if($_GET['product'] == "ActiveDirectoryReporter"){

	$img = '<img src="images/test_adreporter.jpg" />';

}else if($_GET['product'] == "ActiveDirectoryChangeNotifier"){

	$sc = "schedule";

	$img = ' <img src="images/header/ad_notifier.png" />';

}else if($_GET['product'] == "SystemInformationComparison"){

	$img = ' <img src="images/test_sic.jpg" />';

	$sc="schedule";

}



/*

*/





/*country start*/

$count = mysql_query('select * from country order by name');

while($row = mysql_fetch_array($count)){

	$arr[]=$row['iso']; 

	$arr_name[]=$row['name'];

}

/*country end*/





$pro_name = "<title>Take a TestDrive | CionSystems</title>";

$smarty->assign("productname",$pro_name);	

$smarty->assign("cntid",$arr);

$smarty->assign("cntname",$arr_name);

$smarty->assign("country",$country);

$smarty->assign("product",$product);

$smarty->assign("productimage",$img);

$smarty->assign("tit",$sc);

$smarty->assign("session_username",$_SESSION['username']);

$content=$smarty->fetch("scheduleademo.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>

