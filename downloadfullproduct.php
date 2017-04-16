<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");

$download = '';
if(!isset($_GET['dlkey']) || $_GET['dlkey'] == ''){
    $download = 'fail';
} else {
    $dlStr = $_GET['dlkey'];
    $sql = mysql_query("SELECT p.download_link FROM orders_info o INNER JOIN subscription_plans p ON o.sub_id = p.sub_id WHERE o.link_string = '".mysql_real_escape_string($dlStr)."' AND download_expiry_date >= NOW()");
    if(mysql_num_rows($sql) == 0){
        $download = 'fail';
    } else {
        
        while($res = mysql_fetch_assoc($sql)){
            $download_link = $_SERVER['DOCUMENT_ROOT'].$res['download_link'];
        }
        
        $file_name = basename($download_link);

        header("Content-Type: application/zip");
        header("Content-Disposition: attachment; filename=$file_name");
        header("Content-Length: " . filesize($download_link));

        readfile($download_link);
        $smarty->assign('headermsg','Download Success');
        $smarty->assign('bodymsg','Thank you for downloading. Your download will start automatically. <br />Please contact support@cionsystems.com for further information');
    }
    
    
}

if($download == 'fail'){
    $smarty->assign('headermsg','Download Failed');
    $smarty->assign('bodymsg','You are not allowed to download the product. The link might expired or invalid. <br />Please contact support@cionsystems.com for further information');
}

$smarty->assign("productname",$pro_name);


$content=$smarty->fetch("downloadfullproduct.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");