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

function deluser(buy_id)

{

	var frm = document.buyform;

	if(confirm("Are you sure,Do you want to delete this User"))

	{
		frm.act.value = 'del';

		frm.uid.value = buy_id;
		frm.action = 'buyusers.php';

		frm.submit();

	}

}

function changestat(buy_id,st)

{

	var frm = document.buyform;

	frm.uid.value = buy_id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'buyusers.php';

	frm.submit();

}
function showbuyuser(buy_id)

{

	var op = window.open("orderinfodetails.php?uid="+buy_id, "mywin","menubar=0,resizable=1,width=650,height=500")

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

                <td width="100%" align="left" valign="top"><form id="buyform" name="buyform" method="post" action="">

				<input type="hidden" name="act" />

				<input type="hidden" name="uid" />

				<input type="hidden" name="st"  />

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Orders
                                Management&nbsp; (Total Orders : {$totalCount})</td>
                            </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">

                              <tr>
                                <td colspan="9" align="right" valign="middle" >&nbsp;</td>
                              </tr>
                              <tr>

                                <td width="9%" align="center" valign="middle" class="Sub_menu">Order
                                No </td>

								<td width="12%" align="center" valign="middle" class="Sub_menu">Date</td>
								<td width="8%" align="center" valign="middle" class="Sub_menu">Amount</td>
								<td width="12%" align="center" valign="middle" class="Sub_menu">Name / Company /
								  Phone </td>
								<td width="1%" align="center" valign="middle" class="Sub_menu">&nbsp;</td>
								<td width="20%" align="center" valign="middle" class="Sub_menu">User Email</td>							
								<td width="24%" align="center" valign="middle" class="Sub_menu">Status</td>
                                <td width="2%" align="center" valign="middle" class="Sub_menu">View</td>                                
								<td width="12%" align="center" valign="middle" class="Sub_menu">Transaction Id</td>
                              </tr>

                             {section name=list loop=$array}

									<tr>

										<td class="aril" align="center">{$array[list].order_id}</td>

										<td align="center" class="aril">{$array[list].payment_date}</td>
										<td align="center" class="aril">${$array[list].amount}</td>
										<td class="aril" align="center">{$array[list].billing_name} <br />{$array[list].billing_company}<br />{$array[list].billing_phone}</td>
										<td class="aril" align="center"></td>										
										<!-- <td class="aril" align="center">{$array[list].billing_email}</td> -->
                                                                                <td class="aril" align="center">{$array[list].email}</td>
										<td class="aril" align="center">{if $array[list].transaction_pending == 'Completed'}Completed{else}Pending{/if}</td>
                                        <td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showbuyuser('{$array[list].order_id}')" style="cursor:pointer;" title="View Order Info"></td>
									  <td class="aril" align="center">{$array[list].transaction_id}</td>
									</tr>
                                     {/section}
									<tr>
									  <td colspan="8" align="center" class="aril">{$pagination}</td>
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