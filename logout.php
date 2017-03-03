<?php
include("includes/application_start.php");
$_SESSION['username'] = '';
$_SESSION['id'] = '';
$uname = '';
$smarty->assign("session_username",$uname);
$cartInfo = $_SESSION['cart_info'];
session_destroy();
session_start();
$_SESSION['cart_info'] = $cartInfo;
header("Location: index.php");
exit();

?>