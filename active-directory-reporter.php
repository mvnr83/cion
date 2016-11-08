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


$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='1' and status='Active'"));
$p_name=str_replace(' ','+',$get_product['product_name']);

$sql_metatags = "select * from keywords where id ='10'";

$res_metatags = mysql_query($sql_metatags) or die(mysql_error());

$arr_metatags = array();

while($fetch_metatags=mysql_fetch_assoc($res_metatags))

	array_push($arr_metatags,$fetch_metatags);

if(!empty($_SESSION['username']))
{
$get_user = mysql_fetch_array(mysql_query("select * from users where user_name='".$_SESSION['username']."'"));
}


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

	$metadesc = 'Active Directory reports generated with this application facilitate a periodic review of the entire inventory of objects in compliance with requirements during regulatory audits (SOX Compliance, PCI, etc). Customizable reports on Security Groups, File/Folder permissions, recently modified Users, Computers, GPOs, OUs, OS based reports, Nested Reports, Log-on based reports and more, can be auto generated using this application.';

}

if($arr_metatags[0]['metakeywords']!="")

{

	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);

}else

{

	$metakeywords = 'Active Directory Reporter, Regulatory compliance, SOX, PCI, HIPAA, AD notifications, windows server, AD cleanup, email';

}



$pro_name = "<title>".$metatitle."</title>

<meta name='keywords' content='".$metakeywords."'>

<meta name='description' content='".$metadesc."'>

";


$key=uniqid(md5(rand()));

$smarty->assign("productname",$pro_name);

$smarty->assign("keyword",'trail');
$smarty->assign("key",$key);
$smarty->assign("pname",$get_product['product_name']);
$smarty->assign("p_name",$p_name);

$smarty->assign("product_id",$get_product['id']);

$smarty->assign("download_type",'trail');

$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("user",$get_user['id']);

$smarty->assign("array",$array);

$content=$smarty->fetch("products_adr.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>