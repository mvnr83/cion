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
$pro_name = "<title>Active Directory Change Notifier | CionSystems</title>

<meta name='keywords' content='Active Directory Change Notifier, CionSystems, Windows, IT management, ROI, Active Directory, system management, optimization, reporting applications, IT Governance'>

<meta name='description' content='With the Active Directory Change Notifier, users can actively monitor any Active Directory objects and get notified immediately when changes occurs. This application is invaluable to developing a proactive approach to managing your network.'>
";
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_adcn.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>