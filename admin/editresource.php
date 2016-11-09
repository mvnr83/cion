<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$file = $_FILES['path']['tmp_name'];
		$filename = $_FILES['path']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path = "../white_papers/".$filename;
		if($file != '')
		{
			if(is_uploaded_file($file))
			{
				move_uploaded_file($file,$path);
			}
		}
	$sql_up = "update resources set product_code='".$_POST['product_code']."',resource_path = '".$filename."',status = '".$_POST[status]."' where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Resource Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from resources where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}

$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
	array_push($arr_products,$fetch_products);
$smarty->assign("products",$arr_products);
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);
$content=$smarty->fetch("editresource.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>