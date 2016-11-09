<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST['act'] == 'del')
{
	$sql_del = "delete from forums where id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "Forum Deleted Successfully";
		
}
if($_POST[act] == 'change')
{
	$sql_up = "update forums set status = '".$_POST[st]."' where id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
$sql_sel = "select * from forums";
$res_sel = @mysql_query($sql_sel);
$array= array();
$arr = array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
	$sql_uname = "select user_name from admin_users where id = '".$row_sel[user_id]."'";
	$res_uname = @mysql_query($sql_uname);
	$row_uname = @mysql_fetch_assoc($res_uname);
	array_push($arr,$row_uname[user_name]);
	$smarty->assign("uname",$arr);
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("viewforums.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>