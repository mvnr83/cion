{literal}
<script language="javascript">

  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
</script>
{/literal}
{$msg}
<div class="login">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="35"><h2>Partner Login</h2></td>
    </tr>
    <tr>
      <td><form action="" method="post" name="form" id="form">
        <input type="hidden" name="usertype" value="employee" />
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <!-- <tr>
    <td height="36" align="left" valign="top">&nbsp;</td>
    <td class="logintitle">Partner Login</td>
    <td align="right" valign="top">&nbsp;</td>
  </tr>-->
          <tr>
            <td width="1%" align="left" valign="top">&nbsp;</td>
            <td width="98%">&nbsp;</td>
            <td width="1%" align="right" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td align="right" width="40%" height="25">Username :</td>
                  <td align="left"><input type="text" autocomplete="off" class="txtfield" name="empname"  /></td>
                </tr>
                <tr>
                  <td align="right" height="25">Password :</td>
                  <td align="left"><input type="password" class="txtfield" name="emppwd" /></td>
                </tr>
                <tr>
                  <td align="right" height="25">&nbsp;</td>
                  <td align="left">
                    <input type="image" name="submit" id="imageField" value="Submit" src="images/submitbtn.gif" />
                    </td>
                </tr>
                <tr>
                  <td align="right" height="15">&nbsp;</td>
                  <td align="left"><a href="register.php">New User SignUp</a></td>
                </tr>
                <!--<tr>
          <td align="right" height="15">&nbsp;</td>
          <td align="left"><a href="forgot.php">Forgot Password</a></td>
        </tr>-->
            </table></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="bottom">&nbsp;</td>
            <td>&nbsp;</td>
            <td align="right" valign="bottom">&nbsp;</td>
          </tr>
        </table>
      </form></td>
    </tr>
  </table>
</div>

