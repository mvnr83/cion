{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 
</script>
{/literal}<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td>
      <!--  <h2 class="protitle"><span>Buy</span> it now</h2>-->
        <h2 class="protitle"><span>Request</span> a Quote</h2>
        </td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><span class="black">Fields marked with<span class="error"> * </span>are required.</span></td>
      </tr>
      <tr>
        <td>
        {$msg}
        <form action="" method="post" name="frmpage" id="frmpage">
          <input type="hidden" name="keyword" id="keyword" value="send"  />
          <div class="login" style="width:500px; margin:0 auto;">
<h2>Register</h2>
<div class="innerlogin">
          <table width="90%" border="0" align="center" cellpadding="0" cellspacing="3">
            <tr>
              <td colspan="3" align="center" valign="middle" ></td>
            </tr>
            <tr>
              <td height="25" align="right" valign="middle" >Product:</td>
              <td width="3%" align="left" valign="middle" class="error">*</td>
              <td align="left" valign="middle">
              <select name="proname" id="proname" class="selfield">
          <option selected="selected" value="">--Select the Product--</option>
        
					{section name=cust loop=$products}
                    
        <option value="{$products[cust].product_name}">{$products[cust].product_name}</option>
        
					{/section}
                
      </select>
              
               <!--{if $product != ""}<input name='proname' type='text' value='{$product}' readonly="readonly" class='txtfield' />{else}<input name='proname' type='text'  class='txtfield' />{/if} --></td>
            </tr>
            <tr>
              <td width="37%" height="25" align="right" valign="middle" > Name: </td>
              <td width="3%" align="left" valign="middle" class="error">*</td>
              <td width="60%" align="left" valign="middle"><input name="first_name" type="text" class="txtfield" /></td>
            </tr>
            <tr>
              <td height="25" align="right" valign="middle" >Phone: </td>
              <td align="left" valign="middle" class="error">*</td>
              <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" /></td>
            </tr>
            <tr>
              <td height="25" align="right" valign="middle" >Email Address: </td>
              <td align="left" valign="middle" class="error">*</td>
              <td align="left" valign="middle"><input name="email" type="text" class="txtfield" /></td>
            </tr>
            <tr>
              <td height="25" align="right" valign="middle" >Company:</td>
              <td align="left" valign="middle" class="error">*</td>
              <td align="left" valign="middle"><input name="company" type="text" class="txtfield" /></td>
            </tr>
            <tr>
            	<td height="25" align="right" valign="middle">Designation:</td>
                <td align="left" valign="middle" class="error">*</td>
                <td align="left" valign="middle"><input name="designation" type="text" class="txtfield" /></td>
            </tr>
            <tr>
            	<td height="25" align="right" valign="middle">Number of Domains:</td>
                <td align="left" valign="middle" class="error">*</td>
                <td align="left" valign="middle"><input name="domain" type="text" class="txtfield" /></td>
            </tr>
            <tr>
            	<td height="25" align="right" valign="middle">Number of Users:</td>
                <td align="left" valign="middle" class="error">*</td>
                <td align="left" valign="middle"><input name="number_users" type="text" class="txtfield" /></td>
            </tr>
            <tr>
            	<td height="25" align="right" valign="middle">Description:</td>
                <td align="left" valign="middle" class="error">*</td>
                <td align="left" valign="middle"><textarea name="description" class="txtfield" rows="4" cols="10" /></textarea></td>
            </tr>
            
            <tr>
              <td height="35" align="right" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="left" valign="middle"><input type="image" name="Submit" id="imageField" src="images/submitbtn.gif" />                </td>
            </tr>
          </table>
          </div></div>
          

          
        </form></td>
        
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>

{literal}
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("frmpage");

  frmvalidator.addValidation("proname","req","Please select Product Name");
  frmvalidator.addValidation("proname","alpha_s");
  
  frmvalidator.addValidation("first_name","req","Please enter Name");
  frmvalidator.addValidation("first_name","alpha_s");
  
  
  
  frmvalidator.addValidation("company","req","Please enter Company Name");
  frmvalidator.addValidation("company","alpha_s");
  
  frmvalidator.addValidation("designation","req","Please enter Designation");
  frmvalidator.addValidation("designation","alpha_s");
  
  frmvalidator.addValidation("domain","maxlen=5","5");
  frmvalidator.addValidation("domain","numhyphen","Number of Domais should be numberic\nEx:777");
  frmvalidator.addValidation("domain","req","Please enter your number of Domains");
  
  frmvalidator.addValidation("number_users","maxlen=5","5");
  frmvalidator.addValidation("number_users","numhyphen","Number of Users should be numberic\nEx:777");
  frmvalidator.addValidation("number_users","req","Please enter number of users");
  
  frmvalidator.addValidation("description","req","Please enter Description");
  frmvalidator.addValidation("description","alpha_s");
 
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  
    
  frmvalidator.addValidation("email","maxlen=50","50");
  frmvalidator.addValidation("email","req","Please enter your Email Address");
  frmvalidator.addValidation("email","email","Please enter  a valid Email Address");
  
 
 
</script>

{/literal}