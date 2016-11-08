<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/login_check.php");
$pid = $_REQUEST['pid'];
$sql = "select * from product_details where id = ".$pid;
$res = @mysql_query($sql);
$array = array();
while($row = @mysql_fetch_assoc($res))
{
	array_push($array,$row);
}
if($_POST['act'] == 'add')
{
	$sql = "select product_name from product_details where id = ".$pid;
	$res = @mysql_query($sql)or die(mysql_error());
	$row = @mysql_fetch_assoc($res);
	$pname = $row[product_name];
	$sql_ins = "insert into product_register(user_id,product_id,no_of_users,no_of_servers,no_of_workstations,date)values('".$_SESSION[id]."','".$pid."',
				'".$_POST[users]."','".$_POST[servers]."','".$_POST[workstations]."',now())";
	$res_ins = @mysql_query($sql_ins)or die(mysql_error());
	if($res_ins)
	{
		header("Location: buy_thankyou.php?pname=".$pname);
		exit();
	}
}
$smarty->assign("pid",$pid);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("buy.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>