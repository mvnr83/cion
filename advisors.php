<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

$content=$smarty->fetch("advisors.tpl");
$smarty->assign("content",$content);
$smarty->display("index_temp.tpl");

?>