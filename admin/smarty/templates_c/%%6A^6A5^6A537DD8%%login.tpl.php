<?php /* Smarty version 2.6.5-dev, created on 2016-12-23 17:46:14
         compiled from login.tpl */ ?>
<?php echo '

<script language="javascript" type="text/javascript">

function checklogin()

{

	var frm = document.form1;

	if(frm.uname.value == \'\')

	{

		alert("Enter User Name");

		frm.uname.focus();

		return false;

	}

	else if(frm.pwd.value == \'\')

	{

		alert("Enter Password");

		frm.pwd.focus();

		return false;

	}

	else

		{

			frm.action = "index.php";

		

		}

}

function cancel()

{

	var frm = document.form1;

	frm.uname.value = \'\';

	frm.pwd.value = \'\';

}

</script>

'; ?>


<table width="100%" height="400" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="427" align="center" valign="middle"><form id="form1" name="form1" method="post" action="">

                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">

					  <tr>

						<td align="center" class="Sub_menu"><?php echo $this->_tpl_vars['array']; ?>
</td>

					</tr>

                        <tr>

                          <td align="left" valign="top"><table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Login</td>

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

                                          <input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return checklogin();"  />

                                        </label></td>

                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Cancel" onclick="javascript:cancel();" /></td>

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