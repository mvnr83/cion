<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from partners where company_name = '".$_POST[cname]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Customer already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		
		//$file = $_FILES['img']['tmp_name'];
		//$filename = $_FILES['img']['name'];
		$filename = $_FILES['img']['name'];
		$path= "../company_logo/".$_FILES['img']['name'];
		if($filename !=none)
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
		//$path = "../company_logo/".$filename;
		//if($file != '')
//		{
//			if(is_uploaded_file($file))
//			{
//				move_uploaded_file($file,$path);
//			}
//		}
		
		$sql_ins = "insert into partners(company_name,company_logo,company_url,created_on,status)values('".$_POST[cname]."','".$filename."','".$_POST[url]."',
					now(),'".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Customer added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewcustomers.php");
			exit();
		}
	}
}



$content=$smarty->fetch("addcustomer.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>