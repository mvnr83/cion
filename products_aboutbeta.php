<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

$content=$smarty->fetch("products_aboutbeta.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>