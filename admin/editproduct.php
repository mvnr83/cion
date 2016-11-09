<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];

if($_POST[act] == 'edit')
{

	$sql_up = "update product_details set product_name = '".$_POST[pname]."',short_description = '".$_POST[sdec]."',html_file_name = '".$_POST[hfname]."',status = '".$_POST[status]."'";
	$file = $_FILES['tfpath']['tmp_name'];
		$filename = $_FILES['tfpath']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path = "../trial/".$filename;
		if($file != '')
		{
			if(is_uploaded_file($file))
			{
				move_uploaded_file($file,$path);
				$sql_up .= ",trial_file_path = '".$filename."'";
			}
		}
		$file1 = $_FILES['ofpath']['tmp_name'];
		$filename1 = $_FILES['ofpath']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path1 = "../original/".$filename1;
		if($file1 != '')
		{
			if(is_uploaded_file($file1))
			{
				move_uploaded_file($file1,$path1);
				$sql_up .= ",original_file_path = '".$filename1."'";
			}
		}
		$file2 = $_FILES['home_img']['tmp_name'];
		$filename2 = $_FILES['home_img']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path2 = "../product_images/".$filename2;
		if($file2 != '')
		{
			if(is_uploaded_file($file2))
			{
				move_uploaded_file($file2,$path2);
				$sql_up .= ",product_image = '".$filename2."'";
			}
		}
		$file3 = $_FILES['download_img']['tmp_name'];
		$filename3 = $_FILES['download_img']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path3 = "../download_images/".$filename3;
		if($file3 != '')
		{
			if(is_uploaded_file($file3))
			{
				move_uploaded_file($file3,$path3);
				$sql_up .= ",download_image = '".$filename3."'";
			}
		}
	$sql_up .= " where id = '".$uid."'";
	$res_up = @mysql_query($sql_up) or die(mysql_error());
	
	if($res_up)
		$msg = "Product Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from product_details where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel) or die(mysql_error());
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);
$content=$smarty->fetch("editproduct.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>