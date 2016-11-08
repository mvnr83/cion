<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/login_check.php");
if($_POST[act] == 'edit')
{
	 $sql_up = "update users set email = '".$_POST[email]."',first_name = '".$_POST[fname]."',last_name = '".$_POST[lname]."',
				country = '".$_POST[country]."',company = '".$_POST[company]."',job_title = '".$_POST[jtitle]."',
				industry = '".$_POST[industry]."',address1 = '".$_POST[address1]."',address2 = '".$_POST[address2]."',city = '".$_POST[city]."',
				state = '".$_POST[state]."',zipcode = '".$_POST[pcode]."',phone_no = '".$_POST[phone]."' where id = '".$session[1]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
	{
		$msg = "Details Updated Successfully";
		$smarty->assign("msg",$msg);
	}
}
$sql = "select * from users where id = '".$session[1]."'";
$res = @mysql_query($sql);
$array = array();
while($row = @mysql_fetch_assoc($res))
{
	array_push($array,$row);
}
$sql_prds = "select * from product_register where user_id = '".$_SESSION[id]."'";
$res_prds = @mysql_query($sql_prds);
$parray = array();
$name = array();
while($row_prds = @mysql_fetch_assoc($res_prds))
{
	array_push($parray,$row_prds);
	$sql_prd = "select product_name from product_details where id = '".$row_prds[product_id]."'";
	$res_prd = @mysql_query($sql_prd);
	$row_prd = @mysql_fetch_assoc($res_prd);
	array_push($name,$row_prd[product_name]);
}
$smarty->assign("name",$name);
$smarty->assign("parray",$parray);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("myaccount.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>