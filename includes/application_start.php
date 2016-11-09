<?php 
ob_start();
session_start();
error_reporting(E_ALL^E_NOTICE);
require('smarty/libs/Smarty.class.php');
// Smarty object initaiting
$smarty = new Smarty();
$smarty->template_dir = 'smarty/templates/';
$smarty->compile_dir = 'smarty/templates_c/'; 
$smarty->config_dir = 'smarty/configs/';
$smarty->cache_dir = 'smarty/cache/';

$smarty->assign("year",date('Y'));
?>

