<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$pro_name = "<title>Identity and Access Management | CionSystems</title>

<meta name='keywords' content='Active Directory Manager, AD Reporter, Remote Manager, Active Directory Change Notifier, System Information & Comparison, CionSystems, Windows, IT management, ROI, optimization, remote access, green computing'>

<meta name='description' content='CionSystems and our partners share the belief that our business relationship is a key success factor where customers are the definitive beneficiaries. Together we deliver comprehensive solutions that address complex IT business challenges.'>


";
$smarty->assign("productname",$pro_name);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("identity_management.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>