<?php

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

//include("includes/login_check.php");


if($_SESSION['username'] != '')

{

	header("Location:place-order.php");

	exit(0);

} else { //redirect to login page
    $_SESSION['redirect_from'] = 'shoppingcart';
    header("Location:login.php");

	exit(0);
}




$cartAry = array();

if(isset($_SESSION['cart_info']))
    $cartAry = $_SESSION['cart_info'];
$cartAry[$_REQUEST['pid']] = $_REQUEST['addonid'];

$_SESSION['cart_info'] = $cartAry;

echo count($_SESSION['cart_info']);
?>