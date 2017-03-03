<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$fname = $_POST['first_name'];
$lname = $_POST['last_name'];
$company = $_POST['company'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$product = $_POST['products'];
$comments = $_POST['comments'];
$contact = $_POST['contact'];
$to = "";
$from = "webmaster@cionsystems.com";

if(isset($_POST['keyword']) && $_POST['keyword']=="send")
{
    
    if( $_SESSION['security_code'] != $_POST['security_code'] || empty($_SESSION['security_code'] ) ) { 
        $msg = "Please enter valid captcha";
        $smarty->assign("msg",$msg);
        unset($_SESSION['security_code']);   
        
    } else { 
        
        $subject = $contact." for CionSystems";
			$message = '<html><body>	
			<table width="100%" border="0" cellspacing="3" cellpadding="2">
		  <tr>
			<td> First name :'.$_POST['first_name'].' </td>
		  </tr>
		  <tr>
			<td> Last name :'.$_POST['last_name'].' </td>
		  </tr>
		  <tr>
			<td> Company name :'.$_POST['company'].' </td>
		  </tr>
		  <tr>
			<td> Phone :'.$_POST['phone'].' </td>
		  </tr>
		  <tr>
			<td> Email Address :'.$_POST['email'].' </td>
		  </tr>
		  <tr>
			<td> Product name :'.$_POST['product'].' </td>
		  </tr>
		  <tr>
			<td> comments Given :'.$_POST['comments'].' </td>
		  </tr>
		</table>
		</body>
		</html>';
		
		
		
		if($contact == "Sales")
		{
                    $to = "sales@cionsystems.com";
		}
		else if ($contact == "Support")
		{
                    $to = "support@cionsystems.com";
		}
		else if ($contact == "General Info" || $contact == "webmaster")
		{
                    $to = "info@cionsystems.com";
		}
		else
		{
                    header("Location: contactus.php");
		}
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= "From: $from". "\r\n";
		
		if(@mail($to, $subject, $message, $headers))
                {

                        header("Location: contact_thankyou.php");
                        exit(0);
                }
        
    }
    
    
    
    
    
	
	}	
$products_sql = "select * from product_details where status='Active' ORDER BY order_product";
$res_product = mysql_query($products_sql) or die(mysql_error());
$products = array();
while($fetch = mysql_fetch_assoc($res_product))
	array_push($products,$fetch);

$sql_metatags = "select * from keywords where  id ='21'";
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
	$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool, Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service';
}

$pro_name = "<title>".$metatitle."</title>
<meta name='keywords' content='".$metakeywords."'>
<meta name='description' content='".$metadesc."'>
";

$smarty->assign("postval",$_POST);
$smarty->assign("productname",$pro_name);	
$smarty->assign("products",$products);
$smarty->assign("session_username",$_SESSION['username']);
$content=$smarty->fetch("contactus.tpl");
$smarty->assign("content",$content);
$smarty->display("home.tpl");
require_once("newsletter.php");
?>