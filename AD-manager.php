<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$sql_prds = "select * from product_details where status='Active' order by order_product asc";
$res_prds = @mysql_query($sql_prds);
$array = array();
while($row_prds = @mysql_fetch_assoc($res_prds))
{
	array_push($array,$row_prds);
}

$sql_metatags = "select * from keywords where  id ='7'";
$res_metatags = mysql_query($sql_metatags) or die(mysql_error());
$arr_metatags = array();
while($fetch_metatags=mysql_fetch_assoc($res_metatags))
	array_push($arr_metatags,$fetch_metatags);
$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='5' and status='Active'"));

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
	$metadesc = 'CionSystems offers easy to use web-based, Active Directory management solutions that exceed expectations and help IT organizations manage passwords, account unlocks, provisioning and deprovisioning, group management, Exchange, auditing, delegation, compliance.';
}
if($arr_metatags[0]['metakeywords']!="")
{
	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);
}else
{
	$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool,Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service';
}

$pro_name = "<title>".$metatitle."</title>
<meta name='keywords' content='".$metakeywords."'>
<meta name='description' content='".$metadesc."'>
";
/*$pro_name = "<title>Active Directory Management | CionSystems</title>

<meta name='keywords' content='Active Directory Management, User Lifecycle Management, Group Policy Tools, GPO tools, temporary users, temporary group management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, mobility, Exchange'>

<meta name='description' content='Active Directory Manager is a comprehensive web-based application that simplifies User provisioning and AD administration. The solution features a Dashboard UI from which IT managers can view and manage the full user lifecycle, along with automating tasks and generate reports on Active Directory environment.'>
";*/
//$title = 'display';
//$smarty->assign("title_dispaly",$title);
$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_admpro.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>