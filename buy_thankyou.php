<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");
if($_REQUEST['pname'] != '')
$smarty->assign("pname",$_REQUEST['pname']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("thankyou_buy.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>