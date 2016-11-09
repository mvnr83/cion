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
    <td height="19%" align="center" valign="top" class="headbg">
    <table width="100%" height="124" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5%">&nbsp;</td>
        <td width="29%" align="center" valign="top" class="logobg"><div style="padding-top:10px;"><a href="{if $partner[0].company_url == ""}
        http://www.cionsystems.com
        {else}
        {$partner[0].company_url}
        {/if}" target="_blank">
        <img src="{if $partner[0].company_logo == ""}
        ../partners/images/company_logo/default_logo.jpg
        {else}
        ../partners/{$partner[0].company_logo}
        {/if}
        "  border="0" alt="{$partner[0].company}" /></a></div></td>
        <td width="61%" align="left" valign="bottom"><div class="logged">Logged In as:&nbsp;{$employee[0].first_name}</div></td>
        <td width="5%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="73%" valign="top" align="center">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15%" bgcolor="#f2f2f2" valign="top" align="center" style="border-right:1px solid #999999">{$sidenavigation}</td>
        <td width="85%" align="left" valign="top">{$content}</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="10%" class="footer">Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved .</td>
  </tr>
</table>
</body>
</html>
