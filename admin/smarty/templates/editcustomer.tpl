{literal}
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.cname.value == '')
	{
		alert("Enter Customer Name");
		frm.cname.focus();
		return false;
	}
	/*else if(frm.url.value == '')
	{
		alert("Enter Company URL");
		frm.url.focus();
		return false;
	}*/
	else if(frm.im1.src == '')
	{
		alert("Upload Company Logo");
		frm.img.focus();
		return false;
	}
	else if(frm.status.value == '')
	{
		alert("Select Status");
		frm.status.focus();
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

<!--<tr>

	<td align="left" class="aril" colspan="3">Logged In as:<span class="Sub_menu">{$session}</span></td>

</tr>-->

<tr>

	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>

</tr>

	              <tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">

				<input name="act" type="hidden" />

				<input name="uid" type="hidden" value="{$uid}" />

                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Edit Customer </td>

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

                                <td align="right" valign="middle" class="aril">Company Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><input name="cname" type="text" class="Sub_menu" value="{$array[0].company_name}"/></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="aril">Company URL  :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle"><input name="url" type="text" class="Sub_menu" value="{$array[0].company_url}"/></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							 <tr>

                                <td align="right" valign="middle" class="aril">Status :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><select name="status" class="Sub_menu">

								<option value="" >Select</option>

								<option value="Active" {if $array[0].status == "Active"} selected{/if}>Active</option>

								<option value="Inactive" {if $array[0].status == "Inactive"} selected{/if}>Inactive</option>

								</select></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="aril">Company Logo  :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle"><img src="../company_logo/{$array[0].company_logo}" name="im1" /><br />

								<input name="img" type="file" value="{$array[0].image_path}" /></td>

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

                                        <td width="114" align="left" valign="top">
                                            <!-- <input name="submit2" type="submit" class="formbutton" value="Cancel"  onclick="javscript:clear();" /> -->
                                            <input name="submit2" type="button" class="formbutton" value="Cancel"  onclick="javscript:window.location.href='viewcustomers.php';" />
                                        </td>

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