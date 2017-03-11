{literal}<script src="Scripts/validator.js" type="text/javascript"></script>{/literal}

    Fields marked with<span class="error"> * </span>are required.
 
      <span style="color:#FF0000;">{$msg}</span>
 
        
        
        
        <form name="form1" method="post" action="start-payment.php">
		 <input type="hidden" name="act" value="add">
                 <input type="hidden" name="cart_amount" value="{$cart_price}">
                <div class="">
<h2>Payment Information</h2>
<div class="innerlogin">
<div class="row">
<div class="col-xs-12 col-md-6">
<h3>Shipping Information :</h3>



          <div class="finput"> <label><span class="error">*</span> Company :</label>
            <div><input name="shipping_company" type="text" class="txtfield" value="{$orderInfo.ship_company}"/></div>
          </div>
          
           <div class="finput"><label> <span class="error">*</span> Name : </label>
          <div><input name="shipping_name" type="text" class="txtfield" value="{$orderInfo.ship_name}"/></div></div>
           
         <div class="finput"><label><span class="error">*</span> Address 1 : </label>
            <div><input name="shipping_address1" type="text" class="txtfield" value="{$orderInfo.ship_address1}" /></div></div>
           
          <div class="finput"><label>Address 2 :</label>
          <div><input name="shipping_address2" type="text" class="txtfield" value="{$orderInfo.ship_address2}" /></div></div>
           <div class="finput"><label><span class="error">*</span> City : </label>
           <div><input name="shipping_city" type="text" class="txtfield" value="{$orderInfo.ship_city}" /></div></div>
          <div class="finput"><label><span class="error">*</span> State/Province/Territory:</label>

             <div><input name="shipping_state" type="text" class="txtfield" value="{$orderInfo.ship_state}" /></div></div>
          <div class="finput"><label><span class="error">*</span> Country:</label>

            <div><input name="shipping_country" type="text" class="txtfield" value="{$orderInfo.ship_country}" /></div></div>
             <div class="finput"><label><span class="error">*</span> Postal Code:</label>
            <div><input name="shipping_pcode" type="text" maxlength="10" class="txtfield" value="{$orderInfo.ship_address2}" /></div></div>
         <div class="finput"><label><span class="error">*</span> Phone:</label>
<div><input name="shipping_phone" type="text" class="txtfield" value="{$orderInfo.ship_phone}" /></div></div>
           

</div>


<div class="col-xs-12 col-md-6">
  
   <h3>Billing Information :</h3>
          <div class="chkshiping">  <input name="same_as_shipping" type="checkbox" onclick="javascript: fnReplicate(this);" value="1"/>&nbsp; Same as shipping information</div>
           
           <div class="finput"><label><span class="error">*</span> Company :</label>
             <div><input name="billing_company" type="text" class="txtfield" value="{$orderInfo.billing_company}"/></div></div>
             <div class="finput"><label><span class="error">*</span> Name : </label>
             
             <div><input name="billing_name" type="text" class="txtfield" value="{$orderInfo.billing_name}"/></div></div>
           
  <div class="finput"><label><span class="error">*</span> Address 1 : </label>
           <div><input name="billing_address1" type="text" class="txtfield" value="{$orderInfo.billing_address1}" /></div></div>
  <div class="finput"><label>Address 2 :</label>
            <div><input name="billing_address2" type="text" class="txtfield" value="{$orderInfo.billing_address2}" /></div></div>
        <div class="finput"><label><span class="error">*</span> City : </label>
            <div><input name="billing_city" type="text" class="txtfield" value="{$orderInfo.billing_city}" /></div></div>
         <div class="finput"><label><span class="error">*</span> State/Province/Territory:</label>

            <div><input name="billing_state" type="text" class="txtfield" value="{$orderInfo.billing_state}" /></div></div>
           
           <div class="finput"><label><span class="error">*</span> Country: </label>

            <div><input name="billing_country" type="text" class="txtfield" value="{$orderInfo.billing_country}" /></div></div>
          <div class="finput"><label><span class="error">*</span> Postal Code:</label>
            <div><input name="billing_pcode" type="text" maxlength="10" class="txtfield" value="{$orderInfo.billing_postalcode}" /></div></div>
          <div class="finput"><label><span class="error">*</span> Phone:</label>
            <div><input name="billing_phone" type="text" class="txtfield" value="{$orderInfo.billing_phone}" /></div></div>
        
        
</div>
<div class="col-xs-12 col-md-6">
  <h3>Card Information :</h3>

         
         
         <div class="finput"><label><span class="error">*</span> Name on card : </label>
          <div><input name="pc_name" type="text" class="txtfield" value=""/></div></div>
          
          <div class="finput"><label><span class="error">*</span> Card number :</label>
            <div><input name="pc_number" type="text" class="txtfield" value="" maxlength="16" /></div></div>
          
             <div class="finput"><label><span class="error">*</span> Expiry (MM/YY) :</label>
            <div><input name="pc_expiry_month" type="text" class="txtfield" value="" style="width:50px !important;" />&nbsp;/&nbsp;<input style="width:50px !important;" name="pc_expiry_year" type="text" class="txtfield" value="" /></div></div>
         <div class="finput"><label><span class="error">*</span> CVV :</label>
            <div><input name="pc_cvv" type="password" class="txtfield" value="" maxlength="3" /></div></div>
           
           
            <div class="finput"><label class="TotalCost">
         Amount: {$cart_price}</label></div>
          
                 
                 <button class="btn-place btn" onclick="javascript: return validateorderFrm();"  >Proceed to payment</button></td>
           

</div>
</div>


		
         </div>
</div>
            </form>



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