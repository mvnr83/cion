<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from user_priviliges where privilege_name = '".$_POST[pname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Privilege already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$sql_ins = "insert into user_privileges(privilege_name,related_to,status)values('".$_POST[pname]."','".$_POST[rel]."','".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Menu added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewmenus.php");
			exit();
		}
	}
}



$content=$smarty->fetch("addmenu.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>