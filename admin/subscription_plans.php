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
$smarty->assign("msg",$msg);


if($_POST['act'] == 'del')
{
	$sql_del = "delete from subscription_plans where sub_id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "Subscription plan deleted successfully";
		
}
if($_POST[act] == 'change')
{
    	$sql_up = "update subscription_plans set status = '".$_POST[st]."' where sub_id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
$sql_sel = "select * from subscription_plans where product_id = '".$product_id."'";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$smarty->assign("count",count($array));
$content=$smarty->fetch("subscription_plans.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>