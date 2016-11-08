<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

//include("includes/login_check.php");

$sql_awards = "select * from awards where status='Active'";
$res_awards = mysql_query($sql_awards) or die(mysql_error());
$arr_awards = array();
while($fetch_awards=mysql_fetch_assoc($res_awards))
	array_push($arr_awards,$fetch_awards);

$sql_resources = "select * from resources where status='Active'";
$res_resources = mysql_query($sql_resources) or die(mysql_error());
$arr_resources = array();
while($fetch_resources=mysql_fetch_assoc($res_resources))
	array_push($arr_resources,$fetch_resources);
$sql_partners = "select * from partners where status='Active'";
$res_partners = mysql_query($sql_partners) or die(mysql_error());
$arr_partners = array();
while($fetch_partners=mysql_fetch_assoc($res_partners))
	array_push($arr_partners,$fetch_partners);
$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
	array_push($arr_products,$fetch_products);
/*echo "<pre>";
print_r($arr_products);*/

if($_POST['uname'] != '')
{
	$sql_chk = "select * from users where user_name = '".$_POST[uname]."'and password = '".$_POST[pwd]."'";
	$res_chk = @mysql_query($sql_chk);
	
	if(@mysql_num_rows($res_chk)>0)
	{
		$row_chk = @mysql_fetch_assoc($res_chk);
		$_SESSION[username] = $row_chk[user_name];
		$_SESSION[id] = $row_chk[id];
		header("Location: myaccount.php");
		exit();
	}
	else
	{
		$msg = "Invalid User Name/Password";
		$smarty->assign("msg",$msg);
	}
}
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("arr_products",$arr_products);
$smarty->assign("arr_company",$arr_partners);
$smarty->assign("arr_resources",$arr_resources);
$smarty->assign("arr_awards",$arr_awards);
//$content=$smarty->fetch("index_main.tpl");
//$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>