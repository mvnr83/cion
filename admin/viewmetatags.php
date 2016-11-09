<?php
include("includes/application_start.php");
include("includes/checksession.php");

$sql_sel = "select * from keywords";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("viewmetatags.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>