<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from whitepaper where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("array",$array);

$content=$smarty->fetch("whitepaperdetails.tpl");

$smarty->assign("content",$content);

$smarty->display("whitepaperdetails.tpl");

?>