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
$pro_name = "<title>System Information & Comparison | CionSystems</title>

<meta name='keywords' content='System Information & Comparison, CionSystems, Windows, IT management, ROI, system management, optimization, compliance'>

<meta name='description' content='System Information & Comparison is an easy-to-use application loaded with powerful features that aid an administrator in making Windows clients, servers and/or set of systems as stable as possible.'>
";
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_sic.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>