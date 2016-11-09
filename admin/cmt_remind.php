<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update cmt_register set remind = '".$_POST[rem]."' where id = '".$uid."' ";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from cmt_register where id = '".$uid."'";
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

$content=$smarty->fetch("cmt_remind.tpl");
$smarty->assign("content",$content);
$smarty->display("cmt_remind.tpl");
?>