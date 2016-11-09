<?php
include("includes/application_start.php");
include("includes/checksession.php");

if(isset($_POST['mail'])){
$check_val = $_POST['checkbox'];
$poid = $_POST['id'];
$mails = $_POST['mailid'];
$sample = array();

foreach($_POST['checkbox'] as $i)
	{
	$mailids = $poid[$i];
	array_push($sample,$mailids);
		}
	$smarty->assign("mailids",$sample);
}

if(isset($_POST['send']) && $_POST['send']=="Send")
{
	foreach($_POST['id'] as $i){
		//echo $_POST['mailid'][$i]."<br>";
		$id = $_POST['id'][$i];
		$to = $_POST['mailid'][$i];
		//$to = "patideepchand@gmail.com";
			$from = "sales@cionsystems.com";
	$subject = $_POST['subject'];
	$message = '<html><body>	
			<table width="100%" border="0" cellspacing="3" cellpadding="2">
		  <tr>
			<td>'.$_POST['message'].' </td>
		  </tr>
		</table>
		</body>
		</html>';
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= "From: $from". "\r\n";
				if(@mail($to, $subject, $message, $headers))
			{
				
		$msg = "<span style='color:#ff0000;font-weight:bold;'>Mail Sent Successfully</span>";
		$smarty->assign("msg",$msg);

$status = "Sent";
$sql_up = "update demo set mailsent = '".$status."' where email = '".$_POST['mailid'][$i]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0){
		$msg = "Mail Sent Successfully";
		$smarty->assign("msg",$msg);
	}
		
		}
	}


		

	}



$smarty->assign("array",$array);
$smarty->assign("msg",$msg);

$content=$smarty->fetch("multimail.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>