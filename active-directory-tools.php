<?php 

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

$sql_metatags = "select * from keywords where  id ='3'";

$res_metatags = mysql_query($sql_metatags) or die(mysql_error());

$arr_metatags = array();

while($fetch_metatags=mysql_fetch_assoc($res_metatags))

	array_push($arr_metatags,$fetch_metatags);



if($arr_metatags[0]['metatitle']!="")

{

	$metatitle = stripcslashes($arr_metatags[0]['metatitle']);

}else

{

	$metatitle = 'Active Directory Manager, Enterprise Self Service, Active Directory Recovery, Active Directory Reporter, Active Directory Change Notifier, System Information &amp; Comparison - Cion Systems';

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

//get products information
$sql = mysql_query("SELECT * FROM product_details WHERE status = 'Active' ORDER BY order_product ASC ");

$products = array();
while($res = mysql_fetch_assoc($sql)){
    if(!file_exists('product_images/'.$res['product_image'])){
        $res['product_image'] = 'images/newproducts/productsheader1.jpg';
    }else{
        $res['product_image'] = 'product_images/'.$res['product_image'];
    }
    $products[$res['id']] = $res;
    $products[$res['id']]['sub_plans'] = array();
    $products[$res['id']]['plans'] = array();
    $pSql = mysql_query("SELECT * FROM subscription_plans  WHERE product_id = '".$res['id']."' AND status = 1 AND addon_id = 0 ORDER BY sub_id ASC");
    
    while($presaa = @mysql_fetch_assoc($pSql)){
        
        $products[$res['id']]['plans'][] = $presaa;
    }
    $pSql1 = mysql_query("SELECT * FROM subscription_addon  WHERE product_id = '".$res['id']." AND status = 1 ORDER BY addon_order ASC'");
    
    while($presq = mysql_fetch_assoc($pSql1)){
        //$products[$res['id']]['addons'][] = $pres;
        $pSqla = mysql_query("SELECT * FROM subscription_plans  WHERE product_id = '".$res['id']."' AND addon_id = '".$presq['addon_id']."' AND status = 1 ORDER BY sub_id ASC");
    
        while($presa = mysql_fetch_assoc($pSqla)){
            $presq['sub_plans'][] = $presa;
        }
        $products[$res['id']]['addons'][] = $presq;
    }
    
    
    
    
    
    //$products[$res['id']]['sub_plans_json'] = json_encode($products[$res['id']]['sub_plans']);
}

$smarty->assign("productname",$pro_name);

$smarty->assign("session_username",$_SESSION['username']);
$smarty->assign("products",$products);
$content=$smarty->fetch("productsnew.tpl");

$smarty->assign("content",$content);

$smarty->display("home.tpl");

require_once("newsletter.php");

?>