<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
if(isset($_GET['filename']))
{
	$sql_prd = "select * from product_details where trial_file_path = '".$_REQUEST[filename]."'";
	$res_prd = @mysql_query($sql_prd);
	$row_prd = @mysql_fetch_assoc($res_prd);
	$sql = "SELECT * FROM user_downloads WHERE user_id = '".$_SESSION[id]."' and product_code = '".$row_prd[product_code]."'";
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
	$filename=$_GET['filename'];
	$file="trial/".$filename;
	$filesize=filesize($file);
	header("Content-Type: application/x-octet-stream");
	header("Content-Disposition: attachment; filename=\"" . $filename . "\"");
	header("Content-Length: " . $filesize);
	readfile($filename);
	exit(0);
}

?>