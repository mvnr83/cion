<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	
	$sql_chk = "select id from forums where title = '".$_POST[bname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Forum already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$sql_ins = "insert into forums(user_id,title,description,posted_date,status)values('".$session[2]."','".$_POST[bname]."',
					'".$_POST[textarea1]."',now(),'".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			header("Location: viewforums.php");
			exit();
		}
	}
}



$content=$smarty->fetch("addforum.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>