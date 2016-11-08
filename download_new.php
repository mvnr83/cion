<?php
echo "aaaa";
include("includes/application_start.php");
require_once("admin/includes/db_connect.php");
print_r($_POST);
if(($_POST['download_type']=='sheet' || $_REQUEST['product_code'] != ''))
{
	if($_POST['download_type'] == 'sheet')
	{
		$sql = "select * from resources where product_code = '".$_POST['res_id']."'";
		$res = mysql_query($sql) or die(mysql_error());
		$fetch = mysql_fetch_assoc($res);
		$file_name = $fetch['resource_path'];
		$path = "white_papers/";
	}
	else if($_REQUEST['product_code'] != '')
	{
		$sql_prd = "select * from product_details where product_code = '".$_REQUEST['product_code']."'";
		$res_prd = @mysql_query($sql_prd);
		$row_prd = @mysql_fetch_assoc($res_prd);
		if($_POST['download_type']=="trial")
		{
			$file_name = $row_prd['trial_file_path'];
			$path = "trial/";
			echo $sql = "SELECT * FROM user_downloads WHERE user_id = '".$_SESSION[id]."' and product_code = '".$row_prd[product_code]."'";
		//	select sample_download from user_downloads where user_id = '".$_SESSION[id]."' and product_code = '".$row_prd[product_code]."'";
			$res = @mysql_query($sql)or die(mysql_error());
			$row = @mysql_fetch_assoc($res);
			$cnt = $row[sample_download];
			if(@mysql_num_rows($res)>0)
			{
				$cnt = $cnt+1;
				$sql_up = "update user_downloads set sample_download = '".$cnt."' where user_id = '".$_SESSION[id]."' and product_code = '".$row_prd[product_code]."'";
				$res_up = @mysql_query($sql_up);
			}
			else
			{
				$sql_ins = "insert into user_downloads(user_id,product_code,sample_download)values('".$_SESSION[id]."','".$row_prd[product_code]."','1')";
				$res_ins = @mysql_query($sql_ins) or die(mysql_error());
			}
			
		}//else $_REQUEST['or']
	}//else if $_REQUEST['product_code]
	$type = explode(".",$file_name);
	if($type[1]!='')
	{
		if($type[1]=="pdf")
			$mtype="application/pdf";
		else if($type[1]=="doc")
			$mtype ="application/msword";
		else
			$mtype = "application/x-octet-stream";

			//$mtype = "application/force-download";
		$title = $fetch['title'];
		
		$filename = $path.$file_name;
		$fsize = filesize($filename);
		header("Pragma: public");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: public");
		header("Content-Description: File Transfer");
		header("Content-Type: ".$mtype);
		header("Content-Disposition: attachment; filename=\"$file_name\"");
		header("Content-Transfer-Encoding: binary");
		header("Content-Length: ".$fsize);
		readfile($filename);
		exit(0);
	}
	else
	{
		header("Location:index.php");
		exit(0);
	}
}
?>