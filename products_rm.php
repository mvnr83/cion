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
$pro_name = "<title>Remote Manager | CionSystems</title>

<meta name='keywords' content='Remote Manager, CionSystems, Windows, IT management, ROI, system management, optimization, remote access, green computing'>

<meta name='description' content='Remote Manager enables users to remotely perform daily tasks. It allows administrators to remotely restore the system to a previous state, force-create a restore point snapshot, and/or schedule restore-point creation on the network systems.'>
";
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_rm.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>