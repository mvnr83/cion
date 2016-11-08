<?php
require_once("admin/includes/db_connect.php");

$userid = addslashes($_GET['user']); //user id from session
$pcode = addslashes($_GET['pcode']); //Product code

$sql = "SELECT * FROM user_downloads WHERE user_id = '".$userid."' and product_code = '".$pcode."'";
	//	select sample_download from user_downloads where user_id = '".$_SESSION[id]."' and product_code = '".$row_prd[product_code]."'";
		$res = @mysql_query($sql)or die(mysql_error());
		$row = @mysql_fetch_assoc($res);
		$cnt = $row[sample_download];
		if(@mysql_num_rows($res)>0)
		{
		$in = "UPDATE users SET last_login = now() WHERE id = {$row[id]}";
		$result = @mysql_query($in);
			$cnt = $cnt+1;
			$sql_up = "update user_downloads set sample_download = '".$cnt."',sample_download_date = now() where user_id = '".$userid."' and product_code = '".$pcode."'";
			$res_up = @mysql_query($sql_up);
		}
		else
		{
			$sql_ins = "insert into user_downloads(user_id,product_code,sample_download,sample_download_date)values('".$userid."','".$pcode."','1',now())";
			$res_ins = @mysql_query($sql_ins) or die(mysql_error());
		}
?>