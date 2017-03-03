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

require_once("admin/includes/db_connect.php");

$smarty->assign("SITEURL",'http://localhost/cionsystems/trunk/');
$smarty->assign("year",date('Y'));

$smarty->assign("session_lname",$_SESSION['lname']);

$smarty->assign('cartnumber',count($_SESSION['cart_info']));


//get information of the product plans
$scriptFName = basename($_SERVER['SCRIPT_FILENAME']);

$sql = mysql_query("SELECT * FROM product_details where html_file_name = '".$scriptFName."' AND status = 'Active' ORDER BY id DESC LIMIT 1") or die('error');
if(mysql_num_rows($sql) > 0){
    while($res = mysql_fetch_assoc($sql)){
        if(!file_exists('product_images/'.$res['product_image'])){
            $res['product_image'] = 'images/newproducts/productsheader1.jpg';
        }else{
            $res['product_image'] = 'product_images/'.$res['product_image'];
        }
        $products[$res['id']] = $res;
        $products[$res['id']]['sub_plans'] = array();
        $products[$res['id']]['plans'] = array();
        $pSql = mysql_query("SELECT * FROM subscription_plans  WHERE product_id = '".$res['id']."' AND status = 1 AND addon_id = 0 ORDER BY sub_id ASC");

        while($presaa = @mysql_fetch_assoc($pSql)){

            $products[$res['id']]['plans'][] = $presaa;
        }
        $pSql1 = mysql_query("SELECT * FROM subscription_addon  WHERE product_id = '".$res['id']." AND status = 1 ORDER BY addon_order ASC'");

        while($presq = mysql_fetch_assoc($pSql1)){
            //$products[$res['id']]['addons'][] = $pres;
            $pSqla = mysql_query("SELECT * FROM subscription_plans  WHERE product_id = '".$res['id']."' AND addon_id = '".$presq['addon_id']."' AND status = 1 ORDER BY sub_id ASC");

            while($presa = mysql_fetch_assoc($pSqla)){
                $presq['sub_plans'][] = $presa;
            }
            $products[$res['id']]['addons'][] = $presq;
        }
    }
   
    
    $smarty->assign("products",$products);
    $smarty->assign("product_info",reset($products));
    
}

?>

