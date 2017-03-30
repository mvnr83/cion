<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST['act'] == 'del')
{
	$sql_del = "delete from product_register where id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "Product Deleted Successfully";
		
}
/*if($_POST[act] == 'change')
{
	$sql_up = "update product_details set status = '".$_POST[st]."' where id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
*/$sql_sel = "select * from product_register ORDER BY id desc";
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
	array_push($pname,$row_prd[product_name]);
	$sql_name = "select user_name from users where id = '".$row_sel[user_id]."'";
	$res_name = @mysql_query($sql_name);
	$row_name = @mysql_fetch_assoc($res_name);
	array_push($name,$row_name[user_name]);
}
$smarty->assign("name",$name);
$smarty->assign("pname",$pname);
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("productrequests.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>