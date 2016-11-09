<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[opwd]!='')
{
	$sql_sel = "select password from admin_users where password = '".$_POST[opwd]."' and user_name = '".$_SESSION[uname]."'";
	$res_sel = @mysql_query($sql_sel);
	$row_sel = @mysql_fetch_assoc($res_sel);
	if($row_sel[password] == $_POST[opwd])
	{
		$sql = "update admin_users set password = '".$_POST[npwd]."'where password = '".$_POST[opwd]."' and user_name = '".$_SESSION[uname]."'";
		$res = @mysql_query($sql);
		$row = @mysql_affected_rows();
		if($row >0)
		{
			$msg = "Updated Successfully";
			$smarty->assign("array",$msg);
		}
	}
	else
	{
		$msg = "Incorrect Old Password";
		$smarty->assign("array",$msg);
	}
}



$content=$smarty->fetch("changepassword.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>