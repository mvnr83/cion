<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from product_register where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array= array();
	$name = array();
	$pname = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_prd = "select product_name from product_details where id = '".$row_sel[product_id]."'";
		$res_prd = @mysql_query($sql_prd);
		$row_prd = @mysql_fetch_assoc($res_prd);
		//array_push($pname,$row_prd[product_name]);
		$sql_name = "select user_name from users where id = '".$row_sel[user_id]."'";
		$res_name = @mysql_query($sql_name);
		$row_name = @mysql_fetch_assoc($res_name);
		//array_push($name,$row_name[user_name]);
		$smarty->assign("name",$row_name[user_name]);
		$smarty->assign("pname",$row_prd[product_name]);

	}
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("productrequestdetails.tpl");

$smarty->assign("content",$content);

$smarty->display("productrequestdetails.tpl");

?>