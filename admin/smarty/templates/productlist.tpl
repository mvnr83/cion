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

	var op = window.open("view_memdetails.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=800")

	op.focus();

}

function edituser(id)

{

	var frm = document.form1;

	frm.action = "edituser.php?uid="+id;

	frm.submit();

}

function deluser(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'memdetails.php';

		frm.submit();

	}

}

function changestat(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'memdetails.php';

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

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="3" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle">
                      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>
                          <td align="center" height="30" valign="middle" class="Sub_menu"><strong>No of Downloads : {$total}</strong></td>
                        </tr>
                        <tr>

                          <td align="center" height="30" valign="middle" background="images/login_bg.gif" class="wite"> {$pname[0].product_name}<!--<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> </td>

                              </tr>

                          </table>-->
                          <!--{section name = nodl loop=$pdl}{$pdl[nodl].sample_download}{/section}--></td>
                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
  <td align="center" class="Sub_menu">S.No</td>
    <td align="center" class="Sub_menu">Username</td>
    <td align="center" class="Sub_menu">Email</td>
    <td align="center" class="Sub_menu">Phone No.</td>
    <td align="center" class="Sub_menu">Company Name</td>
    <td align="center" class="Sub_menu">No.of Downloads</td>
    <td align="center" class="Sub_menu">Last Downloaded Date</td>
  </tr>
  {section name=user loop=$udl}
   <tr>
   <td align="center" class="aril">{$smarty.section.user.rownum}</td>
    <td align="center" class="aril"><a href="javascript:showuser('{$udl[user].id}')">{$udl[user].user_name}</a></td>
    <td align="center" class="aril">{$udl[user].email}</td>
    <td align="center" class="aril">{$udl[user].phone_no}</td>
    <td align="center" class="aril">{$udl[user].company}</td>
    <td align="center" class="aril">{$pdl[user].sample_download}</td>
    <td align="center" class="aril">{$pdl[user].sample_download_date|date_format:"%d-%m-%Y"}</td>
  </tr>
  {/section}
</table>

                          <!--<table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">

                              <tr>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="center" valign="middle" class="Sub_menu">User Name </td>

								<td align="center" valign="middle" class="Sub_menu">Password</td>

								<td align="center" valign="middle" class="Sub_menu">First Name</td>

								<td align="center" valign="middle" class="Sub_menu">Last Name</td>

							    <td align="center" valign="middle" class="Sub_menu">Joined Date</td>
							    <td align="center" valign="middle" class="Sub_menu">Status</td>

								<td align="center" valign="middle" class="Sub_menu">View</td>

								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>

                             {section name=list loop=$array}

									<tr>

										<td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center">{$array[list].user_name}</td>

										<td class="aril" align="center">{$array[list].password}</td>

										<td class="aril" align="center">{$array[list].first_name}</td>

										<td class="aril" align="center">{$array[list].last_name}</td>
                                        
										<td class="aril" align="center">{$array[list].join_date|date_format:"%D"}</td>
										<td class="aril" align="center">{if $array[list].status == 'Active'}<a href="javascript:changestat('{$array[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>

										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showuser('{$array[list].id}')" style="cursor:hand"  title="View User Details"> </td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].id}')" style="cursor:hand" title="Delete User" /></td>
									</tr>

							 {/section}



                              

                              <tr>

                                <td align="right" valign="middle" colspan="9">&nbsp;</td>
                              </tr>

                             

                          </table>--></td>
                        </tr>
                      </table></td>

                    </tr>

                  </table>

                                </form>

                </td>

                <td width="129" align="left" valign="top">&nbsp;</td>

              </tr>

            </table>