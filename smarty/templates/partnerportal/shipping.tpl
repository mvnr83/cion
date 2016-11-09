{literal}
<script language="javascript">

  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 

			//function product() {
//				var ok = true;
//				var errors = new Array();
//				var usedPositions = new Array();
//				var positions = document.getElementsByName("product[]");
//				var boxes = document.getElementsByName("checkbox[]");
//				if(!boxes[0].checked)
//	{
//	errors.push("Please select one of the product ");
//						ok = false;
//	
//	}
//				for (var x = 0; x < boxes.length; x++) {
//					/*
//					1. If the "Use Story" checkbox for the headline is checked, but there
//					is no Position number entered in the textbox for the story, the user
//					should get an alert telling them to enter a Position number for the
//					headline.
//					*/
//					if (boxes[x].checked && (!positions[x].value || isNaN(positions[x].value))) {
//						errors.push("Please enter a valid number " + (x+1));
//						ok = false;
//					}
//					/*
//					2. If the user entered a Position number for the story but failed to
//					select the checkbox for the story, then they should get an alert that
//					they failed to select the checkbox for that story.
//					*/
//					if (positions[x].value && !boxes[x].checked) {
//						errors.push("Please check the box for product " + (x+1));
//						ok = false;
//					}
//					/*
//					3. If they happened to enter the same number twice or more in the
//					Position textbox (for example, "1, 2, 2"), then they should get an
//					alert telling them that they are using the same Position number twice.
//					*/
//					//if (inArray(positions[x].value, usedPositions)) {
//						//errors.push("Position " + positions[x].value + " is used more than once.");
//						//ok = false;
//					//}
//					//  we have a valid position, so record it
//					if (positions[x].value) {
//						usedPositions.push(positions[x].value);
//					}
//				}
//				//  display any errors
//				if (errors.length > 0) {
//					alert("Please correct the following errors:\n"
//						+ errors.join("\n"));
//				}
//				
//				return ok;
//			}
//			
//			function inArray(needle, haystack) {
//				var found = false;
//				for (var x = 0; x < haystack.length; x++) {
//					if (needle == haystack[x]) {
//						found = true;
//					}
//				}
//				return found;
//			}
		</script>
{/literal}
<div align="center">
 <div class="login" style="width:500px;margin:10px;">
<h2>Shipping Request</h2>
<div class="innerlogin">
<!--<div style="padding:20px;" class="graystr4">-->
<form name="form" method="post" action="" onsubmit="">
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td colspan="2" height="10" align="center">{$sam}</td>
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
      {section name=down loop=$fetch start=0}
      <tr>
        <td width="4%" align="center"><input type="checkbox" name="checkbox[]" id="checkbox[]" value="{$smarty.section.down.index}" /><input name="id[]" type="hidden" value="{$fetch[down].id}" /></td>
        <td width="59%" align="left"><input name="proname[]" type="text" readonly="true"  class="proname" value="{$fetch[down].product_name}" /></td>
        <td width="37%" align="left"><input type="text" name="product[]" id="product[]" maxlength="2" class="smalltxtfield" value="0" /></td>
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
    <td colspan="2" align="center">
     <input type="image" name="submit" id="button" value="Submit" src="images/submitbtn.gif" onclick="return product();"  />
    </td>
    </tr>
  <tr>
    <td colspan="2"> NOTE : By submitting this form you authorize us to ship  the selected product(s) to the customer according to the information you  entered on this Order Form. Invoicing will be sent according to terms in the  signed agreements currently in place.</td>
    </tr>
</table>
</form>
</div>
</div>
</div>