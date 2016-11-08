<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
session_start();
$_SESSION['pcode']="ADDiagram";
$_SESSION['fullurl'] = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
include("includes/login_check.php");

$smarty->assign("row",$array);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("downloadADDiagram.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>