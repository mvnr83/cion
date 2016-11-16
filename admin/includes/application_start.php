<?php 
session_start();
error_reporting(E_ALL^E_NOTICE);
require('smarty/libs/Smarty.class.php');
include("db_connect.php");
// Smarty object initaiting
$smarty = new Smarty();
$smarty->template_dir = 'smarty/templates/';
$smarty->compile_dir = 'smarty/templates_c/'; 
$smarty->config_dir = 'smarty/configs/';
$smarty->cache_dir = 'smarty/cache/';

$smarty->assign("SITEURL",'http://localhost/cionsystems/trunk/admin/');

$permissions = $_SESSION['permissions'];

$smarty->assign("permissions",$permissions);
?>