<?php
include("includes/application_start.php");
include("includes/checksession.php");
$cid = $_REQUEST['cid'];
$bid = $_REQUEST['bid'];
$smarty->assign("bid",$bid);
$smarty->assign("act",$_POST['act']);
if($_POST[act] =='add')
{
	$sql_ins = "insert into blog_comments(blog_id,user_id,user_type,blog_comments,posted_date,approved_by_admin)values(".$bid.",'".$session[2]."',
				'".$session[1]."','".$_POST[desc]."',now(),'not approved')";
				
	$res_ins = @mysql_query($sql_ins);
	if(@mysql_affected_rows()>0)
	{
		header("Location: blogdetails.php?bid=".$bid);
		exit();
	}

}
if($_POST[act] == 'change')
{
	$sql_up = "update blog_comments set status = '".$_POST[st]."' where id = '".$cid."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
	{
		$msg = "Status changed Successfully";
		header("Location: blogdetails.php?bid=".$bid);
		exit();
	}	
}
if($_POST['act'] == 'delcom')
{
	$sql_del = "delete from blog_comments where id = '".$cid."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows($res_del)>0)
	{
		$msg = "Comment deleted Successfully";
		$smarty->assign("msg",$msg);
		if(@mysql_affected_rows()>0)
	{
		header("Location: blogdetails.php?bid=".$bid);
		exit();
	}

	}
}
if($bid != '')
{
	$sql_sel = "select b.*,p.product_name from blogs b LEFT JOIN product_details p ON p.id=b.product_id where b.id = '".$bid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_uname = "select user_name from admin_users where id = '".$row_sel[blog_author]."'";
		$res_uname = @mysql_query($sql_uname);
		$row_uname = @mysql_fetch_assoc($res_uname);
		$smarty->assign("uname",$row_uname[user_name]);
	}
	$sql_com = "select count(*) as cnt from blog_comments where blog_id = '".$bid."'";
	$res_com = @mysql_query($sql_com);
	$row_com = @mysql_fetch_assoc($res_com);
	$cnt = $row_com[cnt];
	$sql_cm = "select * from blog_comments where blog_id = '".$bid."'";
	$res_cm = @mysql_query($sql_cm);
	$array1 = array();
	$name = array();
	while($row_cm = @mysql_fetch_assoc($res_cm))
	{
		array_push($array1,$row_cm);
		$sql_uname1 = "select user_name from admin_users where id = '".$row_cm[user_id]."'";
		$res_uname1 = @mysql_query($sql_uname1);
		$row_uname1 = @mysql_fetch_assoc($res_uname1);
		array_push($name,$row_uname1[user_name]);
	}
}
$smarty->assign("name",$name);
$smarty->assign("cnt",$cnt);
$smarty->assign("arr",$arr);
$smarty->assign("array",$array);
$smarty->assign("array1",$array1);
$content=$smarty->fetch("blogdetails.tpl");

$smarty->assign("content",$content);

$smarty->display("blogdetails.tpl");

?>