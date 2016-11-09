{literal}
<script language="javascript" type="text/javascript">
function validate()
{
	var frm = document.form1;
	if(frm.servers.value == '')
	{
		alert("Enter No of Servers");
		frm.servers.focus();
		return false;
	}
	else if(frm.users.value == '')
	{
		alert("Enter No of Users");
		frm.users.focus();
		return false;
	}
	else if(frm.workstations.value == '')
	{
		alert("Enter No of Workstations");
		frm.workstations.focus();
		return false;
	}
	else
	{
		frm.act.value = 'add';
		return true;
	}
}
</script>
{/literal}
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle" class="hea">Buy Now </td><br />
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9"></td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="84%" align="center" valign="top">
			<form method="post" action="" name="form1" onsubmit="javascript:return validate();">
			<input type="hidden" name="act" />
			<input type="hidden" name="pname" />
			<input type="hidden" name="pid" value="{$pid}" />
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/field_bg.gif" class="graystr4">
                <tr>
                  <td height="40" colspan="3" align="center" valign="middle" class="blue">Request a Quote </td>
                </tr>
                <tr>
                  <td colspan="3" align="center" valign="top" bgcolor="#c7c7c7" class="ver11"><img src="images/1pix.gif" width="1" height="1"></td>
                </tr>
                <tr>
                  <td colspan="3" align="right" valign="top" class="ver11"><img src="images/7pix.gif" width="1" height="7"></td>
                </tr>
                                  
                  <tr>
                    <td colspan="3" align="center" valign="middle" class="ver11"><strong>Questions that are marked with an <span class="verbold">Asterisk (</span><span class="red">*</span><span class="verbold">)</span> must be answered for us to process your request.</strong></td>
                  </tr>
                  <tr>
                    <td height="7" colspan="3" align="right" valign="middle" class="ver11"></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11"><span class="red">*</span> # of Servers : </td>
                    <td align="left" valign="middle" colspan="2"><input name="servers" type="text" class="ar12" size="8" maxlength="8"></td>
                  </tr>
                  <tr>
                    <td height="7" colspan="3" align="right" valign="middle" class="ver11"></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11"><span class="red">*</span> # of Users : </td>
                    <td align="left" valign="middle" colspan="2"><input name="users" type="text" class="ar12" size="8" maxlength="8"></td>
                  </tr>
                  <tr>
                    <td height="7" colspan="3" align="right" valign="middle" class="ver11"></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11"><span class="red">*</span> # of Workstations : </td>
                    <td align="left" valign="middle" colspan="2"><input name="workstations" type="text" class="ar12" size="8" maxlength="8"></td>
                  </tr>
				<tr>
                  <td colspan="3" align="center" valign="top" class="blue"><img src="images/7pix.gif" width="1" height="7"></td>
                </tr>
                <tr>
                  <td colspan="3" align="center" valign="top" bgcolor="#c7c7c7" class="blue"><img src="images/1pix.gif" width="1" height="1"></td>
                </tr>
                <tr>
                  <td height="40" colspan="3" align="center" valign="middle" background="images/field_bg.gif" class="blue">Product Details </td>
                </tr>
                <tr>
                  <td colspan="3" align="center" valign="top" bgcolor="#c7c7c7" class="ver11"><img src="images/1pix.gif" width="1" height="1"></td>
                </tr>
                <tr>
                  <td colspan="3" align="right" valign="middle" class="ver11"><img src="images/7pix.gif" width="1" height="7"></td>
                </tr>
                <tr>
                  <td height="25" align="right" valign="middle" class="ver11">Product Name : </td>
                  <td align="left" valign="middle" class="red">&nbsp;</td>
                  <td align="left" valign="middle"><input name="pname" type="text" disabled="disabled" class="fieldwidth" value="{$array[0].product_name}" /></td>
                </tr>
<!--                <tr>

                  <td height="25" align="right" valign="middle" class="ver11">Version :</td>

                  <td align="center" valign="middle" class="red">&nbsp;</td>

                  <td align="left" valign="middle" class="ver11"><input name="version" disabled="disabled" type="text" class="ver11" value="{$array[0].product_version}" /></td>

                </tr>

                <tr>

                  <td height="25" align="right" valign="middle" class="ver11">Unit Price : </td>

                  <td align="center" valign="middle" class="red">&nbsp;</td>

                  <td align="left" valign="middle" class="ver11"><input name="price" disabled="disabled" type="text" class="ver11" value="{$array[0].product_price}" /></td>

                </tr>

                <tr>

                  <td height="25" align="right" valign="middle" class="ver11">Quantity : </td>

                  <td align="center" valign="middle" class="red">*</td>

                  <td align="left" valign="middle" class="ver11"><select name="quantity" class="ver11">

                      <option>Select</option>

                      <option value="1">1</option>

                      <option value="2">2</option>

                      <option value="3">3</option>

                      <option value="4">4</option>

                      <option value="5">5</option>

                      <option value="6">6</option>

                      <option value="7">7</option>

                      <option value="8">8</option>

                      <option value="9">9</option>

                      <option value="10">10</option>

                    </select>                  </td>

                </tr>

-->                <tr>
                  <td height="35" colspan="3" align="center" valign="middle"><input type="submit" name="Submit" value="Submit" />

                    &nbsp;</td>
                </tr>
                <tr>
                  <td colspan="3" align="center" valign="middle" bgcolor="#c7c7c7" class="ver11"><img src="images/1pix.gif" width="1" height="1"></td>
                </tr>
                <tr>
                  <td height="35" colspan="3" align="center" valign="middle" class="ver11"><strong class="black"> <!--Clicking on continue to pay will take you to secure paypal site where you can pay using credit card or paypal--></strong></td>
                </tr>
            </table>
			</form>
			</td>
            <td width="14%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle">&nbsp;<!--<img src="images/paypal.gif" width="292" height="28">--></td>
                  <td align="center" valign="middle"><!--<img src="images/paypal_logo.gif" width="200" height="50">--></td>
                </tr>
            </table></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9"></td>
          </tr>
</table>