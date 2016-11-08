<?php
require_once("includes/application_start.php");
include("includes/login_check.php");
require_once("admin/includes/db_connect.php");
$sql_products = "select id,product_name from product_details where status = 'Active'";
$res_products = @mysql_query($sql_products);
$array = array();
while($row_products = @mysql_fetch_assoc($res_products))
{
	array_push($array,$row_products);
}
$sql_de = "select first_name,last_name,email,company from users where id = '".$session[1]."'";
$res_de = @mysql_query($sql_de);
$det = array();
while($row = @mysql_fetch_assoc($res_de))
{
	array_push($det,$row);
}
if($_POST['act'] == 'add')
{
	$sql_ins = "insert into feedback(user_id,product_id,comments,posted_date)values('".$session[1]."','".$_POST[product]."','".$_POST[comment]."',now())";
	$res_ins = @mysql_query($sql_ins);
	if(@mysql_affected_rows()>0)
	{
		$msg = "Your Feedback has been taken Successfully";
		$smarty->assign("msg",$msg);
	}
}
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("det",$det);
$smarty->assign("array",$array);
$content=$smarty->fetch("feedback.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
?>