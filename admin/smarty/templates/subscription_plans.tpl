{literal}
<script language="javascript" type="text/javascript">

function showproduct(id)
{
	var op = window.open("productdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=650,height=500")
	op.focus();
}
function editproduct(id,pid)
{
	var frm = document.form1;
	frm.action = "edit_subscription_plan.php?sub_id="+id+'&product_id='+pid;
	frm.submit();
}
function delproduct(id)
{
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this plan"))
	{
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'subscription_plans.php?product_id='+document.getElementById('product_id').value;
		frm.submit();
	}
}
function changestat(id,st)
{
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = 'change';
	frm.action = 'subscription_plans.php?product_id='+document.getElementById('product_id').value;
	frm.submit();
}
function fnOrder(id,or_id)
{
	var frm = document.form1;
	frm.order_hid.value = id;
	frm.ordder.value = or_id;
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
	<td align="right" class="Sub_menu" colspan="3"><a href="add_subscription_plan.php?product_id={$product_id}">Add Product Plan</a></td>
</tr>
<tr>
	<td colspan="3">&nbsp;</td>
</tr>

	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="100%" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="uid" />
				<input type="hidden" name="st"  />
                                <input type="hidden" name="product_id" id="product_id" value="{$product_id}"  />
				<input type="hidden" name="order_hid" id="order_hid" value="" />
				<input type="hidden" name="ordder" id="ordder" value="" />
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="97%" border="0" align="center" cellpadding="0" cellspacing="0">
					  
                        <tr>
                          <td align="left" valign="top">
                              <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Subscription plans of {$product_name} </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<!-- <td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td> -->
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
                                                                <td align="center" valign="middle" class="Sub_menu">Add-On Name</td>
								<td align="center" valign="middle" class="Sub_menu">Plan name </td>
								<td align="center" valign="middle" class="Sub_menu">Full / Trail</td>
                                                                <td align="center" valign="middle" class="Sub_menu">Price</td>
                                                                <td align="center" valign="middle" class="Sub_menu">Add-On</td>
								
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                              {if $count gt 0}
                             {section name=list loop=$array}
									<tr>
										<!-- <td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].sub_id}" /></td> -->
										<td class="aril" align="center">{$smarty.section.list.rownum}</td>
                                                                                <td class="aril" align="center">{if $array[list].addon_name eq ''}{$product_name}{else}{$array[list].addon_name}{/if}</td>
                                                                                
										<td class="aril" align="center">{$array[list].plan_name}</td>
										<td class="aril" align="center">{if $array[list].plan_type eq 1}Full{else}Trail{/if}</td>
										<td class="aril" align="center">{if $array[list].price_type eq 1} Request Quote{else}{$array[list].price}{/if}</td>
                                                                                <td class="aril" align="center">{if $array[list].is_addon == '1'}Yes{else}No{/if}</td>
										<td class="aril" align="center">{if $array[list].status == '1'}<a href="javascript:changestat('{$array[list].sub_id}','0');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].sub_id}','1');" class="Sub_menu">Make Active</a>{/if}</td>
                                                                                <td class="aril" align="center">
                                                                                     <img src="images/b_edit.png" width="20" onclick="javascript:editproduct('{$array[list].sub_id}','{$product_id}')" style="cursor:pointer"  title="Edit Plan"/> </td>
                                                                                
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delproduct('{$array[list].sub_id}')" style="cursor:hand" title="Delete Plan" /></td>
									</tr>
							 {/section}
                                                         {else}
                                                             <tr><td colspan="8" align="center">No plans found. <a href="add_subscription_plan.php?product_id={$product_id}">Click here</a> to add new plan</td></tr>
                                                             {/if}

                              
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