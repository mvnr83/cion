<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['sub_id'];
$product_id = $_GET['product_id'];


if($_POST[act] == 'edit')
{

	$sql_up = "update subscription_plans set plan_name = '".$_POST['plan_name']."',price = '".$_POST['price']."',plan_type = '".$_POST['plan_type']."',price_type='".$_POST['price_type']."', status = '".$_POST[status]."'";
	$sql_up .= " where sub_id = '".$uid."'";
	$res_up = @mysql_query($sql_up) or die(mysql_error());
	
	if($res_up)
		$msg = "Subscription plan Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select p.*,pd.id,pd.product_name from subscription_plans p, product_details pd where p.product_id = pd.id AND p.sub_id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel) or die(mysql_error());
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}

$smarty->assign("msg",$msg);
$smarty->assign("sub_id",$sub_id);
$smarty->assign("product_id",$product_id);
$smarty->assign("array",$array);
$smarty->assign('product_name',$array[0]['product_name']);
$content=$smarty->fetch("edit_subscription_plan.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>