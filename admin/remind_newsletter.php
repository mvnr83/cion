<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit'){
	$sql_up = "UPDATE newsletter SET remind = '".$_POST[rem]."' WHERE id = '".$uid."' ";
	$res_up = @mysql_query($sql_up);
	if($res_up){
		$msg = "You have updated successfully";
	}
}


if($uid != ''){
	$sql_sel = "select * from newsletter where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$fetch = array();
	$name = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_prd = "select * from product_details ORDER BY order_product";
		$res_dl = @mysql_query($sql_prd);
	}

}

$smarty->assign("array",$array);
$smarty->assign("fetch",$fetch);
$smarty->assign("name",$name);
$smarty->assign("msg",$msg);

$content=$smarty->fetch("remind_newletter.tpl");

$smarty->assign("content",$content);

$smarty->display("remind_newsletter.tpl");

?>