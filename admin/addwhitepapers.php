<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from whitepaper where title = '".$_POST[title]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Resource already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{
		//$file = $_FILES['path']['tmp_name'];
//		$filename = $_FILES['path']['name'];
		
		$filename = $HTTP_POST_FILES['path']['name'];
		$path= "../white_papers/".$HTTP_POST_FILES['path']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		//$path = "../white_papers/".$filename;
		if($filename !=none)
		{
			if(is_uploaded_file($HTTP_POST_FILES['path']['tmp_name']))
			{
				move_uploaded_file($HTTP_POST_FILES['path']['tmp_name'],$path);
			}
		}
		$sql_ins = "insert into whitepaper(wp_name,wp_path,updated_on,status) values('".$_POST[title]."','".$filename."',now(),'".$_POST[status]."')";
		$res_ins = @mysql_query($sql_ins);
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Resource added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewwhitepapers.php");
			exit();
		}
	}
}
//$sql_products = "select * from product_details where status='Active' order by order_product asc";
//$res_products = mysql_query($sql_products) or die(mysql_error());
//$arr_products = array();
//while($fetch_products=mysql_fetch_assoc($res_products))
//	array_push($arr_products,$fetch_products);
$smarty->assign("products",$arr_products);
$content=$smarty->fetch("addwhitepaper.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>