<?php
include("includes/application_start.php");
include("includes/checksession.php");
$bid = $_REQUEST[bid];
$smarty->assign("bid",$bid);
if($_POST[act] =='add')
{
	/*$sql_chk = "select id from resources where title = '".$_POST[title]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Resource already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{*/
	$sql_ins = "insert into blog_comments(blog_id,user_id,user_type,blog_comments,posted_date,approved_by_admin)values(".$bid.",'".$session[2]."',
				'".$session[1]."','".$_POST[desc]."',now(),'not approved')";
				
	$res_ins = @mysql_query($sql_ins);
	if(@mysql_affected_rows()>0)
	{
		header("Location: blogdetails.php?bid=".$bid);
		exit();
	}

}



$content=$smarty->fetch("addcomment.tpl");

$smarty->assign("content",$content);

$smarty->display("addcomment.tpl");

?>