{literal}
<script language="javascript" type="text/javascript">
function fnToggleHomepage(id){
 
	var frm = document.form1;
	frm.uid.value = id;
	frm.act.value = 'make_premium';
	frm.action = 'viewproducts.php';
	frm.submit();
  
}
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
	frm.cname.value = '';
	frm.url.value = '';
	frm.img.value = '';
	frm.status.value = '';
}
function showproduct(id)
{
	var op = window.open("productdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=650,height=500")
	op.focus();
}
function editproduct(id)
{
	var frm = document.form1;
	frm.action = "editproduct.php?uid="+id;
	frm.submit();
}
function delproduct(id)
{
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this Product"))
	{
		frm.act.value = 'del';
		frm.uid.value = id;
		frm.action = 'viewproducts.php';
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
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="100%" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="uid" />
				<input type="hidden" name="st"  />
				<input type="hidden" name="order_hid" id="order_hid" value="" />
				<input type="hidden" name="ordder" id="ordder" value="" />
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="97%" border="0" align="center" cellpadding="0" cellspacing="0">
					  
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">View Products </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<td align="center" valign="middle" class="Sub_menu">
                                                                    
                                                                    <!-- <input type="checkbox"/> -->
                                                                    
                                                                </td>
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
								<td align="center" valign="middle" class="Sub_menu">Product Name </td>
								<!--<td align="center" valign="middle" class="Sub_menu">Short Description </td>-->
								<td align="center" valign="middle" class="Sub_menu">Product Order</td>
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                             {section name=list loop=$array}
									<tr>
										<td align="center" valign="middle" class="Sub_menu">
                                                                                    {if $array[list].display_home_page eq 1}
                                                                                        <img onclick="javascript: fnToggleHomepage('{$array[list].id}');" src="images/star_on.png" alt="click to hide on home page" title="click to hide on home page" style="cursor:pointer;width:16px; height:16px;">
                                                                                    {else}
                                                                                        <img onclick="javascript: fnToggleHomepage('{$array[list].id}');" src="images/star_off.png" alt="click to display on home page" title="click to display on home page" style="cursor:pointer;width:16px; height:16px;">
                                                                                    {/if}
                                                                                    
                                                                                    <!-- <input type="checkbox" name="id" value="{$array[list].id}" /> -->
                                                                                    </td>
										<td class="aril" align="center">{$smarty.section.list.rownum}</td>
										<td class="aril" align="center">{$array[list].product_name}</td>
										<!--<td class="aril" align="center">{$array[list].short_description|truncate:50}</td>-->
										<td class="aril" align="center"><select name="{$array[list].id}" onchange="javascript: fnOrder('{$array[list].id}',this.value);">
										<option value="0">Select</option>
										{section name=count_list loop=$count}
										<option value="{$count[count_list]}" {if $array[list].order_product eq $count[count_list]} selected{/if}>{$count[count_list]}</option>
										{/section}
										</select>
										</td>
										<td class="aril" align="center">{if $array[list].status == 'Active'}<a href="javascript:changestat('{$array[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>
                                                                                <td class="aril" align="center"><img src="images/b_view.png"  width="16" onclick="javascript:showproduct('{$array[list].id}')" style="cursor:pointer" title="View Product Details"> / <img src="images/b_edit.png" width="20" onclick="javascript:editproduct('{$array[list].id}')" style="cursor:pointer"  title="Edit Product"/> / <a href="subscription_plans.php?product_id={$array[list].id}"><img src="images/subscription_plans.png" width="20" style="cursor:pointer"  title="View Subscription Plans"/></a></td>
                                                                                
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delproduct('{$array[list].id}')" style="cursor:hand" title="Delete Product" /></td>
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