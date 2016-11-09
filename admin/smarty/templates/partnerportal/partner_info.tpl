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

function showuser(id)

{

	var op = window.open("view_partner.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=800")

	op.focus();

}

function edituser(id)

{

	var frm = document.form1;

	frm.action = "editpartner.php?pid="+id;

	frm.submit();

}

function deluser(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'partners.php';

		frm.submit();

	}

}

function changestat(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'partners.php';

	frm.submit();

}

</script>

{/literal}

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">


<!--<tr>

	<td align="left" class="aril" colspan="2">Logged In as:<span class="Sub_menu">{$session}</span></td>

</tr>

--><tr>

	<td colspan="3"></td>

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

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="2" class="stroke">

                    <tr>

                      <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Partners Info</td>
                              </tr>

                          </table></td>
                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="center" valign="middle" class="Sub_menu">User Name </td>

								<td align="center" valign="middle" class="Sub_menu">Password</td>

								<td align="center" valign="middle" class="Sub_menu">First Name</td>

								<td align="center" valign="middle" class="Sub_menu">Last Name</td>

							    <td align="center" valign="middle" class="Sub_menu">Joined Date</td>
							    <td align="center" valign="middle" class="Sub_menu">Status</td>

								<td align="center" valign="middle" class="Sub_menu">Edit Status</td>
								<td align="center" valign="middle" class="Sub_menu">View</td>

								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>

                             {section name=list loop=$array}
{if $array[list].status == 'Inactive'}
									<tr style="background-color:#eaf6ff;">
{else}
		<tr>
        {/if}								
        <td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center" height="25">{$array[list].user_name}</td>

										<td class="aril" align="center">{$array[list].password}</td>

										<td class="aril" align="center">{$array[list].first_name}</td>

										<td class="aril" align="center">{$array[list].last_name}</td>
                                        
										<td class="aril" align="center">{$array[list].join_date|date_format:"%D"}</td>
										<td class="aril" align="center">{$array[list].status}</td>

										<td class="aril" align="center"><img src="images/b_edit.png" width="20" onclick="javascript:edituser('{$array[list].id}')" style="cursor:pointer"  title="Edit Details" /></td>
										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showuser('{$array[list].id}')" style="cursor:pointer"  title="View User Details"> </td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].id}')" style="cursor:pointer" title="Delete User" /></td>
									</tr>

							 {/section}



                              

                              <tr>

                                <td align="center" valign="middle" colspan="10">{$pagination}</td>
                            </tr>
                          </table></td>
                        </tr>

                      </table></td>
                    </tr>
                  </table>

                                </form>                </td>

                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>
