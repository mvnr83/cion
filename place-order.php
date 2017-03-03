<?php

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

include("includes/login_check.php");

//echo "<pre>";
//print_r($_SESSION['cart_info']);
//echo "</pre>";
if(isset($_SESSION['cart_info']) && count($_SESSION['cart_info']) > 0){
    
    foreach($_SESSION['cart_info'] as $k => $v){
        $pInfo = array();
        $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN product_details pd ON pd.id = sp.product_id  WHERE sp.sub_id = '".$k."'");
        while($res = mysql_fetch_assoc($sql)){
            $pInfo = $res;
            $total_price+= str_replace('$','',$res['price']);
        }
        $addOns = array();
        if(count($v) > 0){
            foreach($v as $key => $val){
                $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN subscription_addon sa ON sp.addon_id = sa.addon_id WHERE sp.sub_id = '".$val."'");
                while($res = mysql_fetch_assoc($sql)){
                    $addOns[] = $res;
                    $total_price+= str_replace('$','',$res['price']);
                }
            }
        }
        
        $cartInfo[] = array('pInfo' => $pInfo, 'addOns' => $addOns);
        
        
        
        
    }
}


//get latest billing information from the orders table
$orderInfo = array();
$sql = mysql_query("SELECT * FROM orders  WHERE user_id = '".$_SESSION['id']."' ORDER BY order_id DESC LIMIT 1");
while($res = mysql_fetch_assoc($sql)){
    $orderInfo = $res;
    
}

$smarty->assign('orderInfo',$orderInfo);
$smarty->assign('cart_price','$'.$total_price);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("place-order.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

//require_once("newsletter.php");


?>