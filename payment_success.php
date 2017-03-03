<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");


$_SESSION['cart_info'] = array();
$smarty->assign('cartnumber',count($_SESSION['cart_info']));




$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("payment_success.tpl");


$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>