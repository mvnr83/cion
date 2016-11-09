<?php
include("includes/application_start.php");
$smarty->assign("session",$_SESSION['uname']);
if($_POST[act] =='add')
{
	$file = $_FILES['upfile']['tmp_name'];
	$filename = $_FILES['upfile']['name'];
	//$name = explode(".",$filename);
	//$fname = $_POST[aname];
	//$file_name = $fname.".".$name[1];
	$path = "../white_papers/".$filename;
	if($file != '')
	{
		if(is_uploaded_file($file))
		{
			move_uploaded_file($file,$path);
			$msg = "File Uploaded Successfully";
			$smarty->assign("msg",$msg);
		}
	}
	
	
}



$content=$smarty->fetch("fileupload.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>