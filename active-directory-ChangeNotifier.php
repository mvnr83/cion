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


$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='6' and status='Active'"));


$sql_metatags = "select * from keywords where  id ='11'";

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

	$metadesc = 'The Active Directory Change Notifier will raise the operational efficiency of your IT organization. Reactive reporting is good for audits and change management- proactive reporting is essential for the well-being of your infrastructure. This application offers real time help so you can detect, troubleshoot and quickly resolve Active Directory issues by outlining what has changed, when, where and who made these changes.';

}

if($arr_metatags[0]['metakeywords']!="")

{

	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);

}else

{

	$metakeywords = 'Active Directory, Change Notification, Real time, Infrastructure Security, Proactive Monitoring';

}



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



$content=$smarty->fetch("products_adcn.tpl");



$smarty->assign("content",$content);



$smarty->display("home.tpl");



require_once("newsletter.php");



?>