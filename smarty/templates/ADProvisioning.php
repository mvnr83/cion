
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
$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='13' and status='Active'"));

$metatitle = 'Active Directory Management Tools | CionSystems | Cion | Seattle';


$metadesc = 'CionSystems offers easy to use web-based, Active Directory management solutions that exceed expectations and help IT organizations manage passwords, account unlocks, provisioning and deprovisioning, group management, Exchange, auditing, delegation, compliance.';

$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool,Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service';


$pro_name = "<title>".$metatitle."</title>

<meta name='keywords' content='".$metakeywords."'>

<meta name='description' content='".$metadesc."'>

";



$smarty->assign("productname",$pro_name);

$smarty->assign("keyword",'trail');

$smarty->assign("pname",$get_product['product_name']);

$smarty->assign("product_id",$get_product['id']);

$smarty->assign("download_type",'trail');

$smarty->assign("session_username",$_SESSION['username']);

$smarty->assign("array",$array);

$content=$smarty->fetch("products_provisioning.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>