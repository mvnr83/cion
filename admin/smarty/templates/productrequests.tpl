{literal}
<script language="javascript" type="text/javascript">
function showproductreq(id)
{
	var op = window.open("productrequestdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=650,height=500")
	op.focus();
}
function editproductreq(id)
{
	var frm = document.form1;
	frm.action = "editproductrequest.php?uid="+id;
	frm.submit();
}
function delproductreq(id)
{
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this Product"))
	{
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'productrequests.php';
		frm.submit();
	}
}
function changestat(id,st)
{
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = 'change';
	frm.action = 'viewproducts.php';
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
                                <td height="29" align="center" valign="middle" class="wite">Order Requests </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td>
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
								<td align="center" valign="middle" class="Sub_menu">User </td>
								<td align="center" valign="middle" class="Sub_menu">Product Name </td>
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                             {section name=list loop=$array}
									<tr>
										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].id}" /></td>
										<td class="aril" align="center">{$smarty.section.list.rownum}</td>
										<td class="aril" align="center">{$name[list]}</td>
										<td class="aril" align="center">{$pname[list]}</td>
										<td class="aril" align="center">{$array[list].status}</td>
										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showproductreq('{$array[list].id}')" style="cursor:hand" title="View Product Request"> / <img src="images/b_edit.png" width="20" onclick="javascript:editproductreq('{$array[list].id}')" style="cursor:hand"  title="Edit Product Request"/></td>
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delproductreq('{$array[list].id}')" style="cursor:hand" title="Delete Product Request" /></td>
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