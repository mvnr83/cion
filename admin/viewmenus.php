<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST['act'] == 'del')
{
	$sql_del = "delete from user_privileges where id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "Menu Deleted Successfully";
		
}
if($_POST[act] == 'change')
{
	$sql_up = "update user_privileges set status = '".$_POST[st]."' where id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
$sql_sel = "select * from user_privileges";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("viewmenus.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>