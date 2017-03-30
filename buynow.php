<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");
 session_start();
$_SESSION['type'] = "order";
$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
array_push($arr_products,$fetch_products);

$productname = "<title>Buy it now|CionSystems</title>";

$smarty->assign("productname",$productname);
$smarty->assign("arr_products",$arr_products);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("type",$_SESSION['type']);
$content=$smarty->fetch("buynow.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>