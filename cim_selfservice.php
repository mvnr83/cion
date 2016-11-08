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

$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='15' and status='Active'"));
$p_name=str_replace(' ','+',$get_product['product_name']);
if(!empty($_SESSION['username']))
{
$get_user = mysql_fetch_array(mysql_query("select * from users where user_name='".$_SESSION['username']."'"));
}


$sql_metatags = "select * from keywords where  id ='15'";

$res_metatags = mysql_query($sql_metatags) or die(mysql_error());

$arr_metatags = array();

while($fetch_metatags=mysql_fetch_assoc($res_metatags))

	array_push($arr_metatags,$fetch_metatags);


$metatitle = 'Cloud Identity Management Tool and Password Self-Service - Cion Systems';
$metadesc = 'Microsoft, office 365, active directory, tools, management, backup, users, exchange, Microsoft Exchange, password, dirsync, user creation, de-provisioning.';
$metakeywords = 'Microsoft, office 365, active directory, tools, management, backup, users, exchange, Microsoft Exchange, password, dirsync, user creation, de-provisioning';


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
$key=uniqid(md5(rand()));

$smarty->assign("productname",$pro_name);
$smarty->assign("key",$key);

$smarty->assign("keyword",'trail');

$smarty->assign("pname",$get_product['product_name']);

$smarty->assign("p_name",$p_name);

$smarty->assign("product_id",$get_product['id']);

$smarty->assign("download_type",'trail');

$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("user",$get_user['id']);

$smarty->assign("array",$array);

$content=$smarty->fetch("cim_selfservicez.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>