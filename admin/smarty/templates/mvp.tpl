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

function clear(){
	var frm = document.form1;
	frm.uname.value = '';
	frm.pwd.value = '';
	frm.fname.value = '';
	frm.lname.value = '';
	frm.email.value = '';
	frm.utype.value = '';
}

function showuser(id){
	var op = window.open("view_memdetails.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=800")
	op.focus();
}
function remind(id){
	var op = window.open("mvp_remind.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=300")
	op.focus();
}
function edituser(id){
	var frm = document.form1;
	frm.action = "edituser.php?uid="+id;
	frm.submit();
}

function deluser(id){
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this User")){
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'mvp.php';
		frm.submit();
	}
}

function changestat(id,st){
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = 'change';
	frm.action = 'memdetails.php';
	frm.submit();
}

</script>
<style>
	.strokes table{
		border-collapse:collapse;
	}
	.strokes table td{
		border: 1px solid #CCCCCC;
	}
</style>
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

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle">
                      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="strokes">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">MVP Members &nbsp; {$total_members}</td>
                            </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">

                      <tr>
                                <td colspan="10" align="right" valign="middle" ><a href="exportmvp.php"><img src="images/export.gif" width="67" height="19" border="0" /></a></td>
                              </tr>
                              <tr>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="center" valign="middle" class="Sub_menu">First Name</td>
								<td align="center" valign="middle" class="Sub_menu">Last Name</td>
								<td align="center" valign="middle" class="Sub_menu">Phone</td>
								<td align="center" valign="middle" class="Sub_menu">MVP Profile Link</td>
								<td align="center" valign="middle" class="Sub_menu">Email </td>

								<td align="center" valign="middle" class="Sub_menu">Product Request</td>

								<td align="center" valign="middle" class="Sub_menu">Date</td>
								<td align="center" valign="middle" class="Sub_menu">Remind</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>

                             {section name=list loop=$array}

									<tr>

										<td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center">{$array[list].first_name}</td>
										<td class="aril" align="center">{$array[list].last_name}</td>
										<td class="aril" align="center">{$array[list].phone}</td>
										<td align="center" class="aril">{$array[list].mvp_profile}</td>
									  <td class="aril" align="center">{$array[list].email}</td>

										<td class="aril" align="center">{$array[list].product_req}</td>

									    <td class="aril" align="center">{$array[list].dates}</td>
									    <td class="aril" align="center">
                                        
                                        {if $array[list].remind == ''}
                                  <img src="images/view_remind_gray.gif" alt=""  width="16" style="cursor:hand"  title="View User Details"/ onclick="javascript:remind('{$array[list].id}')" />
                                        {else}
                                        <img src="images/view_remind.gif" alt=""  width="16" style="cursor:hand"  title="View User Details"/ onclick="javascript:remind('{$array[list].id}')" />
                                        {/if}                                        </td>
								      <td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].id}')" style="cursor:hand" title="Delete User" /></td>
									</tr>
                                     {/section}
									<tr>
									  <td colspan="10" align="center" class="aril">{$pagination}</td>
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