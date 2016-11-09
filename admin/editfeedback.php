<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET[uid];
$smarty->assign("uid",$uid);
if($_POST[act] =='edit')
{
	/*$sql_chk = "select id from resources where title = '".$_POST[title]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Resource already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{*/
	 $sql_ins = "update feedback set comments = '".$_POST[desc]."',feedback_status = '".$_POST[fstatus]."',status = '".$_POST[status]."' where id = '".$uid."'";
	 $res_ins = @mysql_query($sql_ins);
	 if(@mysql_affected_rows()>0)
	{
		$msg = "Updated Successfully";
		$smarty->assign("msg",$msg);
	}

}
$sql = "select * from feedback where id = '".$uid."'";
$res = @mysql_query($sql);
$array = array();
while($row = @mysql_fetch_assoc($res))
{
	array_push($array,$row);
}

$smarty->assign("array",$array);

$content=$smarty->fetch("editfeedback.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>