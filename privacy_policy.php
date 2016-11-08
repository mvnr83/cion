<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("privacy_policy.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>