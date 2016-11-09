<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="Active Directory Solutions from CionSystems- full product listing">
<meta name="keywords" content="Active Directory, Group Policy Tools, GPO tools, AD tools, active directory management, group policy management tools, admin tools, active directory reports, windows 2003, windows 2008, password management">
<title>All Products | CionSystems</title>
<link rel="shortcut icon" href="fav.ico" />
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.greybox', '10px 0px 10px 0px', true);

 
</script>
</head>

<body >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none; " title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Products</span></h2></td>
  </tr>
  <tr>
    <td align="center"><table width="80%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="20">&nbsp;</td>
        </tr>
        {section name=cust loop=$arr_products}
        <tr>
          <td><div class="greybox">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="40" colspan="2" align="left"><h3>{$arr_products[cust].product_name}</h3></td>
                </tr>
                <tr>
                  <td width="15%" align="center" style="border-right:1px solid #f5f5f5;"><img src="product_images/{$arr_products[cust].product_image}" alt="{$arr_products[cust].product_name}" border="0" title="{$arr_products[cust].product_name}"/></td>
                  <td width="85%" valign="top"><div align="justify" style="padding:10px;">{$arr_products[cust].short_description}<br />
                    </div></td>
                </tr>
                <tr>
                  <td colspan="2" height="25" align="right" class="olink"><a href="{$arr_products[cust].html_file_name}">&raquo; More</a></td>
                </tr>
              </table>
            </div></td>
        </tr>
        {if !$smarty.section.cust.last}
        <tr>
          <td align="left" valign="top">&nbsp;</td>
        </tr>
        {/if}
        {/section}
        
         <tr>
          <td align="left" valign="top">&nbsp;</td>
         </tr>
        
         <tr>
          <td><div class="greybox">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="40" colspan="2" align="left">
                  	<div style="float:left"><h3>AD Diagram</h3></div> 
                    <div style="float:left; color:#F60; font-size:13px; font-weight:bold; margin-top:5px">&nbsp; &nbsp;Free</div>
                    <div style="clear:both"></div>
                  </td>
                </tr>
                <tr>
                  <td width="15%" align="center" style="border-right:1px solid #f5f5f5;"><img src="product_images/ad_diagram.jpg" alt="AD Diagram" border="0" title="AD Diagram" height="90px"/></td>
                  <td width="85%" valign="top">
                  	<div align="justify" style="padding:10px;">
                  		AD Diagram reads an Active Directory configuration using LDAP, and then automatically generates a Visio diagram of your Active Directory. The diagramms may include domains, sites, servers, organizational units, groups and Users.
						With the AD Diagram  tool, you can also draw partial Information from your Active Directory, like only one Domain or one site. The objects are linked together, and arranged in a reasonable layout that you can later interactively work with the objects in Microsoft Office Visio.
                        <br />
                    </div>
                    </td>
                </tr>
                <tr>
                  <td colspan="2" height="25" align="right" class="olink"><a href="http://www.cionsystems.com/downloadADDiagram.php">&raquo; Download</a></td>
                </tr>
              </table>
            </div></td>
        </tr>
        
      </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
