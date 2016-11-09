{literal}
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.pname.value == '')
	{
		alert("Enter Product Name");
		frm.pname.focus();
		return false;
	}
	else if(frm.uname.value == '')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.nusers.value == '')
	{
		alert("Enter No of Users");
		frm.nusers.focus();
		return false;
	}
	else if(frm.nservers.value == '')
	{
		alert("Enter No of Servers");
		frm.nservers.focus();
		return false;
	}
	else if(frm.nworkstations.value == '')
	{
		alert("Enter No of Workstations");
		frm.nworkstations.focus();
		return false;
	}
	else if(frm.date.value == '')
	{
		alert("Enter Date");
		frm.date.focus();
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
	frm.pname.value = '';
	frm.uname.value = '';
	frm.nusers.value = '';
	frm.nservers.value = '';
	frm.nworkstations.value = '';
	frm.date.value = '';
	frm.status.value = '';
}
	
</script>
{/literal}
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="3">&nbsp;</td>
</tr> 
<!--<tr>
	<td align="left" class="aril" colspan="2">Logged In as:<span class="Sub_menu">{$session}</span></td>
</tr>
-->  <tr>
	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="act" />
                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
					
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Edit  Order </td>
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
                                <td align="right" valign="middle" class="aril">Product Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="pname" type="text" class="fieldwidth" value="{$pname}" readonly="true" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">User Name   :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="uname" type="text" class="fieldwidth" value="{$name}" readonly="true" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">No of Users :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="nusers" type="text" class="fieldwidth" value="{$array[0].no_of_users}" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">No of Servers   :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="nservers" type="text" value="{$array[0].no_of_servers}"  /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">No of Workstations :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="nworkstations" type="text" value="{$array[0].no_of_workstations}" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
								
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Date</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="date" type="text" value="{$array[0].date}" readonly="true" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							 <tr>
                                <td align="right" valign="middle" class="aril">Status :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="status">
								<option value="" >Select</option>
								<option value="Pending" {if $array[0].status == "Pending"} selected{/if}>Pending</option>
								<option value="Completed" {if $array[0].status == "Completed"} selected{/if}>Completed</option>
								<option value="Incompleted" {if $array[0].status == "Incompleted"} selected{/if}>Incompleted</option>
								<option value="Rejected" {if $array[0].status == "Rejected"} selected{/if}>Rejected</option>
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
                                <td height="23" align="center" valign="middle">
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="67" height="23" align="left" valign="middle"><label>
                                          <input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/>
                                        </label></td>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Cancel"  onclick="javscript:clear();" /></td>
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