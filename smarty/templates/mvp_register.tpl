{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 
</script>
<script type="text/javascript">
function check_it() {
     var theurl=document.form2.mvpurl.value;
     var tomatch= /http:\/\/[A-Za-z0-9\.-]{3,}\.[A-Za-z]{3}/
     if (tomatch.test(theurl))
     {
         return true;
     }
     else
     {
         window.alert("URL invalid. Try again.");
         return false; 
     }
}

</script>

{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td><h2 class="protitle"><span>MVP</span> Register</h2></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>
         <form action="" method="post" name="form1">
             <!--{if $msg != ""}
                {$msg}
                {else}-->
                 <div class="login" style="width:500px;">
<h2>Registration</h2>
<div class="innerlogin">
              <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="4">
                 <tr>
    <td colspan="2" align="center" valign="middle">{$msg}</td>
  </tr>

                
                
                <tr>
                  <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Personal Information : </h3></td>
                  </tr>
                <tr>
                  <td width="45%" align="right" valign="middle"><span class="error">* </span>First Name :</td>
                  <td width="55%" align="left" valign="middle"><input name="fname" type="text" class="txtfield" />
                      <!-- <a href="#" class="ari">We value your privacy</a>--></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> Last Name :</td>
                  <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> Address 1 : </td>
                  <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"> Address 2 :</td>
                  <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> City : </td>
                  <td align="left" valign="middle"><input name="city" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle">County/State/Province/Territory : </td>
                  <td align="left" valign="middle"><input name="state" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle">Postal Code :</td>
                  <td align="left" valign="middle"><input name="pcode" type="text" maxlength="10" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> Phone :</td>
                  <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> MVP Profile link (Microsoft link) :</td>
                  <td align="left" valign="middle"><input name="mvpurl" type="text" class="txtfield" /></td>
                </tr>
                
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> Username (your e-mail address) : </td>
                  <td align="left" valign="middle"><input type="text" name="email" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="middle"><span class="error">*</span> What product are you requesting : </td>
                  <td align="left" valign="middle"><input type="text" name="product" class="txtfield" /></td>
                </tr>
                <tr>
                  <td align="right" valign="top">Additional Information : </td>
                  <td align="left" valign="top"><label>
                    <textarea name="addinfo" id="addinfo" cols="23" class="txtarea" rows="3"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle"><input type="image" name="mvp"  value="Submit" src="../../images/submitbtn.gif" /></td>
                </tr>
              </table>
              </div></div>
              <!-- {/if} --> 
            </form>
        
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>
 <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1");
  
   frmvalidator.addValidation("fname","req","Please enter First Name");
  frmvalidator.addValidation("fname","alpha","Please enter First Name");
  frmvalidator.addValidation("lname","req","Please enter Last Name");
  frmvalidator.addValidation("lname","alpha","Please enter Last Name");
   frmvalidator.addValidation("address1","req","Please enter your Address");
  frmvalidator.addValidation("address1","alnumhyphen_s","Please enter your Address");
  frmvalidator.addValidation("city","req","Please enter your City Name");
  frmvalidator.addValidation("city","alpha_s","Please enter your City Name");
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  frmvalidator.addValidation("mvpurl","req","Please enter MVP Profile Link");
  frmvalidator.addValidation("email","maxlen=50","50");
  frmvalidator.addValidation("email","req","Please enter your Email Address");
  frmvalidator.addValidation("email","email","Please enter  a valid Email Address");
  frmvalidator.addValidation("product","req","Please enter the Product");
  frmvalidator.addValidation("product","alpha_s","Please enter the Product");  
</script>