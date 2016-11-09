<div style="padding:20px;" class="graystr4">
<form name="form" method="post" action="">
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td colspan="2" height="10" align="center">{$sam}</td>
  </tr>
  <tr>
    <td colspan="2" height="30" align="center"><h2>Shipping Request</h2></td>
    </tr>
  <tr>
    <td width="50%" align="left"><strong>Company Name</strong> </td>
    <td><input type="text" name="compname" id="compname" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="left"><strong>Customer Name</strong></td>
    <td><input type="text" name="custname" id="custname" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="left" valign="top"><strong>Address</strong></td>
    <td><textarea name="address" id="address" cols="45" rows="5" class="txtarea"></textarea></td>
  </tr>
  <tr>
    <td align="left"><strong>Telephone</strong></td>
    <td><input type="text" name="phone" id="phone" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="left"><strong>Products</strong></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="left"><table width="80%" border="0" cellspacing="5" cellpadding="0">
      <tr>
        <td align="center" class="menuhead">SL</td>
        <td align="left" class="menuhead">Product List</td>
        <td align="left" class="menuhead">Quantity</td>
      </tr>
      {section name=down loop=$fetch}
      <tr>
        <td width="4%" align="center"><input type="checkbox" name="checkbox[]" id="checkbox[]" value={$fetch[down].id} /></td>
        <td width="59%" align="left"><input name="proname[{$fetch[down].id}]" type="text" readonly="true"  class="proname" value="{$fetch[down].product_name}" /></td>
        <td width="37%" align="left"><input type="text" name="product[{$fetch[down].id}]" id="product[]" maxlength="2" class="smalltxtfield" value="0" /></td>
      </tr>
      {/section}
    </table></td>
  </tr>
  <tr>
    <td><strong>Your Initials</strong></td>
    <td><input type="text" name="initials" id="initials" class="txtfield" /></td>
  </tr>
  <tr>
    <td><strong>Notes </strong></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><textarea name="notes" id="textarea2" cols="45" class="notes" rows="5"></textarea></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" name="submit" id="button" value="Submit"></td>
    </tr>
  <tr>
    <td colspan="2"> NOTE : By submitting this form you authorize us to ship  the selected product(s) to the customer according to the information you  entered on this Order Form. Invoicing will be sent according to terms in the  signed agreements currently in place.</td>
    </tr>
</table>
</form>
</div>