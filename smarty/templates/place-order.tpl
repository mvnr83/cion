{literal}<script src="Scripts/validator.js" type="text/javascript"></script>{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="titlebg" height="28">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center">Fields marked with<span class="error"> * </span>are required.</td>
  </tr>
  <tr>
      <td align="center"><span style="color:#FF0000;">{$msg}</span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center">
        
        
        
        <form name="form1" method="post" action="start-payment.php">
		 <input type="hidden" name="act" value="add">
                 <input type="hidden" name="cart_amount" value="{$cart_price}">
                <div class="login" style="width:500px;">
<h2>Payment Information</h2>
<div class="innerlogin">



		 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
           <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Shipping Information :</h3></td>
            </tr>
            <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company : </td>
             <td align="left" valign="middle"><input name="shipping_company" type="text" class="txtfield" value="{$orderInfo.ship_company}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Name : </td>
             <td align="left" valign="middle"><input name="shipping_name" type="text" class="txtfield" value="{$orderInfo.ship_name}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address 1 : </td>
             <td align="left" valign="middle"><input name="shipping_address1" type="text" class="txtfield" value="{$orderInfo.ship_address1}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="shipping_address2" type="text" class="txtfield" value="{$orderInfo.ship_address2}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City : </td>
             <td align="left" valign="middle"><input name="shipping_city" type="text" class="txtfield" value="{$orderInfo.ship_city}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> State/Province/Territory: </td>

             <td align="left" valign="middle"><input name="shipping_state" type="text" class="txtfield" value="{$orderInfo.ship_state}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country: </td>

             <td align="left" valign="middle"><input name="shipping_country" type="text" class="txtfield" value="{$orderInfo.ship_country}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Postal Code:</td>
             <td align="left" valign="middle"><input name="shipping_pcode" type="text" maxlength="10" class="txtfield" value="{$orderInfo.ship_address2}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="shipping_phone" type="text" class="txtfield" value="{$orderInfo.ship_phone}" /></td>
           </tr>
           
           
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Billing Information :</h3></td>
            </tr>
            <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle"><input name="same_as_shipping" type="checkbox" onclick="javascript: fnReplicate(this);" value="1"/>&nbsp; Same as shipping information</td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company : </td>
             <td align="left" valign="middle"><input name="billing_company" type="text" class="txtfield" value="{$orderInfo.billing_company}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Name : </td>
             <td align="left" valign="middle"><input name="billing_name" type="text" class="txtfield" value="{$orderInfo.billing_name}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address 1 : </td>
             <td align="left" valign="middle"><input name="billing_address1" type="text" class="txtfield" value="{$orderInfo.billing_address1}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="billing_address2" type="text" class="txtfield" value="{$orderInfo.billing_address2}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City : </td>
             <td align="left" valign="middle"><input name="billing_city" type="text" class="txtfield" value="{$orderInfo.billing_city}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> State/Province/Territory: </td>

             <td align="left" valign="middle"><input name="billing_state" type="text" class="txtfield" value="{$orderInfo.billing_state}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country: </td>

             <td align="left" valign="middle"><input name="billing_country" type="text" class="txtfield" value="{$orderInfo.billing_country}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Postal Code:</td>
             <td align="left" valign="middle"><input name="billing_pcode" type="text" maxlength="10" class="txtfield" value="{$orderInfo.billing_postalcode}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="billing_phone" type="text" class="txtfield" value="{$orderInfo.billing_phone}" /></td>
           </tr>
           
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Card Information :</h3></td>
            </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Name on card : </td>
             <td align="left" valign="middle"><input name="pc_name" type="text" class="txtfield" value=""/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Card number : </td>
             <td align="left" valign="middle"><input name="pc_number" type="text" class="txtfield" value="" maxlength="16" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Expiry (MM/YY) :</td>
             <td align="left" valign="middle"><input name="pc_expiry_month" type="text" class="txtfield" value="" style="width:50px !important;" />&nbsp;/&nbsp;<input style="width:50px !important;" name="pc_expiry_year" type="text" class="txtfield" value="" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> CVV : </td>
             <td align="left" valign="middle"><input name="pc_cvv" type="password" class="txtfield" value="" maxlength="3" /></td>
           </tr>
           
           
            
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
           <tr>
               <td align="left" valign="middle" class="TotalCost">Amount: {$cart_price}</td>
             <td align="left" valign="middle">
                 
                 <button class="btn-place btn" onclick="javascript: return validateorderFrm();"  >Proceed to payment</button></td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
         </table>
         </div>
</div>
            </form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>


                {literal}
<script language="JavaScript" type="text/javascript">
    function fnReplicate(obj){

        if($(obj).prop("checked") == true){
            $('input[name="billing_company"]').val($('input[name="shipping_company"]').val());
            $('input[name="billing_name"]').val($('input[name="shipping_name"]').val());
            $('input[name="billing_address1"]').val($('input[name="shipping_address1"]').val());
            $('input[name="billing_address2"]').val($('input[name="shipping_address2"]').val());
            $('input[name="billing_city"]').val($('input[name="shipping_city"]').val());
            $('input[name="billing_state"]').val($('input[name="shipping_state"]').val());
            $('input[name="shipping_country"]').val($('input[name="shipping_country"]').val());
            $('input[name="billing_pcode"]').val($('input[name="shipping_pcode"]').val());
            $('input[name="billing_phone"]').val($('input[name="shipping_phone"]').val());
        }
    }
    
    
    //You should create the validator only after the definition of the HTML form
    function validateorderFrm(){
        
        var frmvalidator = new Validator("form1");

        frmvalidator.addValidation("shipping_company", "req", "Please enter shipping company name");
        frmvalidator.addValidation("shipping_name", "req", "Please enter shipping name");
        frmvalidator.addValidation("shipping_address1", "req", "Please enter shipping address 1");
        frmvalidator.addValidation("shipping_city", "req", "Please enter shipping city");
        frmvalidator.addValidation("shipping_state", "req", "Please enter shipping State/Province/Territory");
        frmvalidator.addValidation("shipping_country", "req", "Please enter shipping Country");
        
        frmvalidator.addValidation("shipping_pcode", "req", "Please enter shipping postal code");
        frmvalidator.addValidation("shipping_phone", "req", "Please enter shipping phone");
        
        frmvalidator.addValidation("billing_company", "req", "Please enter billing company name");
        frmvalidator.addValidation("billing_name", "req", "Please enter billing name");
        frmvalidator.addValidation("billing_address1", "req", "Please enter billing address 1");
        frmvalidator.addValidation("billing_city", "req", "Please enter billing city");
        frmvalidator.addValidation("billing_state", "req", "Please enter billing State/Province/Territory");
        frmvalidator.addValidation("billing_country", "req", "Please enter billing Country");
        frmvalidator.addValidation("billing_pcode", "req", "Please enter billing postal code");
        frmvalidator.addValidation("billing_phone", "req", "Please enter billing phone");
    
        frmvalidator.addValidation("pc_name", "req", "Please enter name on card");
        frmvalidator.addValidation("pc_number", "req", "Please enter card number");
        frmvalidator.addValidation("pc_number", "numeric", "Please enter digits only");
        frmvalidator.addValidation("pc_expiry_month", "req", "Please enter card expiry month");
        frmvalidator.addValidation("pc_expiry_month", "numeric", "Please enter digits only");
        frmvalidator.addValidation("pc_expiry_year", "req", "Please enter card expiry year");
        frmvalidator.addValidation("pc_expiry_year", "numeric", "Please enter digits only");
        frmvalidator.addValidation("pc_cvv", "req", "Please enter CVV number");
        frmvalidator.addValidation("pc_cvv", "numeric", "Please enter digits only");
        
    }
</script>

{/literal}