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
$pro_name = "<title>Active Directory Reporter | CionSystems</title>

<meta name='keywords' content='Active Directory Reporter, CionSystems, Windows, IT management, ROI, Active Directory, system management, optimization, reporting applications, regulatory compliance'>

<meta name='description' content='The Active Directory Reporter extracts vital information about network objects quickly, and displays it in a clear, \"ready to export\" format. This application has an extensive built-in library with more than 160 customizable reports allowing you to use the product right out of the box.'>
";
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_adr.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>