{literal}

<script language="javascript" type="text/javascript">

/*function check()

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

*/function showfeedback(id)

{

	var op = window.open("feedbackdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=750,height=700")

	op.focus();

}

function editfeedback(id)

{

	var frm = document.form1;

	frm.action = "editfeedback.php?uid="+id;

	frm.submit();

}

function delfeedback(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this Feedback"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'viewfeedback.php';

		frm.submit();

	}

}

function changestat(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'viewfeedback.php';

	frm.submit();

}

function feedchange(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'feedchange';

	frm.action = 'viewfeedback.php';

	frm.submit();
	
	var op = window.open("feedbackdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=750,height=700")

	op.focus();

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

                                <td height="29" align="center" valign="middle" class="wite">View Feedbacks </td>

                              </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

							  	<td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="center" valign="middle" class="Sub_menu">User</td>

								<td align="center" valign="middle" class="Sub_menu">Product</td>

								<td align="center" valign="middle" class="Sub_menu">Comment</td>

								<td align="center" valign="middle" class="Sub_menu">Feedback Status</td>

								<td align="center" valign="middle" class="Sub_menu">Status</td>

								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>

								<td align="center" valign="middle" class="Sub_menu">Delete</td>

                              </tr>

                             {section name=list loop=$array}
{if $array[list].feedback_status == 'New'}
									<tr>

										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].id}" /></td>

										<td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center"><a href="javascript:showfeedback('{$array[list].id}')">{$uname[list]}</a></td>

										<td class="aril" align="center">{$product[list]}</td>

										<td class="aril" align="center">{$array[list].comments|truncate:30}</td>

										<td class="aril" align="center"><!--{$array[list].feedback_status}-->
                                        {if $array[list].feedback_status == 'New'}<a href="javascript:feedchange('{$array[list].id}','Read');" class="Sub_menu">New</a>{else}Read{/if}
                                        </td>

										<td class="aril" align="center">{if $array[list].status == 'Active'}<a href="javascript:changestat('{$array[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>

										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showfeedback('{$array[list].id}')" style="cursor:hand" alt="View Feedback"> / <img src="images/b_edit.png" width="20" onclick="javascript:editfeedback('{$array[list].id}')" style="cursor:hand"  title="Edit Feedback"/></td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delfeedback('{$array[list].id}')" style="cursor:hand"  title="Delete Feedback" /></td>

									</tr>
                                    {else}
                                    <tr bgcolor="#f0f0f0">

										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].id}" /></td>

										<td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center"><a href="javascript:showfeedback('{$array[list].id}')">{$uname[list]}</a></td>

										<td class="aril" align="center">{$product[list]}</td>

										<td class="aril" align="center">{$array[list].comments|truncate:30}</td>

										<td class="aril" align="center"><!--{$array[list].feedback_status}-->
                                        {if $array[list].feedback_status == 'New'}<a href="javascript:feedchange('{$array[list].id}','Read');" class="Sub_menu">New</a>{else}Read{/if}
                                        </td>

										<td class="aril" align="center">{if $array[list].status == 'Active'}<a href="javascript:changestat('{$array[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>

										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showfeedback('{$array[list].id}')" style="cursor:hand" alt="View Feedback"> / <img src="images/b_edit.png" width="20" onclick="javascript:editfeedback('{$array[list].id}')" style="cursor:hand"  title="Edit Feedback"/></td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delfeedback('{$array[list].id}')" style="cursor:hand"  title="Delete Feedback" /></td>

									</tr>
								{/if}
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