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
$pro_name = "<title>Active Directory Management | CionSystems</title>

<meta name='keywords' content='Active Directory Management, User Lifecycle Management, Group Policy Tools, GPO tools, temporary users, temporary group management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, mobility, Exchange'>

<meta name='description' content='Active Directory Manager is a comprehensive web-based application that simplifies User provisioning and AD administration. The solution features a Dashboard UI from which IT managers can view and manage the full user lifecycle, along with automating tasks and generate reports on Active Directory environment.'>
";
//$title = 'display';
//$smarty->assign("title_dispaly",$title);
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("news_events.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>