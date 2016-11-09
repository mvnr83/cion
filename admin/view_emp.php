<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from partners_emps where emp_id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$comp = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_sel = "select * from partner_info where id='".$row_sel[partner_id]."'";
$res_sel = @mysql_query($sql_sel);
$row_com = @mysql_fetch_assoc($res_sel);
array_push($comp,$row_com);
		//$sql_prd = "select * from product_details ORDER BY order_product";
		//$dl_sel = "select * from user_downloads where user_id = '".$row_sel[id]."'";
	//$res_dl = @mysql_query($dl_sel);
	//$res_dl = @mysql_query($sql_prd);
	//while($row_dl = @mysql_fetch_assoc($res_dl))
		//{
		//array_push($fetch,$row_dl);
		//$dl_sel = "select * from user_downloads where product_code = '".$row_dl[product_code]."' and user_id = '".$row_sel[id]."'";
		//$sql_prd = "select * from product_details where product_code = '".$row_dl[product_code]."'";
	//$res_prd = @mysql_query($sql_prd);
	//$res_prd = @mysql_query($dl_sel);
	//$row_prd = @mysql_fetch_assoc($res_prd);
	//array_push($name,$row_prd);
		//}
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
$smarty->assign("company",$comp);
//$smarty->assign("name",$name);
$content=$smarty->fetch("partnerportal/view_pemp.tpl");

$smarty->assign("content",$content);

$smarty->display("partnerportal/view_pemp.tpl");

?>