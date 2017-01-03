<?php

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

//include("includes/login_check.php");


$pid = $_REQUEST['pid'];
$add_on = $_REQUEST['addonid'];
$cartAry = array();
if(isset($_SESSION['cart_info']))
    $cartAry = $_SESSION['cart_info'];

$cartAry[] = array('pid' => $pid, 'add_on' => $add_on);
$_SESSION['cart'] = $cartAry;

echo count($_SESSION['cart']);
?>