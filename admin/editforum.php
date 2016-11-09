<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
$smarty->assign("uid",$uid);
if($_POST[act] =='edit')
{
	
	$sql_ins = "update forums set title = '".$_POST[bname]."',description = '".$_POST[textarea1]."',status = '".$_POST[status]."' where
				id = '".$uid."'";
	$res_ins = @mysql_query($sql_ins);
	if(@mysql_affected_rows()>0)
	{
		$msg = "Forum Updated Successfully";
		$smarty->assign("msg",$msg);
		
	}
}

if($uid!='')
{
	$sql_sel = "select * from forums where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("editforum.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>