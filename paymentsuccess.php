<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");

$pro_name = "<title>Buy It Now | CionSystems</title>";
$products_sql = "select * from product_details where status='Active' ORDER BY order_product";

$res_product = mysql_query($products_sql) or die(mysql_error());

$products = array();

while($fetch = mysql_fetch_assoc($res_product))
	array_push($products,$fetch);
	

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
 <script language="javascript">
	function del(pid){
		if(confirm('Do you really mean to delete this item')){
			document.form1.pid.value=pid;
			document.form1.command.value='delete';
			document.form1.submit();
		}
	}
	function clear_cart(){
		if(confirm('This will empty your shopping cart, continue?')){
			document.form1.command.value='clear';
			document.form1.submit();
		}
	}
	function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}
</script>
</head>

<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="85" valign="bottom">
    <?php include_once("header.php");?>
    </td>
  </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td>       
        <?php include_once("topmenu.php"); ?></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="28" align="right" valign="top" class="titlebg">
            <table width="250" border="0" align="right" cellpadding="0" cellspacing="0" bgcolor="#cccccc">
              <tr>

                <td width="10" align="left"><img src="images/loginlf.gif" width="4" height="32" /></td>
                <td width="279" align="center">
                                <div style="float:left"><a href="register.php" title="Signup">Not a Member ? Signup Here </a></div>
                <div style="float:right"><a href="login.php" title="Login"><img src="images/loginbtn.gif" alt="login" width="75" height="17" border="0" /></a></div>
                                </td>
                <td width="11" align="right"><img src="images/loginrt.gif" width="4" height="32" /></td>
              </tr>
            </table></td>

          </tr>
          <tr>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              
              <tr>
                <td align="left" valign="top">
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.box', '10px 10px 10px 10px', true);
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> Payment </td>

  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><table width="90%" border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" style="padding:15px 0 10px 0;"><h2 class="success">Thank you - your payment was processed successfully.</h2></td>
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
</table>
</td>
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