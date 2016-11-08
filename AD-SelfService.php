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


$sql_metatags = "select * from keywords where  id ='8'";
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
	$metadesc = 'The Active Directory Self Service delivers the functionalities of web access policy creation and enforcement, user self-registration and self-service, delegated administration, password management, and reporting.';
}
if($arr_metatags[0]['metakeywords']!="")
{
	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);
}else
{
	$metakeywords = 'Active Directory, User Self Service, Password Management, Auditing, Reporting, identity management, access management, IAM, account unlock, infrastructure security';
}

$pro_name = "<title>".$metatitle."</title>
<meta name='keywords' content='".$metakeywords."'>
<meta name='description' content='".$metadesc."'>
";

$smarty->assign("productname",$pro_name);
$smarty->assign("keyword",$_POST['keyword']);
$smarty->assign("pname",$_POST['pname']);
$smarty->assign("product_id",$_POST['product_id']);
$smarty->assign("download_type",$_POST['download_type']);
$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("array",$array);
$content=$smarty->fetch("products_ads.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>