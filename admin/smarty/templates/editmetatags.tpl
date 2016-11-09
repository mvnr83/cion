{literal}

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.metatitle.value == '')

	{

		alert("Enter User Meta Title");

		frm.metatitle.focus();

		return false;

	}

	else if(frm.metadesc.value == '')

	{

		alert("Enter Meta Description");

		frm.metadesc.focus();

		return false;

	}

	else if(frm.metakeywords.value == '')

	{

		alert("Enter Meta Keywords");

		frm.metakeywords.focus();

		return false;

	}
	else

	{

		frm.act.value = 'edit';

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

<tr>

	<td align="left" class="aril">Logged In as:<span class="Sub_menu">{$session}</span></td>

	<td align="right" colspan="2"><a href="logout.php" class="Sub_menu">Log Out</a> </td>



</tr>

<tr>

	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>

</tr>

	              <tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="">

				<input name="act" type="hidden" />

				<input name="uid" type="hidden" value="{$uid}" />

                  <table width="630" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="591" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="591" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                          <tr>

                                <td height="29" align="center" valign="middle" class="wite">Edit Page Meta Tags</td>

                              </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">

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

                                <td align="right" valign="middle" class="aril"> Page Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><input name="pagename" type="text" class="Sub_menu" value="{$array[0].pagename}" readonly="readonly" maxlength="255" style="width:350px;"/></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="aril">Meta Title  :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle"><textarea name="metatitle" rows="6" class="Sub_menu" style="width:350px;">{$array[0].metatitle}</textarea></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="aril">Meta Description :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><textarea name="metadesc" rows="6" class="Sub_menu" style="width:350px;">{$array[0].metadesc}</textarea></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="aril">Meta Keywords :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><textarea name="metakeywords" rows="6" class="Sub_menu" style="width:350px;">{$array[0].metakeywords}</textarea></td>

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

                                        <td width="114" align="left" valign="top">&nbsp;</td>

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