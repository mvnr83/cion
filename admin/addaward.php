<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from awards where award_name = '".$_POST[aname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "An Award already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		//$file = $_FILES['img']['tmp_name'];
//		$filename = $_FILES['img']['name'];
//		//$name = explode(".",$filename);
//		//$fname = $_POST[aname];
//		//$file_name = $fname.".".$name[1];
//		$path = "../awards/".$filename;
//		if($file != '')
//		{
//			if(is_uploaded_file($file))
//			{
//				move_uploaded_file($file,$path);
//			}
//		}
			
		//$file = $_FILES['img']['tmp_name'];
		//$filename = $_FILES['img']['name'];
		$filename = $_FILES['img']['name'];
		$path= "../awards/".$_FILES['img']['name'];
		if($filename!=none)
		{
		if(copy($_FILES['img']['tmp_name'], $path))
		{
		//echo "Successful<BR/>";
$msg = "Successful uploaded";
		$smarty->assign("msg",$msg);
		
		//$HTTP_POST_FILES['ufile']['size'] = file size
		//$HTTP_POST_FILES['ufile']['type'] = type of file
//echo "File Name :".$HTTP_POST_FILES['ufile']['name']."<BR/>";
//echo "File Size :".$HTTP_POST_FILES['ufile']['size']."<BR/>";
//echo "File Type :".$HTTP_POST_FILES['ufile']['type']."<BR/>";
//echo "<img src=\"$path\" width=\"150\" height=\"150\">";
}
else
{
$msg = "error";
}
}
		
		
		$sql_ins = "insert into awards(award_name,site_url,image_path,created_on,status)values('".$_POST[aname]."','".$_POST[url]."','".$filename."',now(),'".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Award added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewawards.php");
			exit();
		}
	}
}
$content=$smarty->fetch("addaward.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>