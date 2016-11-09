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
		return true;
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
function showaward(id)
{
	var op = window.open("awarddetails.php?uid="+id, "mywin","menubar=0,resizable=1,width=450,height=400")
	op.focus();
}
function editaward(id)
{
	var frm = document.form1;
	frm.action = "editaward.php?uid="+id;
	frm.submit();
}
function delaward(id)
{
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this Award"))
	{
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'viewawards.php';
		frm.submit();
	}
}
function changestat(id,st)
{
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = 'change';
	frm.action = 'viewawards.php';
	frm.submit();
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
--><tr>
	<td colspan="3">&nbsp;</td>
</tr>
<tr>
	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="100%" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="uid" />
				<input type="hidden" name="st"  />
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="97%" border="0" align="center" cellpadding="0" cellspacing="0">
					  
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">View Awards </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td>
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
								<td align="center" valign="middle" class="Sub_menu">Award Name </td>
								<td align="center" valign="middle" class="Sub_menu">Created On </td>
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                             {section name=list loop=$array}
									<tr>
										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].id}" /></td>
										<td class="aril" align="center">{$smarty.section.list.rownum}</td>
										<td class="aril" align="center">{$array[list].award_name}</td>
										<td class="aril" align="center">{$array[list].created_on}</td>
										<td class="aril" align="center">{if $array[list].status == 'Active'}<a href="javascript:changestat('{$array[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>
										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showaward('{$array[list].id}')" style="cursor:hand" title="View Award Details"> / <img src="images/b_edit.png" width="20" onclick="javascript:editaward('{$array[list].id}')" style="cursor:hand" title="Edit Awards"/></td>
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delaward('{$array[list].id}')" style="cursor:hand" title="Delete Award"/></td>
									</tr>
							 {/section}

                              
                              <tr>
                                <td align="right" valign="middle" colspan="8">&nbsp;</td>
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