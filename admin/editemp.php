<?php
include("includes/application_start.php");
include("includes/checksession.php");
$eid = $_GET['eid'];

if($_POST[act] == 'edit')
{
	if($_POST[status] == 'Active')
	{
		$sql_ord = "select * from partners_emps where emp_id = '".$eid."'";
		$res_ord = @mysql_query($sql_ord);
		$row_emps = @mysql_fetch_assoc($res_ord);
		
		
		$subject = "Account Activated for CionSystems’ Partner Portal!";
	$message='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
            
                
                <tr>
                  <td height="25" colspan="2" align="left" valign="middle">Welcome to CionSystems\' Partner Portal. Your account is now active. Follow <a href="http://www.cionsystems.com/partnerportal" target="_blank">www.cionsystems.com/partnerportal</a> to access your partner portal</td>
                </tr>
				<tr>
				<td colspan="2"><strong>Username :</strong> '.$row_emps[username].'</td>
				
				</tr>
				<tr>
				<td colspan="2"><strong>Password :</
				strong> '.$row_emps[password].'</td>
				</tr>                 
            </table>
</body>
</html>';
	
		$name = $row_emps[first_name].$row_emps[last_name];	
		$from = "webmaster@cionsystems.com";
		$to = $row_emps[email];
		
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		
		// Additional headers
		$headers .= 'To:'.$name.' <'.$to.'>'."\r\n";
		$headers .= 'From: '.$from. "\r\n";
		//$headers .= 'Bcc: patideepchand@gmail.com'."\r\n";
		if(@mail($to,$subject,$message,$headers)){
		//if(@mysql_affected_rows()>0){
			//echo $message;
			$msg = "Mail has been Sent";
		}
	}//$_POST[status]
	$sql_up = "update partners_emps set status = '".$_POST[status]."' where emp_id = '".$eid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Status Details Updated Successfully";
}//$_POST[act]

if($eid != '')
{
	$sql_sel = "select * from partners_emps where emp_id = '".$eid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$comp = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_sel = "select * from partner_info where id='".$row_sel[partner_id]."'";
$res_sel = @mysql_query($sql_sel);
$row_com = @mysql_fetch_assoc($res_sel);
array_push($comp,$row_com);
	
	}

}

$smarty->assign("array",$array);
$smarty->assign("company",$comp);
$smarty->assign("msg",$msg);
//$smarty->assign("name",$name);
$content=$smarty->fetch("partnerportal/editemp.tpl");

$smarty->assign("content",$content);

$smarty->display("partnerportal/index.tpl");

?>