{literal}
<link href="css/style_sheet.css" type="text/css" rel="stylesheet"/>
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.desc.value == '')
	{
		alert("Enter Comments");
		return false;
	}
	else if(frm.fstatus.value == '')
	{
		alert("Select Feedback Status");
		frm.fstatus.focus();
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
	frm.desc.value = '';
	frm.fstatus.value = '';
	frm.status.value = '';
	
}
</script>
{/literal}
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="3">&nbsp;</td>
</tr> 
 <tr>
						<td align="center" class="Sub_menu" colspan="2">{$msg}</td>
					</tr> 

	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="bid" value="{$bid}" />
                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
					 
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Edit Feedback  </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                             
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td> 	
                              </tr>
                              
							  <tr>
                                <td align="right" valign="middle" class="aril">Comments :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle" class="aril"><textarea rows="5" cols="50" name="desc">{$array[0].comments}</textarea></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							   <tr>
                                <td align="right" valign="middle" class="aril">Feedback Status :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="fstatus" class="Sub_menu">
								<option value="" >Select</option>
								<option value="New" {if $array[0].feedback_status == "New"} selected{/if}>New</option>
								<option value="Read" {if $array[0].feedback_status == "Read"} selected{/if}>Read</option>
								<option value="Unread" {if $array[0].feedback_status == "Unread"} selected{/if}>Un Read</option>
								</select></td>
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
                                <td width="144" align="right" valign="middle">&nbsp;</td>
                                <td width="10" align="center" valign="middle">&nbsp;</td>
                                <td width="201" align="center" valign="middle">&nbsp;</td>
                                <td width="55" align="left" valign="middle">&nbsp;</td>
                              </tr>
							  
<!--                              <tr>
                                <td align="right" valign="middle">Approved By Admin</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
-->                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="23" align="center" valign="middle">
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Submit"  onclick="javscript:check();" /></td>
                                      </tr>
                                    </table>
                                  </td>
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