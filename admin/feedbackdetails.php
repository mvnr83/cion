<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET[uid];
if($uid != '')
{
	$sql_sel = "select * from feedback where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$arr = array();
	$product = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_pname = "select product_name from product_details where id = '".$row_sel[product_id]."'";
		$res_pname = @mysql_query($sql_pname);
		$row_pname = @mysql_fetch_assoc($res_pname);
		array_push($product,$row_pname[product_name]);
		$smarty->assign("product",$product);
		$sql_uname = "select user_name from users where id = '".$row_sel[user_id]."'";
		$res_uname = @mysql_query($sql_uname);
		$row_uname = @mysql_fetch_assoc($res_uname);
		array_push($arr,$row_uname[user_name]);
		$smarty->assign("uname",$arr);
	}
}

$smarty->assign("array",$array);

$content=$smarty->fetch("feedbackdetails.tpl");

$smarty->assign("content",$content);

$smarty->display("feedbackdetails.tpl");

?>