<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update partners set company_name = '".$_POST[cname]."',company_url = '".$_POST[url]."',status = '".$_POST[status]."'";
	$file = $_FILES['img']['tmp_name'];
	$filename = $_FILES['img']['name'];
	//$name = explode(".",$filename);
	//$fname = $_POST[aname];
	//$file_name = $fname.".".$name[1];
	$path = "../company_logo/".$filename;
	if($file != '')
	{
		if(is_uploaded_file($file))
		{
			move_uploaded_file($file,$path);
		}
		$sql_up .= ",company_logo = '".$filename."'";
	}
	 $sql_up .= " where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Customer Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from partners where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
}
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);

$content=$smarty->fetch("editcustomer.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>