<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="700" border="0" cellspacing="5" cellpadding="0">
<tr>
    <td colspan="2" align="center"><h2>Status : {$order[0].status}</h2></td>
  </tr>
  <tr>
    <td valign="top" style="border:1px solid #d4ddec" width="400"><table width="100%" border="0" cellspacing="5" cellpadding="0" >
      <tr>
        <td height="30" colspan="2" bgcolor="#d4ddec" style="padding-left:10px;"><strong>Shipping Details</strong></td>
        </tr>
      <tr>
        <td width="50%" align="right"><strong>Company Name :</strong></td>
        <td width="50%" align="left">{$shipadd[0].company_name}</td>
      </tr>
      <tr>
        <td align="right"><strong>Customer Name :</strong></td>
        <td align="left">{$shipadd[0].customer_name}</td>
      </tr>
      <tr>
        <td align="right"><strong>Address :</strong></td>
        <td align="left">{$shipadd[0].address}</td>
      </tr>
      <tr>
        <td align="right"><strong>Telephone :</strong></td>
        <td align="left">{$shipadd[0].telephone}</td>
      </tr>
      <tr>
        <td align="right"><strong>Initials :</strong></td>
        <td align="left">{$shipadd[0].initials}</td>
      </tr>
      <tr>
        <td align="right" valign="top"><strong>Notes :</strong></td>
        <td align="left"><p align="justify">{$shipadd[0].notes}</p></td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td align="left">&nbsp;</td>
      </tr>
    </table></td>
    <td valign="top" width="300" style="border:1px solid #d4ddec"><table width="100%" border="0" cellspacing="5" cellpadding="0">
      <tr>
        <td height="30" colspan="2" bgcolor="#d4ddec" style="padding-left:10px;"><strong>Product Details</strong></td>
        </tr>
      <tr>
        <td width="70%" align="center" bgcolor="#e8e8e8">Product</td>
        <td height="25" align="center" bgcolor="#e8e8e8">No.of License</td>
      </tr>
      {section name=plist loop=$order}
      <tr>
        <td align="left" style="padding-left:5px;">{$proname[plist].product_name}</td>
        <td align="center"><strong>{$order[plist].no_of_license}</strong></td>
      </tr>
		{/section}
    </table></td>
  </tr>
  
</table>
</body>
</html>
