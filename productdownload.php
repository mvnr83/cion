<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");
if(isset($_GET['order']) && (!empty($_GET['order'])) && (isset($_POST['frmaction'])) && ($_POST['frmaction']=="download") && (!empty($_POST['product_id']))){
	
	$order = $_REQUEST['order'];
	$maxdownloads = "5";
	$product_id = $_POST['product_id'];
	$product_type = $_POST['product_type'];
	
	$usersql = "SELECT * FROM orders WHERE md5(order_id) = '".$_GET['order']."' and transaction_pending = 'Completed' and status='Active'";
	$res = @mysql_query($usersql)or die(mysql_error());	
	if (mysql_num_rows($res)==1) { 
		
		$products = mysql_query("select * from order_items where md5(order_id)='".$_GET['order']."' and md5(product_id)='".$product_id."' and product_download_status=1") or die(mysql_error());
			if(mysql_num_rows($products)!=0)
			{			 	
				$fetchpro = mysql_fetch_assoc($products);
				$downloads = $fetchpro['product_no_downloads'];
				if ($downloads > $maxdownloads) 
				{
					$msg = "The download key has expired, you have tried to download too many times. Contact support@cionsystems.com with details of your purchase.";
					
				}else{
				$updateproduct = mysql_query("update order_items set product_no_downloads = (product_no_downloads+1),product_download_date=now() where md5(order_id)='".$_GET['order']."' and md5(product_id)='".$product_id."'") or die(mysql_error());		
						ob_start();	
						$filename_replace = str_replace(array(' ','&'),array('_','_'),strtolower($fetchpro['product_name']));
						
						if($fetchpro['product_id']==1)
						{
							$nicname = 'ad_notifier_reporter';
							
						}else if($fetchpro['product_id']==6)
						{
							$nicname = 'ad_notifier_reporter';
						}else
						{
							$nicname = $filename_replace;
						}
						
						
						$filename_replace1 = $filename_replace.'_'.$product_type;
						//$filename = rand().$nicname.'_'.$product_type.'.zip';
						
						$file = "datastorage/".$nicname.'_'.$product_type.'.zip';
						$fsize = filesize($file); 	
						$newname = $fetchpro['product_name'].'.zip';
						ini_set("memory_limit", "800M"); 
						header("Pragma: public"); // required 
						header("Expires: 0"); 
						header("Cache-Control: must-revalidate, post-check=0, pre-check=0"); 
						header("Cache-Control: private",false); // required for certain browsers 
						header("Content-Type: application/zip"); 
						header("Content-Disposition: attachment; filename=\"".$newname."\";" ); 
						header("Content-Transfer-Encoding: binary"); 
						header("Content-Length: ".$fsize); 
						ob_clean(); 
						flush(); 
						readfile($file);						
					}
				}else
				{
					$msg = "The download key you are using is invalid.";
				}
	
			
	}
	else
	{
		$msg = "The download key you are using is invalid.";		
	}
	
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Active Directory delegation | active directory tool | cionsystems | seattle</title>
<meta name='keywords' content='windows active directory, exchange, sharepoint,  white paper,permissions,management,tools, backup,users, Microsoft Exchange, recovery, reports'>
<meta name='description' content='CionSystems offers easy to use web-based, Active-Directory management solutions that exceed expectations and help IT organizations manage passwords, account unlocks, provisioning and deprovisioning, group management, Exchange, auditing, delegation, compliance.'>
<meta name="google-site-verification" content="Cr-BsllHBafWdF6eFS1YuGQ7qc20z0e5SUOzYUAEKVg" />
<link rel="shortcut icon" href="fav.ico" />
<link href="style/style.css" rel="stylesheet" media="all" />
<link rel="stylesheet" type="text/css" href="ajaxtabs.css" />
<script src="Scripts/ajaxtabs.js" type="text/javascript"></script>
<script type="text/javascript" src="Script/p7exp.js"></script>
<script src="Script/roundies.js" type="text/javascript"></script>
<script src="Script/messages.js" type="text/javascript"></script>
<script src="Scripts/validator.js" type="text/javascript"></script>
<script type="text/javascript">
    /* varying radii, "all" browsers */
	DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true);
</script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript">  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);
</script>
<script language="javascript">
function productType(pid,ptype)
{	
	document.product_frm.product_id.value = pid;
	document.product_frm.product_type.value = ptype;
	document.product_frm.frmaction.value = 'download';	
	document.product_frm.submit();	
}
</script>
</head>
<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="85" valign="bottom"><?php include_once("header.php");?></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><?php include_once("topmenu.php"); ?></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="28" align="right" valign="top" class="titlebg"><table width="250" border="0" align="right" cellpadding="0" cellspacing="0" bgcolor="#cccccc">
                    <tr>
                      <td width="10" align="left"><img src="images/loginlf.gif" width="4" height="32" /></td>
                      <td width="279" align="center"><div style="float:left"><a href="register.php" title="Signup">Not
                            a Member ? Signup Here </a></div>
                        <div style="float:right"><a href="login.php" title="Login"><img src="images/loginbtn.gif" alt="login" width="75" height="17" border="0" /></a></div></td>
                      <td width="11" align="right"><img src="images/loginrt.gif" width="4" height="32" /></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="left" valign="top"><script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.box', '10px 10px 10px 10px', true);
