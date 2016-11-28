{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 
</script>
{/literal}

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td><h2 class="protitle"><span>Forgot</span> Password</h2></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="center">{$msg}</td>
      </tr>
      <tr>
        <td>
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          
          <tr bgcolor="#FFFFFF">
            <td colspan="2" align="center">
            <form action="" method="post" name="form1" id="form1">
                <div class="login" style="width:500px;">
                  <h2>Forgot Password</h2>
                  <div class="innerlogin">
                    <table width="90%" border="0" cellspacing="3" cellpadding="0">
                      <tr>
                        <td  height="40">Enter your email id:</td>
                        <td><input type="hidden" name="sendmail"  value="forgot"  />
                            <input type="text" name="emailid" class="txtfield"  style="width:250px;"/>                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><input type="image" name="Submit" id="imageField" src="images/submitbtn.gif" /></td>
                      </tr>
                    </table>
                  </div>
                </div>
            </form></td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="28" colspan="2" align="center" bgcolor="#FFFFFF" class="black1"> Please send a mail to<a href="#" class="red"><strong> support@cionsystems.com</strong></a></td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
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

{literal}
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1");
  
  frmvalidator.addValidation("emailid","maxlen=50","50");
  frmvalidator.addValidation("emailid","req","Please enter your Email Address");
  frmvalidator.addValidation("emailid","email","Please enter  a valid Email Address");
  
 
 
</script>

{/literal}