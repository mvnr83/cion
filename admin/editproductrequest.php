<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	if($_POST[status] == 'Completed')
	{
		$sql_prd = "select * from product_register where id = '".$uid."'";
		$res_prd = @mysql_query($sql_prd);
		$row_prd = @mysql_fetch_assoc($res_prd);
		$sql_prds = "select * from product_details where id = '".$row_prd[product_id]."'";
		$res_prds = @mysql_query($sql_prds);
		$row_prds = @mysql_fetch_assoc($res_prds);
		$sql_email = "select email,first_name,last_name from users where id = '".$row_prd[user_id]."'";
		$res_email = @mysql_query($sql_email)or die(mysql_error());
		$row_email = @mysql_fetch_assoc($res_email);
		$org_code = md5($row_email[first_name]."-".$row_email[last_name]."-original");
		$subject = "Download link for CionSystems".$row_prds[product_name]." !";
		$message = '<html><body>	
		<table width="100%" border="0" cellspacing="3" cellpadding="2">
	  <tr>
		<td>Dear '.$row_email[first_name].'&nbsp;'.$row_email[last_name].'</td>
	  </tr>
	  <tr>
		<td> Thank you for downloading and registering for CionSystems'.$row_prds[product_name].' .</td>
	  </tr>
		<tr>
			<td>We appreciate your interest in our '.$row_prds[product_name].' tools.</td>
		</tr>
		<tr>
			<td> This is a 30-day free trial and contains all features and functionality of CionSystems'.$row_prds[product_name].'  product.</td>
		</tr>
		<tr>
			<td> Please review the requirements and our Quick Start guide, before installing the application:<br />
				 <a href="http://www.cionsystems.com/reporter/ADR_Quick_Start_v1.pdf">http://www.cionsystems.com/reporter/ADR_Quick_Start_v1.pdf</a></td>
		</tr>
		<tr>
			<td>To download the application, please click on the following link:<br />
			  http://www.cionsystems.com/download.php?code='.$org_code.'&product_code='.$row_prds[product_code].'&or=o</td>
		</tr>
		<tr>
			<td>For additional support, please send email to: support@cionsystems.com<br />
			 For pricing of Active Directory Reporter or information about other CionSystems products, please send email to: info@cionsystems.com<br />
			 Request a Feature for Future Releases of Active Directory Reporter:<br />
			If you would like to request additional features for future releases of Active Directory Reporter, we’d like to hear from you.</td>
	</tr>
	<tr>
		<td> Please send Feature Requests to: support@cionsystems.com.<br />
			 Please include a one line title of the requested feature and a brief description.</td>
	  </tr>
	</table>
	
	</body>
	</html>';
	
		$from = "webmaster@cionsystems.com";
		$to = $row_email[email];
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		
		// Additional headers
		$headers .= 'To: webmaster<'.$to.'>'."\r\n";
		$headers .= 'From: '.$from. "\r\n";
		@mail($to,$subject,$message,$headers);
	}//$_POST[status]
	$sql_up = "update product_register set no_of_users = '".$_POST[nusers]."',no_of_servers = '".$_POST[nservers]."',no_of_workstations = '".$_POST[nworkstations]."',
				status = '".$_POST[status]."' where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Order Details Updated Successfully";
}//$_POST[act]
if($uid!='')
{
	$sql_sel = "select * from product_register where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_prd = "select product_name from product_details where id = '".$row_sel[product_id]."'";
		$res_prd = @mysql_query($sql_prd);
		$row_prd = @mysql_fetch_assoc($res_prd);
		//array_push($pname,$row_prd[product_name]);
		$sql_name = "select user_name from users where id = '".$row_sel[user_id]."'";
		$res_name = @mysql_query($sql_name);
		$row_name = @mysql_fetch_assoc($res_name);
		//array_push($name,$row_name[user_name]);
		$smarty->assign("name",$row_name[user_name]);
		$smarty->assign("pname",$row_prd[product_name]);
	}
}
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);

$content=$smarty->fetch("editproductrequest.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>