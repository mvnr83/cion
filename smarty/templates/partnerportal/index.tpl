<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{if $title_dispaly eq 'display'}
<title>::Partner Portal::</title>
{else}
{$productname}
{/if}

<link rel="stylesheet" href="css/style.css" media="all" />
<link rel="stylesheet" href="css/tabcontent.css" media="all" />
<script src="Scripts/validator.js" type="text/javascript"></script>
<script src="Scripts/roundies.js" type="text/javascript"></script>
<script type="text/javascript" src="Scripts/tabcontent.js"></script>
<script src="Scripts/responsexml.js" type="text/javascript"></script>
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  
  DD_roundies.addRule('.graystr4', '10px 10px 10px 10px', true);
 
</script>
</head>

<body>

<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="11%" align="center" valign="top" class="headbg"><table width="100%" height="80" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="1%">&nbsp;</td>
        <td width="28%" align="center" valign="top" class="logobg"><div style="padding-top:10px;"><a href="http://www.cionsystems.com" target="_blank"><img src="images/company_logo/default_logo.gif" width="213" height="47" border="0" /></a></div></td>
        <td align="right" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="9%">&nbsp;</td>
            <td width="64%">&nbsp;</td>
            <td width="27%"><h1>PartnerPortal</h1></td>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="82%" valign="middle" align="center"> <table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">{$content}</td>
  </tr>
</table></td>
  </tr>
  <tr>
    <td height="5%" class="footer">Copyright &copy; 2015 CionSystems, Inc. All Rights Reserved .</td>
  </tr>
</table>
</body>
</html>
