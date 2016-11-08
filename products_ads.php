<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$sql_prds = "select * from product_details where status='Active' order by order_product asc";
$res_prds = @mysql_query($sql_prds);
$array = array();
while($row_prds = @mysql_fetch_assoc($res_prds))
{
	array_push($array,$row_prds);
}
$pro_name = "<title>Active Directory Manager | CionSystems</title>

<meta name='keywords' content='Active Directory Management, CionSystems, Windows, IT management, ROI, Active Directory, optimization, system management, IT Governance'>

<meta name='description' content='Active Directory Manager is an efficient and easy to use web-based solution designed to meet your Active Directory management requirements, without the need for specialized training. It allows you to create or modify multiple users by simplifying the complexities of the native tools.'>
";
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_ads.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>