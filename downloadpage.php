<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
session_start();
 $_SESSION['pcode'] = $_REQUEST['pcode'];
 $_SESSION['fullurl'] = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
include("includes/login_check.php");

 $pcode = $_REQUEST['pcode'];
 $userid = addslashes($_REQUEST['user']); //user id from session
 $key = $_REQUEST['id'];
 //$maxdownloads = "2";
 $maxdownloads = "6";

	if(get_magic_quotes_gpc()) {
        $id = stripslashes($_GET['id']);
	}else{
		$id = $_GET['id'];
	}

	// Get the key, timestamp, and number of downloads from the database
	 $query = sprintf("SELECT * FROM downloadkey WHERE uniqueid= '%s'",
	mysql_real_escape_string($id));
	$result = mysql_query($query) or die(mysql_error());
	$row = mysql_fetch_array($result);
	if (!$row) { 
		$msg = "The download key you are using is invalid.";
		$smarty->assign("msg",$msg);
	}
	else
	{
			$downloads = $row['downloads'];
			$downloads += 1;
			if ($downloads > $maxdownloads) 
			{
				$msg = "This key has expired (exceeded allowed downloads).<br />";
				$smarty->assign("msg",$msg);
				$query = sprintf("DELETE FROM downloadkey WHERE uniqueid= '%s'",
	mysql_real_escape_string($id));
	$result = mysql_query($query) or die(mysql_error());
			}
			
			else
			{
				$sql = sprintf("UPDATE downloadkey SET downloads = '".$downloads."' WHERE uniqueid= '%s'",
	mysql_real_escape_string($id));
				$incrementdownloads = mysql_query($sql) or die(mysql_error());
				 $sql = "select * from product_details where product_name ='".$_REQUEST['pcode']."'";
				$query = mysql_query($sql) or die(mysql_error());
				$array = array();
				while($row = @mysql_fetch_assoc($query))
					{
						array_push($array,$row);
				}
				
			$usersql = "SELECT * FROM user_downloads WHERE user_id = '".$userid."' and product_code = '".$pcode."'";
			$res = @mysql_query($usersql)or die(mysql_error());
		
		
		if(@mysql_num_rows($res)!=0)
		{
			
		$userrow = @mysql_fetch_assoc($res);
		$cnt = $userrow['sample_download'];	
			
		$in = "UPDATE users SET last_login = now() WHERE id = {$userrow[id]}";
		$result = @mysql_query($in);
			$cnt = $cnt+1;
			$sql_up = "update user_downloads set sample_download = '".$cnt."',sample_download_date = now() where user_id = '".$userid."' and product_code = '".$pcode."'";
			$res_up = @mysql_query($sql_up);
		}
		else
		{
			
			
			$sql_ins = "insert into user_downloads (user_id,product_code,sample_download,sample_download_date)values('".$userid."','".$pcode."','1',now())";
			$res_ins = @mysql_query($sql_ins) or die(mysql_error());
			
		}
				


   //ob_start();
//   $mm_type="application/octet-stream";
//   $file = "zashare-trial.msi";
//   $filename = "zashare_trial.msi";
// 
//   header("Cache-Control: public, must-revalidate");
//   header("Pragma: no-cache");
//   header("Content-Type: " . $mm_type);
//   header("Content-Length: " .(string)(filesize($file)) );
//   header('Content-Disposition: attachment; filename="'.$filename.'"');
//   header("Content-Transfer-Encoding: binary\n");
// 
//   ob_end_clean();
//   readfile($file);

			}
		}
$smarty->assign("row",$array);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("downloadpage.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>