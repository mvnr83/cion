<?php
session_start();
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$_SESSION['whitepaper'] = 777;
/*if($_SESSION['username']=='')
{
	header("Location:login.php");
	exit(0);
}*/


$sql_sel = "select * from whitepaper where status='Active'";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}


$sql_metatags = "select * from keywords where  id ='15'";
$res_metatags = mysql_query($sql_metatags) or die(mysql_error());
$arr_metatags = array();
while($fetch_metatags=mysql_fetch_assoc($res_metatags))
	array_push($arr_metatags,$fetch_metatags);

if($arr_metatags[0]['metatitle']!="")
{
	$metatitle = stripcslashes($arr_metatags[0]['metatitle']);
}else
{
	$metatitle = 'Active Directory Manager, Active Directory Self Service, Active Directory Recovery, Active Directory Reporter, Active Directory Change Notifier, System Information &amp; Comparison - Cion Systems';
}
if($arr_metatags[0]['metadesc']!="")
{
	$metadesc = stripcslashes($arr_metatags[0]['metadesc']);
}else
{
	$metadesc = 'The CionSystems support experience comes from our unflagging commitment to outstanding customer service. We offer customers the best experience in the industry.';
}
if($arr_metatags[0]['metakeywords']!="")
{
	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);
}else
{
	$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool, Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self servic';
}

$pro_name = "<title>".$metatitle."</title>
<meta name='keywords' content='".$metakeywords."'>
<meta name='description' content='".$metadesc."'>
";


$smarty->assign("array",$array);
$smarty->assign("productname",$pro_name);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("whitepaper.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>