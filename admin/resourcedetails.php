<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from resources where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("array",$array);

$content=$smarty->fetch("resourcedetails.tpl");

$smarty->assign("content",$content);

$smarty->display("resourcedetails.tpl");

?>