{literal}
<script language="javascript" type="text/javascript">
function check()
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
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
			
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle" class="hea">Log In </td><br />
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top" class="black">{$msg}</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="96%" align="left" valign="top">&nbsp;</td>
            <td width="2%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top"><form id="form1" name="form1" method="post" action="" onsubmit="javascript:return check();">
                <table width="60%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/myaccount_bg.gif" class="graystr4">
                 
                  <tr>
                    <td align="right" valign="middle" class="ver11">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="42%" height="30" align="right" valign="middle" class="ver11">User Name </td>
                    <td width="3%" align="left" valign="middle">:</td>
                    <td width="55%" align="left" valign="middle"><input name="uname" type="text" class="ver11" id="uname" /></td>
                  </tr>
                  <tr>
                    <td height="30" align="right" valign="middle" class="ver11">Password</td>
                    <td align="left" valign="middle">:</td>
                    <td align="left" valign="middle"><input name="pwd" type="password" class="ver11" id="pwd" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><input name="Submit" type="submit" class="ver11" value="LOGIN" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><a href="forgotpassword.pgp" class="ver11">Forgot your Password</a> </td>
                  </tr>
				   <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><a href="register.php" class="ver11">New User Sign Up</a> </td>
                  </tr>
				  <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
                </table>
            </form></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>