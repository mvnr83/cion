<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['demoid'];
if($uid != '')
{
	$sql_sel = "select * from demo where demo_id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();

	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}


}
if(isset($_POST['send']) && $_POST['send']=="Send")
{
	$to = $_POST['mailaddress'];
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
$sql_up = "update demo set mailsent = '".$status."' where demo_id = '".$_GET['demoid']."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0){
		$msg = "Mail Sent Successfully";
		$smarty->assign("msg",$msg);
	}
		
			}
	}

$smarty->assign("array",$array);
$smarty->assign("msg",$msg);
$content=$smarty->fetch("sentamail.tpl");

$smarty->assign("content",$content);

$smarty->display("sentamail.tpl");

?>