{literal}
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.title.value == '')
	{
		alert("Enter Resource Title");
		frm.title.focus();
		return false;
	}
	else if(frm.path.value == '')
	{
		alert("Enter Resource Path");
		frm.path.focus();
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
		if(frm.path.value != '')
		{
			var file = frm.path.value;
			var ext = file.split('.');
			if(ext[1] == 'doc' || ext[1] == 'pdf')
			{
				frm.act.value = 'edit';
				return true;
			}
			else
			{
				alert("Invalid File Format");
				return false;
			}
		}
	}
}

function clear()
{
	var frm = document.form1;
	frm.title.value = '';
	frm.path.value = '';
	frm.status.value = '';
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
                          <td align="left" valign="top"><table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Edit Resource </td>
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
                                <td align="right" valign="middle" class="aril">Select Product :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">
								<select name="product_code" id="product_code">
								<option value="">----Select----</option>
								{section name=cust loop=$products}
								<option value="{$products[cust].product_code}" {if $products[cust].product_code eq $array[0].product_code}selected{/if}>{$products[cust].product_name}</option>
								{/section}
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td> 	
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">Resource Title  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle">{$array[0].title}</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">Resource Path  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="path" type="file" class="Sub_menu" value="{$array[0].resource_path}"/></td>
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
                                        <td width="114" align="left" valign="top"><input name="submit2" type="reset" class="formbutton" value="Cancel"  onclick="javscript:clear();" /></td>
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