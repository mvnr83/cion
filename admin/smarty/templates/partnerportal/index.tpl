<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>..:: Cion Systems Admin Panel ::..</title>

{literal}

<style type="text/css">

<!--

body {

	margin-left: 0px;

	margin-top: 0px;

	margin-right: 0px;

	margin-bottom: 0px;

}

-->

</style>
<link rel="stylesheet" href="thickbox.css" type="text/css" />
<link href="css/style_sheet.css" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-latest.js" type="text/javascript"></script>
<script src="Scripts/thickbox.js" type="text/javascript"></script>
<script src="Scripts/hideshow.js" type="text/javascript"></script>


{/literal}

</head>



<body>

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>

    <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>

            <td align="left" valign="top"><img src="images/header.gif" alt="Header" width="1000" height="132" /></td>

          </tr>

        </table></td>

      </tr>

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td colspan="2" align="left" valign="top" class="menubg">
            {if $session[0] != ''}
            <table width="250" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10" align="center">&nbsp;</td>
                <td width="50%" height="27" align="center" class="menu"><a href="index.php" >Website</a></td>
                
                <td width="10" align="center">|</td>
                <td width="115" align="center" ><a href="p_index.php" class="selected">Partner Portal</a></td>
                </tr>
            </table>{/if}	</td>
            </tr>
          <tr>
            <td colspan="2" align="left" valign="top" height="5" bgcolor="#73c6ff"></td>
            </tr>
          <tr>

            <td width="21%" align="left" valign="top" background="images/left_bg.gif">

			{if $session[0] != ''}
            <table width="212" border="0" cellpadding="0" cellspacing="0">

                <tr>

                  <td align="left" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                </tr>

				{ if $session[1] == 'Super'}


				{/if}
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Partners Info </span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="partners.php" class="Sub_menu">Partner Details</a></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="partners_emp.php" class="Sub_menu">Partner Employees</a></td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="order_request.php" class="Sub_menu">Order Request</a></td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                    
                  </table></td>
                </tr>
                

                <tr>

                  <td align="left" valign="middle">&nbsp;</td>
                  </tr>
                <tr>
                  <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Files Uploads</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="uploadto.php" class="Sub_menu">Upload Files</a></td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="user_files.php" class="Sub_menu">User Files</a></td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="partner_files.php" class="Sub_menu">Partner Files</a></td>
                      <td align="left" valign="top">&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
            </table>

			{else}

			{/if}			</td>

            <td width="100%" align="left" valign="top" height="360">{$content}</td>
            </tr>

        </table></td>

      </tr>

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>

            

            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/fut_bg.gif">

              <tr>

                <td height="39" align="center" valign="middle" class="aril" bgcolor="#D7D7D7">Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved .</td>

              </tr>

            </table></td>

          </tr>

        </table></td>

      </tr>

    </table></td>

  </tr>

</table>

</body>

</html>

