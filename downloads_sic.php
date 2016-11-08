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
$pro_name = "<title>Product Downloads | CionSystems</title>

<meta name='keywords' content='Active Directory Manager, AD Reporter, Remote Manager, Active Directory Change Notifier, System Information & Comparison, CionSystems, Windows, IT management, ROI, optimization, remote access, green computing'>

<meta name='description' content='We invite you to try our solutions by signing up for an evaluation of: Active Directory Manager, Active Directory Reporter, Remote Manager, Active Directory Change Notifier and System Information & Comparison.'>

";
$smarty->assign("productname",$pro_name);
$smarty->assign("array",$array);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("download_sic.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");

?>