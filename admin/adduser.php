<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from admin_users where user_name = '".$_POST[uname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A User already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$sql_ins = "insert into admin_users(user_name,password,user_type,first_name,last_name,email,created_on)values('".$_POST[uname]."','".$_POST[pwd]."','".
					$_POST[utype]."','".$_POST[fname]."','".$_POST[lname]."','".$_POST[email]."',now())";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New User Added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewuser.php");
			exit();
		}
	}
}



$content=$smarty->fetch("adduser.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>