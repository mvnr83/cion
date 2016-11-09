<?php
include("includes/application_start.php");
if($_SESSION['uname'] != '')
	{
		header("Location: login.php");
		exit();
	}
if($_POST[uname]!='')
{
	$sql = "select user_name,user_type,id from admin_users where user_name = '".$_POST[uname]."' and password = '".$_POST[pwd]."' and status='Active'";
	$res = @mysql_query($sql);
	$row = @mysql_fetch_assoc($res);
	if(@mysql_num_rows($res) >0)
	{
		$_SESSION['uname'] = $_POST['uname'];
		$_SESSION['utype'] = $row['user_type'];
		$_SESSION['uid'] = $row['id'];
		header("Location: login.php");	
		exit();
	}
	else
	{
		$msg = "Invalid User Name";
		$smarty->assign("array",$msg);
	}
}



$content=$smarty->fetch("login.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>