<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");



if($_POST['act'] == 'add')
{session_start();if( $_SESSION['security_code'] != $_POST['security_code'] || empty($_SESSION['security_code'] ) ) { $msg = "Please enter correct captcha";		$smarty->assign("msg",$msg);		unset($_SESSION['security_code']);   }   else   {        
	$sql_chk = "select id from users where user_name = '".$_POST[uname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "An User already exists with this name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$hourdiff = "14"; // hours diff btwn server and local time
		$dates = date("l, d F, Y, H:i a",time() + ($hourdiff * 3600));
		$sql_ins = "insert into  users(email,first_name,last_name,user_name,password,country,company,job_title,industry,address1,address2,city,state,zipcode,phone_no,dates,join_date)values('".$_POST[email]."','".$_POST[fname]."','".$_POST[lname]."','".$_POST[uname]."','".$_POST[pwd]."','".$_POST[country]."','".$_POST[company]."','".$_POST[jtitle]."','".$_POST[industry]."','".$_POST[address1]."','".$_POST[address2]."','".$_POST[city]."','".$_POST[state]."','".$_POST[pcode]."','".$_POST[phone]."','$dates',now())";
					
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
		if($_GET['type'] == "events")
		{
		header("Location: login.php?type=events");
		exit();
		}
		else{
		header("Location: login.php");
		exit();
		}
			
			
			
		}
	}}
}

$content=$smarty->fetch("register.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");

?>