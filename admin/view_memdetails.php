<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from users where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$fetch = array();
	$name = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_prd = "select * from product_details ORDER BY order_product";
		//$dl_sel = "select * from user_downloads where user_id = '".$row_sel[id]."'";
	//$res_dl = @mysql_query($dl_sel);
	$res_dl = @mysql_query($sql_prd);
	while($row_dl = @mysql_fetch_assoc($res_dl))
		{
		array_push($fetch,$row_dl);
		$dl_sel = "select * from user_downloads where product_code = '".$row_dl[product_code]."' and user_id = '".$row_sel[id]."'";
		//$sql_prd = "select * from product_details where product_code = '".$row_dl[product_code]."'";
	//$res_prd = @mysql_query($sql_prd);
	$res_prd = @mysql_query($dl_sel);
	$row_prd = @mysql_fetch_assoc($res_prd);
	array_push($name,$row_prd);
		}
	}
	
	/*$dl_sel = "select * from user_downloads where user_id = '".$uid."'";
	$res_dl = @mysql_query($dl_sel);
	$fetch = array();
	while($row_dl = @mysql_fetch_assoc($res_dl))
	{
		array_push($fetch,$row_dl);
	}*/

}
/*if($uid != '')
{
	$sql_sel = "select * from user_downloads where user_id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}*/
$smarty->assign("array",$array);
$smarty->assign("fetch",$fetch);
$smarty->assign("name",$name);
$content=$smarty->fetch("view_memdetails.tpl");

$smarty->assign("content",$content);

$smarty->display("view_memdetails.tpl");

?>