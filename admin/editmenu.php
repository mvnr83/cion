<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update user_privileges set privilege_name = '".$_POST[pname]."',related_to = '".$_POST[rel]."',status = '".$_POST[status]."' where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Menu Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from user_privileges where id = '".$uid."'";
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

$content=$smarty->fetch("editmenu.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>