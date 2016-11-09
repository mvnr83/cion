<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Partner Portal::</title>
<link rel="stylesheet" href="css/style.css" media="all" />
<link rel="stylesheet" href="css/thickbox.css" media="all" />
<script src="Scripts/validator.js" type="text/javascript"></script>
<script src="Scripts/roundies.js" type="text/javascript"></script>
<script src="Scripts/jquery-latest.js" type="text/javascript"></script>
<script src="Scripts/thickbox.js" type="text/javascript"></script>
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
 DD_roundies.addRule('.middlecontent', '5px 5px 5px 5px', true);	 
</script>
 
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="11%" align="center" valign="top" class="headbg"><table width="100%" height="80" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="1%">&nbsp;</td>
        <td width="28%" align="center" valign="top" class="logobg"><div style="padding-top:10px;"><a href="{if $partner[0].company_url == ""}
        http://www.cionsystems.com
        {else}
        {$partner[0].company_url}
        {/if}" target="_blank"> <img src="{if $partner[0].company_logo == ""}
        images/company_logo/default_logo.jpg
        {else}
        {$partner[0].company_logo}
        {/if}
        "  border="0" alt="{$partner[0].company}" /></a></div></td>
        <td align="right" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="9%">&nbsp;</td>
            <td width="64%" align="left"><div class="logged">Logged In as:&nbsp;{$employee[0].first_name}</div></td>
            <td width="27%"><h1>PartnerPortal</h1></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="82%" valign="middle" align="center">
      <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="18%" valign="top" bgcolor="#eeeeee">{$sidenavigation}</td>
          <td width="82%" align="left" valign="top">{$content}</td>
        </tr>
      </table>    </td>
  </tr>
  <tr>
    <td height="5%" class="footer">Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved .</td>
  </tr>
</table>
</body>
</html>
