<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	$sql_up = "update awards set award_name = '".$_POST[aname]."',site_url = '".$_POST[url]."',status = '".$_POST[status]."'";
	$file = $_FILES['img']['tmp_name'];
	$filename = $_FILES['img']['name'];
	//$name = explode(".",$filename);
	//$fname = $_POST[aname];
	//$file_name = $fname.".".$name[1];
	$path = "../awards/".$filename;
	if($file != '')
	{
		if(is_uploaded_file($file))
		{
			move_uploaded_file($file,$path);
		}
		$sql_up .= ",image_path = '".$filename."'";
	}
	 $sql_up .= " where id = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Award Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from awards where id = '".$uid."'";
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

$content=$smarty->fetch("editaward.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>