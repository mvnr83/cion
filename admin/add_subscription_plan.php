<?php
include("includes/application_start.php");
include("includes/checksession.php");

$product_id = $_REQUEST['product_id'];
if(empty($product_id)){
    header("Location: index.php");
    exit();
}

$smarty->assign('product_id',$product_id);

$sql = mysql_query("SELECT product_name FROM product_details where id = '".$product_id."'");
while($p_sel = @mysql_fetch_assoc($sql))
{
	$smarty->assign('product_name',$p_sel['product_name']);
}

if($_POST[act] =='add')
{
    $sql_ins = "insert into subscription_plans (product_id,addon_id,plan_name,download_link,price,plan_type,price_type,is_addon,status) "
            . "values ('".$product_id."','".$_POST['addon_id']."','".$_POST['plan_name']."','".$_POST['download_link']."','".$_POST['price']."','".$_POST['plan_type']."','".$_POST['price_type']."','".$_POST[is_addon]."','".$_POST[status]."')";
    $res_ins = @mysql_query($sql_ins);
    if(@mysql_affected_rows()>0)
    {
            $msg = "New Product subscription plan added Successfully";
            $smarty->assign("msg",$msg);
            header("Location: subscription_plans.php?product_id=".$product_id);
            exit();
    }
    
    
	
}


//addon names
    $sql = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$product_id."'");
    $addons = array();
    while($res = mysql_fetch_assoc($sql)){
        array_push($addons,$res);
    }
$smarty->assign("addons",$addons);
$smarty->assign('addonsCnt',count($addons));
$content=$smarty->fetch("add_subscription_plan.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>