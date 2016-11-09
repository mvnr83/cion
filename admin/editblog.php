<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
$smarty->assign("uid",$uid);
if($_POST[act] =='edit')
{
	
	$sql_ins = "update blogs set blog_title = '".$_POST[bname]."',blog_description = '".$_POST[textarea1]."',status = '".$_POST[status]."' where
				id = '".$uid."'";
	$res_ins = @mysql_query($sql_ins);
	if(@mysql_affected_rows()>0)
	{
		$msg = "Blog Updated Successfully";
		$smarty->assign("msg",$msg);
		
	}
}

if($uid!='')
{
	$sql_sel = "select * from blogs where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
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
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);

$content=$smarty->fetch("editblog.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>