<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

//include("includes/login_check.php");

$sql_awards = "select * from awards where status='Active'";
$res_awards = mysql_query($sql_awards) or die(mysql_error());
$arr_awards = array();
while($fetch_awards=mysql_fetch_assoc($res_awards))
	array_push($arr_awards,$fetch_awards);

$sql_resources = "select * from resources where status='Active'";
$res_resources = mysql_query($sql_resources) or die(mysql_error());
$arr_resources = array();
while($fetch_resources=mysql_fetch_assoc($res_resources))
	array_push($arr_resources,$fetch_resources);
$sql_partners = "select * from partners where status='Active'";
$res_partners = mysql_query($sql_partners) or die(mysql_error());
$arr_partners = array();
while($fetch_partners=mysql_fetch_assoc($res_partners))
	array_push($arr_partners,$fetch_partners);
$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
	array_push($arr_products,$fetch_products);

if($_POST['uname'] != '')
{
	$sql_chk = "select * from users where user_name = '".$_POST[uname]."'and password = '".$_POST[pwd]."'";
	$res_chk = @mysql_query($sql_chk);
	
	if(@mysql_num_rows($res_chk)>0)
	{
		$row_chk = @mysql_fetch_assoc($res_chk);
		$_SESSION[username] = $row_chk[user_name];
		$_SESSION[id] = $row_chk[id];
		header("Location: myaccount.php");
		exit();
	}
	else
	{
		$msg = "Invalid User Name/Password";
		$smarty->assign("msg",$msg);
	}
}


$sql_metatags = "select * from keywords where  id ='6'";
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

$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("arr_products",$arr_products);
$smarty->assign("arr_company",$arr_partners);
$smarty->assign("arr_resources",$arr_resources);
$smarty->assign("arr_awards",$arr_awards);
$smarty->assign("productname",$pro_name);
//$content=$smarty->fetch("index_main.tpl");
//$smarty->assign("content",$content);
//$smarty->display("products.tpl");
$content=$smarty->fetch("products.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>