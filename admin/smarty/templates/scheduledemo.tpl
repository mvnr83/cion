{literal}

<script language="javascript" type="text/javascript">


function sentmail(id){
	var op = window.open("sentamail.php?demoid="+id, "mywin","menubar=0,resizable=1,width=480,height=350")
	op.focus();
}

function mail(id){
	var op = window.open("sentamail.php?demoid="+id, "mywin","menubar=0,resizable=1,width=480,height=400")
	op.focus();
}

function remind(id){
	var op = window.open("demo_remind.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=300")
	op.focus();
}

function deluser(id){
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this User"))	{
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'scheduledemo.php';
		frm.submit();
	}
}

function changestat(id,st){
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = 'change';
	frm.action = 'scheduledemo.php';
	frm.submit();
}

function mulmail(id){
var frm = document.form1;
		frm.action = 'multimail.php';
		frm.mail.value = mail;
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
                <input type="hidden" name="mail"  />

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="strokes">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Demo Requested Members &nbsp; {$total_members}</td>
                              </tr>

                          </table></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">

                              <tr>
                                <td colspan="11" align="right" valign="middle" ><a href="javascript:void(0);" onclick="javascript:mulmail()">
                                  
                                <img src="images/multimail.gif" width="129" height="19" border="0" /></a> | <a href="exportdemo.php"><img src="images/export.gif" width="67" height="19" border="0" /></a></td>
                            </tr>
                              <tr>

                                <td align="center" valign="middle" class="Sub_menu">S.No </td>

								<td align="center" valign="middle" class="Sub_menu">Product</td>
								<td align="center" valign="middle" class="Sub_menu">Name </td>

								<td align="center" valign="middle" class="Sub_menu">Phone</td>
								<td align="center" valign="middle" class="Sub_menu">Email</td>

								<td align="center" valign="middle" class="Sub_menu">Company</td>
								<td align="center" valign="middle" class="Sub_menu">Country</td>
								<td align="center" valign="middle" class="Sub_menu">MailSent</td>
								<td align="center" valign="middle" class="Sub_menu">Date</td>
								<td align="center" valign="middle" class="Sub_menu">Remind</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>

                             {section name=list loop=$array}

									<tr>

										<td class="aril" align="center">{$smarty.section.list.rownum} : <input type="checkbox" name="checkbox[]" id="checkbox[]" value="{$smarty.section.list.index}" /><input name="id[]" type="hidden" value="{$array[list].email}" /></td>

										<td class="aril" align="center">{$array[list].product}</td>
										<td class="aril" align="center">{$array[list].name}</td>

										<td class="aril" align="center">{$array[list].phone}</td>
										<td class="aril" align="center"><a href="javascript:void(0);" onclick="javascript:sentmail('{$array[list].demo_id}')">{$array[list].email}</a></td>

									    <td class="aril" align="center">{$array[list].company}</td>
								        <td class="aril" align="center">{$array[list].country}</td>
								        <td class="aril" align="center">{$array[list].mailsent}
                                        <!--{if $array[list].mailsent == 'Sent'}<a href="javascript:changestat('{$array[list].demo_id}','NotSent');" class="Sub_menu">Sent</a>{else}<a href="javascript:changestat('{$array[list].demo_id}','Sent');" class="Sub_menu">NotSent</a>{/if}-->                                        </td>
							            <td class="aril" align="center">{$array[list].dates} </td>
							            <td class="aril" align="center">
                                        {if $array[list].remind == ''} 
                                        <img src="images/view_remind_gray.gif" alt=""  width="16" style="cursor:hand"  title="View User Details"/ onclick="javascript:remind('{$array[list].demo_id}')" /> 
                                        {else} 
                                        <img src="images/view_remind.gif" alt=""  width="16" style="cursor:hand"  title="View User Details"/ onclick="javascript:remind('{$array[list].demo_id}')" /> 
                                        {/if}                                        </td>
						              <td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].demo_id}')" style="cursor:hand" title="Delete User" /></td>
									</tr>
                                     {/section}
									<tr>
									  <td colspan="11" align="center" class="aril">{$pagination}</td>
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