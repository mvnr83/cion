<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update keywords set metatitle = '".mysql_escape_string($_POST[metatitle])."',metadesc= '".mysql_escape_string($_POST[metadesc])."',metakeywords= '".mysql_escape_string($_POST[metakeywords])."' where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Page Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from keywords where id = '".$uid."'";
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

$content=$smarty->fetch("editmetatags.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>