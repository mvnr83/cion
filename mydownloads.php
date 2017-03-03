<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/login_check.php");


//get all orders
$qry = "SELECT oi.*,o.payment_date FROM orders_info oi 
         INNER JOIN orders o ON o.order_id = oi.order_id 
         
         WHERE o.user_id = '".$_SESSION['id']."' AND o.transaction_pending = 'Completed' ORDER BY o.order_id DESC";
//echo $qry
$sql = mysql_query($qry);
$downloads =array();
while($res = mysql_fetch_assoc($sql)){
    
    $aqry = "SELECT * FROM subscription_plans p INNER JOIN product_details pd ON pd.id = p.product_id WHERE p.sub_id = '".$res['sub_id']."' ORDER BY p.addon_id ASC";
    $asql = mysql_query($aqry);
    while($ares = mysql_fetch_assoc($asql)){
        $res['subplans'] = $ares;
        if($ares['addon_id'] != 0){
            $bqry = "SELECT * FROM subscription_addon p  WHERE p.addon_id = '".$ares['addon_id']."'";
            $bsql = mysql_query($bqry);
            while($bres = mysql_fetch_assoc($bsql)){
                $res['addons'] = $bres;
            }
        }
    }
    
    
    $downloads[] = $res;
}

$parray = array();
for($i=0; $i <count($downloads); $i++){
    $parray[$i]['order_id'] = $downloads[$i]['order_id'];
    $parray[$i]['link_string'] = $downloads[$i]['link_string'];
    $parray[$i]['product_name'] = ($downloads[$i]['addons'])?$downloads[$i]['addons']['addon_name']:$downloads[$i]['subplans']['product_name'];
    $parray[$i]['plan_name'] = $downloads[$i]['subplans']['plan_name'];
    $parray[$i]['order_date'] = $downloads[$i]['payment_date'];
    $parray[$i]['expiry_date'] = $downloads[$i]['download_expiry_date'];
    $parray[$i]['is_expired'] = 'no';
    $dateDiff = time() - strtotime($downloads[$i]['download_expiry_date']);
    $dateDiff = $dateDiff/(60*60*24);
    if($dateDiff > 1){
        $parray[$i]['is_expired'] = 'yes';
    }
    
    
}
//echo "<pre>";
//print_r($downloads);
//echo "</pre>";
//exit();
//$smarty->assign("name",$name);
$smarty->assign("parray",$parray);
$smarty->assign("session_username",$_SESSION['username']);
//$smarty->assign("array",$array);
$content=$smarty->fetch("mydownloads.tpl");
$smarty->assign("content",$content);
$smarty->display("empty.tpl");
?>