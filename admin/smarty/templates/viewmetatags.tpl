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


function edituser(id)

{

	var frm = document.form1;

	frm.action = "editmetatags.php?uid="+id;

	frm.submit();

}

function deluser(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'viewuser.php';

		frm.submit();

	}

}

function changestat(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'viewuser.php';

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

                                <td height="29" align="center" valign="middle" class="wite">View Meta Tags Pages</td>

                              </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="left" valign="middle" class="Sub_menu">Page Name</td>

								<td align="center" valign="middle" class="Sub_menu">Edit</td>
							  </tr>

                             {section name=list loop=$array}

									<tr>

										<td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="left">{$array[list].pagename}</td>

									  <td class="aril" align="center"><img src="images/b_edit.png" width="20" onclick="javascript:edituser('{$array[list].id}')" style="cursor:hand"  title="Edit User"/></td>
									</tr>

							 {/section}



                              

                              <tr>

                                <td align="right" valign="middle" colspan="3">&nbsp;</td>
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