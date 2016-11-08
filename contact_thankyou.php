<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");
if($_SESSION['product_name'] != '')
$pro = $_SESSION['product_name'];
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$smarty->assign("pro_name",$pro);
$content=$smarty->fetch("c_thankyou.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>