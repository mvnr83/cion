<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
	array_push($arr_products,$fetch_products);
$smarty->assign("arr_products",$arr_products);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("buynow.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>