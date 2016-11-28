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
		$sql_ins = "insert into subscription_plans (product_id,plan_name,price,plan_type,price_type,status) "
                        . "values ('".$product_id."','".$_POST['plan_name']."','".$_POST['price']."','".$_POST['plan_type']."','".$_POST['price_type']."','".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Product subscription plan added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: subscription_plans.php?product_id=".$product_id);
			exit();
		}
	
}



$content=$smarty->fetch("add_subscription_plan.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>