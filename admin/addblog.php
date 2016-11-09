<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	
	$sql_chk = "select id from blogs where blog_title = '".$_POST[bname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Blog already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		$sql_ins = "insert into blogs(product_id,blog_title,blog_description,blog_author,blog_posted_date,status)values(".$_POST['product'].",'".$_POST[bname]."','".$_POST[textarea1]."',
					'".$session[2]."',now(),'".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Blog added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewblogs.php");
			exit(0);
		}
	}
}

$product_sql  = "SELECT * from product_details";
$res = mysql_query($product_sql) or die(mysql_error());
$products = array();
while($fetch=mysql_fetch_assoc($res))
{
	array_push($products,$fetch);
}

$smarty->assign("products",$products);
$content=$smarty->fetch("addblog.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>