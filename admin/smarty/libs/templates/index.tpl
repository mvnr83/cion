<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>..:: Login ::..</title>
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
<link href="css/style_sheet.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function checklogin()
{
	var frm = document.form1;
	if(frm.uname.value == '')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == '')
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}
	else
		return true;
}
</script>
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
            <td width="21%" align="left" valign="top"><table width="212" border="0" cellpadding="0" cellspacing="0" background="images/left_bg.gif">
                <tr>
                  <td colspan="2" align="left" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                </tr>
				 <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Change Login Details </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Change Password </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Change User Name </td>
						</tr>
                  </table></td>
                </tr>
				 <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Admin User Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Add User </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">View/Edit User </td>
						</tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Menu Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Privileges </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Welcome </td>
						</tr>
                  </table></td>
                </tr>
				<tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Awards Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Add Awards </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">View/Edit Awards </td>
						</tr>
                  </table></td>
                </tr>
				<tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Resource Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Add Resource </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">View/Edit Resource </td>
						</tr>
						<tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">File Upload </td>
						</tr>
                  </table></td>
                </tr>
				<tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Products Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Add Products </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">View/Edit Products </td>
						</tr>
                  </table></td>
                </tr>				
				<tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%" align="left" valign="top">&nbsp;</td>
                        <td width="88%" align="left" valign="top"><span class="main_manu">Customer Management </span></td>
                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>
					   <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Privileges </td>
						</tr>
						 <tr>
						  <td align="left" valign="middle">&nbsp;</td>
						  <td align="left" valign="middle" class="Sub_menu">Welcome </td>
						</tr>
                  </table></td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>
                  <td align="left" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
            </table></td>
            <td width="79%" align="left" valign="middle">{$content}</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="21%" align="left" valign="top"><table width="212" border="0" cellpadding="0" cellspacing="0" background="images/left_bg.gif">
              <tr>
                <td width="2%" align="left" valign="middle">&nbsp;</td>
                <td width="202" align="left" valign="middle">&nbsp;</td>
              </tr>
              
              <tr>
                <td align="left" valign="middle">&nbsp;</td>
                <td align="left" valign="middle">&nbsp;</td>
              </tr>
              
            </table></td>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/fut_bg.gif">
              <tr>
                <td height="39" align="center" valign="middle" class="aril">Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved .</td>
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
