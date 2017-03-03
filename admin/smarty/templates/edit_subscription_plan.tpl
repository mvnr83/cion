{literal}
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.plan_name.value == '')
	{
		alert("Enter Plan name");
		frm.plan_name.focus();
		return false;
	}
	else if(frm.price.value == '')
	{
		alert("Enter Price");
		frm.price.focus();
		return false;
	}
	else
	{
		frm.act.value = 'edit';
		return true;
	}
}
function clear()
{
	var frm = document.form1;
	frm.reset();
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

-->  <tr>
	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
                        <input type="hidden" name="act"  />
                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Edit Subscription plan for {$product_name}  </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="144" align="right" valign="middle">&nbsp;</td>
                                <td width="10" align="center" valign="middle">&nbsp;</td>
                                <td width="201" align="center" valign="middle">&nbsp;</td>
                                <td width="55" align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td> 	
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">Add-on Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="addon_id">
								
                                        <option value="0" selected="selected">Select</option>
                                        {if $addonsCnt gt 0}
                             {section name=list loop=$addons}
                                        <option value="{$addons[list].addon_id}" {if $addons[list].addon_id eq $array[0].addon_id}selected{/if}>{$addons[list].addon_name}</option>
                                        {/section}
                                        {/if}
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
				<tr>
                                <td align="right" valign="middle" class="aril">Plan Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="plan_name" type="text" class="fieldwidth" value="{$array[0].plan_name}" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="aril">Price  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="price" type="text" class="fieldwidth" value="{$array[0].price}"  /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="top" class="aril">Download Link  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="top"><input name="download_link" type="text" class="fieldwidth" value="{$array[0].download_link}"  /><br />Eg: Products/product.zip <br />&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Plan type  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><select name="plan_type">
								
                                        <option value="1" {if $array[0].plan_type == "1"} selected{/if}>Full</option>
								<option value="0" {if $array[0].plan_type == "0"} selected{/if}>Trial</option>
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                                              <td align="right" valign="middle" class="aril">
                                                                  <input type="checkbox" name="price_type" value="1" {if $array[0].price_type == "1"} checked{/if}> </td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">Request Quote/Contact Us</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
				<tr>
                                <td align="right" valign="middle" class="aril">Is this Addon :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="is_addon">
								
								<option value="1" {if $array[0].is_addon == "1"} selected{/if}>Yes</option>
								<option value="0" {if $array[0].is_addon == "0"} selected{/if}>No</option>
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>			  
							
                              			 <tr>
                                <td align="right" valign="middle" class="aril">Status :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="status">
								<option value="" >Select</option>
								<option value="1" {if $array[0].status == "1"} selected{/if}>Active</option>
								<option value="0" {if $array[0].status == "0"} selected{/if}>Inactive</option>
								</select></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="23" align="center" valign="middle"><a href="#"></a><a href="#"></a>
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="67" height="23" align="left" valign="middle"><label>
                                          <input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/>
                                        </label></td>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="button" class="formbutton" value="Cancel" onClick="window.location.href='subscription_plans.php?product_id={$product_id}'" /></td>
                                      </tr>
                                    </table>
                                  <a href="#"></a></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
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