<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update admin_users set user_name = '".$_POST[uname]."',password = '".$_POST[pwd]."',first_name = '".$_POST[fname]."',last_name = '".
				$_POST[lname]."',email = '".$_POST[email]."',user_type = '".$_POST[utype]."' where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "User Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from admin_users where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);

$content=$smarty->fetch("edituser.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>