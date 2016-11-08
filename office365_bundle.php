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


$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='22' and status='Active'"));



	$metatitle = 'Office 365 | Azure Management Simplified';



	$metadesc = 'Microsoft, office 365, active directory, tools, management,  self service, manager, selfservice, reporter, change notification, group,  group policy management, user provisioning, identity management, password management.';



	$metakeywords = 'Microsoft, office 365, active directory, tools, management,  self service, manager, selfservice, reporter, change notification, group,  group policy management, user provisioning, identity management, password management';



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

$content=$smarty->fetch("office365_bundle.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>