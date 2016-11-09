{literal}

<script language="javascript" type="text/javascript">

function edituser(id)

{

	var frm = document.form1;

	frm.action = "editorder.php?uid="+id;

	frm.submit();

}

function deluser(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'order_request.php';

		frm.submit();

	}

}



</script>

{/literal}

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">


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

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="2" class="stroke">

                    <tr>

                      <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Order Request </td>
                            </tr>

                          </table></td>
                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

                                <th align="center" valign="middle" class="Sub_menu">S.No </th>

								<th align="center" valign="middle" class="Sub_menu">Partner Name</th>
								<th align="center" valign="middle" class="Sub_menu">Employee Name</th>

								<th align="center" valign="middle" class="Sub_menu">Order Code</th>

								<th align="center" valign="middle" class="Sub_menu">Date</th>

								<th align="center" valign="middle" class="Sub_menu">Status</th>
								<th align="center" valign="middle" class="Sub_menu">Edit</th>

								<th align="center" valign="middle" class="Sub_menu">Delete</th>
                              </tr>

                             {section name=list loop=$array}
{if $array[list].status == 'Inactive'}
							<tr>
        {/if}								
        <td class="aril" align="center">{$smarty.section.list.rownum}</td>

										<td class="aril" align="center">{$comp[list].company}</td>
										<td class="aril" align="center" height="25">{$emp[list].username}</td>

										<td class="aril" align="center">{$array[list].Req_OC}</td>

							  <td class="aril" align="center">{$array[list].date|date_format:"%d-%m-%Y"}</td>

							  <td class="aril" align="center">{$order[list].status}</td>
							  <td class="aril" align="center"><img src="images/b_edit.png" width="20" onclick="javascript:edituser('{$array[list].Req_OC}')" style="cursor:hand"  title="View User Details"> </td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].Req_OC}')" style="cursor:hand" title="Delete User" /></td>
									</tr>

							 {/section}



                              

                              <tr>

                                <td colspan="8" align="center" valign="middle">{$pagination}</td>
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
