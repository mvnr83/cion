<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

if($_POST['act'] == 'add'){
	$sql_chk = "select id from cmt_register where emailaddress = '".$_POST[email]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "An email already exists with this name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$hourdiff = "14"; // hours diff btwn server and local time
		$date = date("l, d F, Y, H:i a",time() + ($hourdiff * 3600));
		$sql_ins = "insert into cmt_register(firstname,lastname,companyname,numberofusers,country,emailaddress,phonenumber,dates)values('".$_POST[fname]."','".$_POST[lname]."','".$_POST[companyname]."','".$_POST[numberofusers]."','".$_POST[country]."','".$_POST[email]."','".$_POST[phone]."','$date')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
		if($_GET['type'] == "events")
		{
		header("Location: login.php");
		exit();
		}
		else{
		header("Location: thankyou.php");
		exit();
		}
			
			
			
		}
	}
}

$content=$smarty->fetch("cmt_register.tpl");
$smarty->assign("content",$content);
$smarty->display("cmt.tpl");

?>