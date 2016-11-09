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
	else if(frm.fname.value == '')
	{
		alert("Enter First Name");
		frm.fname.focus();
		return false;
	}
	else if(frm.lname.value == '')
	{
		alert("Enter Last Name");
		frm.lname.focus();
		return false;
	}
	else if(frm.email.value == '')
	{
		alert("Enter Email");
		frm.email.focus();
		return false;
	}
	else if(frm.utype.value == '')
	{
		alert("Select User Type");
		frm.utype.focus();
		return false;
	}
	else
	{
		frm.act.value = 'add';
		return true;
	}
}
function clear()
{
	var frm = document.form1;
	frm.uname.value = '';
	frm.pwd.value = '';
	frm.fname.value = '';
	frm.lname.value = '';
	frm.email.value = '';
	frm.utype.value = '';
}
</script>
{/literal}
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="3">&nbsp;</td>
</tr> 
<!--<tr>
	<td align="left" class="aril" colspan="3">Logged In as:<span class="Sub_menu">{$session}</span></td>
</tr>-->
  <tr>
	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
					
                        <tr>
                          <td align="left" valign="top"><table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Add User </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="410" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="144" align="right" valign="middle">&nbsp;</td>
                                <td width="10" align="center" valign="middle">&nbsp;</td>
                                <td width="201" align="center" valign="middle">&nbsp;</td>
                                <td width="55" align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td> 	
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">User Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="uname" type="text" class="fieldwidth" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">Password :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="pwd" type="password" class="fieldwidth" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">First Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="fname" type="text" class="fieldwidth" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Last Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="lname" type="text" class="fieldwidth" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Email :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="email" type="text" class="fieldwidth" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">User Type :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="utype">
								<option value="">Select</option>
								<option value="admin">Admin</option>
								<option value="Super">Super</option>
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="23" align="center" valign="middle"><a href="#"></a><a href="#"></a>
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="67" height="23" align="left" valign="middle"><label>
                                          <input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/>
                                        </label></td>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Cancel"  onclick="javscript:clear();" /></td>
                                      </tr>
                                    </table>
                                  <a href="#"></a></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
                                </form>
                </td>
                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>