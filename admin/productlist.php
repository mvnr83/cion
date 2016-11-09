<?php
include("includes/application_start.php");
include("includes/checksession.php");
/*if($_POST['act'] == 'del')
{
	$sql_del = "delete from users where id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "User Deleted Successfully";
		
}
if($_POST[act] == 'change')
{
	$sql_up = "update users set status = '".$_POST[st]."' where id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
$sql_sel = "select * from users";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}*/

if($_GET['pid'] !='')
{
$pid = $_GET['pid'];
$pname = array();
$pdl = array();
$udl = array();
$lastdl = array();
$total = "";
$sql = "select * from product_details where id = {$pid}";
$res = @mysql_query($sql);
$row = @mysql_fetch_assoc($res);
array_push($pname,$row);
//echo $row['product_code'];
$ndl = "select * from user_downloads where product_code = '".$row[product_code]."' ORDER BY sample_download_date DESC";
$res_dl = @mysql_query($ndl);

	while($row_dl =  @mysql_fetch_assoc($res_dl))
	{
	array_push($pdl,$row_dl);
	array_push($lastdl,$row_dl[sample_download]);
	$total = array_sum($lastdl);
	//array_push($lastdl,$row_dl[sample_download_date]);
	$ud = "select * from users where id='".$row_dl[user_id]."'";
	$res_udl = @mysql_query($ud);
	$row_udl = @mysql_fetch_assoc($res_udl);
	array_push($udl,$row_udl);
	}
}
/*$smarty->assign("msg",$msg);
$smarty->assign("array",$array);
*/
$smarty->assign("pname",$pname);
$smarty->assign("pdl",$pdl);
$smarty->assign("udl",$udl);
$smarty->assign("lastdl",$lastdl);
$smarty->assign("total",$total);

$content=$smarty->fetch("productlist.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>