</script>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="left"><h2 class="navigation_protitle">
                              <a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> Download
                              Products </td>
                          </tr>
                          <tr>
                            <td align="center">&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="center"><table width="90%" border="0" align="right" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td align="center"><span class="error">
                                    <?php if(isset($msg)){ echo $msg;}?>
                                    </span></td>
                                </tr>
                                <tr>
                                  <td style="padding:15px 0 10px 0;">
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="2%">&nbsp;</td>
                                          <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
                                              <tr>
                                                <td><h2 class="protitle"><span>Products</span> Download</h2></td>
                                              </tr>
                                              <tr>
                                                <td>&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td>&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td align="center">
                                                <form name="product_frm" id="product_frm" method="post">
                                             <input type="hidden" name="product_id" id="product_id" value="" />
                                             <input type="hidden" name="product_type" id="product_type" value="" />           
                                             <input type="hidden" name="frmaction" id="frmaction" value="" />   
                                                <table width="90%" border="0" cellspacing="3" cellpadding="0">
                                                    <tr>
                                                      <td height="30" align="center" bgcolor="#ECE9D8"><h4>You
                                                          may download our software
                                                          by clicking on the "Download" button.</h4></td>
                                                    </tr>
                                                    <?php		  
	if(isset($_GET['order']) && (!empty($_GET['order'])))
	{
		$order = $_REQUEST['order'];
		$maxdownloads = "6";
		$usersql = "SELECT * FROM orders WHERE md5(order_id) = '".$_GET['order']."' and transaction_pending = 'Completed' and status='Active'";
		$res = @mysql_query($usersql)or die(mysql_error());	
		if (mysql_num_rows($res)==1) {
		
			$products = mysql_query("select * from order_items where md5(order_id)='".$_GET['order']."'");
			if(mysql_num_rows($products)!=0)
			{
				while($fetchpro=mysql_fetch_assoc($products)){
					
					$product = mysql_fetch_array(mysql_query("select * from product_details where id ='".$fetchpro['product_id']."'"));
				?>
                <tr>
                  <td height="100"><div class="succeed">
                      <table width="100%" border="0" cellspacing="2" cellpadding="0">
                        <tr>
                          <td width="25%" align="center" valign="middle"><center>
                              <img src="images/<?php echo $product['download_image'];?>" /><br />
                              <?php echo $product['product_name'];?>
                            </center></td>
                          <td> <?php if($fetchpro['product_download_status']==1){?> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" align="center">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="center">                          
                                	<div style="width:400px;">
                                    <div style="margin:5px;float:left"><img src="images/32bit_org.gif" onmouseover="this.src='images/32bit_org_hover.gif'" onmouseout="this.src='images/32bit_org.gif'" border="0" style="cursor:pointer;" width="175" height="37" onclick="javascript: productType('<?php echo md5($product['id']);?>','32bit');" /></div>
                                    <div style="margin:5px;float:right;"> <?php if($fetchpro['product_id']!='5')
{
	?>
<img src="images/64bit_org.gif" onmouseover="this.src='images/64bit_org_hover.gif'" onmouseout="this.src='images/64bit_org.gif'" border="0" style="cursor:pointer;" width="175" height="37" onclick="javascript: productType('<?php echo md5($product['id']);?>','64bit');"/>
<?php
}
?>
 </div>
                                  </div></td>
                              </tr>
                            </table> <?php
                            } else{
									?>
										<tr>
										<td align="center" height="180" style="color:#CC3333;font-size:14px;">The download key you are using is invalid/expired. Please contact our Sales Department at <a href="contactus.php" class="red10">sales@cionsystems.com</a> </td>
										</tr>
							<?php 	
								} ?></td>
                        </tr>
                      </table>
                    </div></td>
                </tr>
                                                    <?php
					
				}
			}
		}
	}
	
	?>
                                                    <tr>
                                                      <td align="center" height="180" style="color:#CC3333;font-size:14px;">&nbsp;</td>
                                                    </tr>
                                                   
                                                    <tr>
                                                      <td>&nbsp;</td>
                                                    </tr>
                                                  </table></form></td>
                                              </tr>
                                              <tr>
                                                <td>&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td>&nbsp;</td>
                                              </tr>
                                            </table></td>
                                          <td width="2%">&nbsp;</td>
                                        </tr>
                                      </table>
                                    </td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="center">You can also send e-mail to <a href="contactus.php" class="red"><strong> sales@cionsystems.com</strong></a></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><?php include_once("footer.php")?></td>
  </tr>
</table>
</body>
</html>