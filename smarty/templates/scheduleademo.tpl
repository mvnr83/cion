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
    <td width="96%">
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td>
        {if $tit == "schedule"}
        <h2 class="protitle"><span>Schedule </span>a Demo</h2>
        {else}
        <h2 class="protitle"><span>Take a </span>Test Drive Now</h2>
        {/if}
        </td>
      </tr>
      <tr>
        <td height="50" align="center" valign="middle" style="font-size:12px;">Thank you for your interest. The product you have requested will be presented 
          immediately after you provide some basic personal and corporate information.</td>
      </tr>
      <tr>
        <td height="25" align="left" valign="top"><span class="black" style="padding-left:180px;">Fields marked with<span class="error"> * </span>are required.</span></td>
      </tr>
      <tr>
        <td>
        {$msg}
        <form action="" method="post" name="frmpage" id="frmpage">
          <input type="hidden" name="keyword" id="keyword" value="send"  />
          <div class="login" style="width:500px; float:left;">
			{if $tit == "schedule"}
        	<h2>Please Register to Schedule a Demo</h2>
        	{else}
        	<h2>Please Register to take the Test Drive</h2>
        	{/if}
            
<div class="innerlogin">
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
            <tr>
              <td colspan="3" align="center" valign="middle" ></td>
            </tr>
            <tr>
              <td height="25" align="right" valign="middle" >Product:</td>
              <td width="2%" align="left" valign="middle" class="error">*</td>
              <td align="left" valign="middle"> {if $product != ""}
                <input name='proname' type='text' value='{$product}' readonly="readonly" class='txtfield' />
                {else}
                <input name='proname' type='text'  class='txtfield' />
                {/if} <a href="privacy_policy.php" style="color:#0033CC; text-decoration:underline;"></a></td>
            </tr>
            <tr>
              <td width="30%" height="25" align="right" valign="middle" > Name: </td>
              <td width="2%" align="left" valign="middle" class="error">*</td>
              <td width="68%" align="left" valign="middle"><input name="first_name" type="text" class="txtfield" />
                <a href="privacy_policy.php" style="color:#0033CC; text-decoration:underline;">We value your privacy</a></td>
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
              <td height="30" align="right" valign="middle">Country :</td>
              <td align="center" valign="middle"><span class="error">*</span></td>
              <td align="left" valign="middle">
              
              <select name="country" style="font-size:11px; width:190px;">
              	<option value="">-- Select Country --</option>
				{html_options values=$cntid selected=$country output=$cntname}
			  </select>              </td>
            </tr>
            <tr>
              <td height="35" align="right" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="left" valign="middle">
              
            {if $tit == "schedule"}
        	<input type="image" name="Submit" id="imageField" src="images/submitbtn.gif" />
        	{else}
        	<input type="image" name="Submit" id="imageField" src="images/take_testdrive.gif" />
        	{/if}
              
            
              
              
              </td>
            </tr>
            <tr>
              <td align="right" valign="middle">&nbsp;</td>
              <td align="center" valign="middle">&nbsp;</td>
              <td align="left" valign="middle">To request a quote <a href="buynow.php" style="color:#0033CC; text-decoration:underline;">contact us</a></td>
            </tr>
          </table>
          </div></div>
          
          
          
          <div style="float:right; padding:10px; width:320px;" align="left">
			{$productimage}
          </div>  
          
          
         </form>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    </td>
    
    <td width="2%">&nbsp;</td>
  </tr>
</table>

{literal}
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("frmpage");

  frmvalidator.addValidation("proname","req","Please enter Product Name");
  frmvalidator.addValidation("proname","alpha_s");
  
  frmvalidator.addValidation("first_name","req","Please enter Name");
  frmvalidator.addValidation("first_name","alpha_s");
  
    
  frmvalidator.addValidation("company","req","Please enter Company Name");
  frmvalidator.addValidation("company","alpha_s");
 
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  
  
  
  frmvalidator.addValidation("email","maxlen=50","50");
  frmvalidator.addValidation("email","req","Please enter your Email Address");
  frmvalidator.addValidation("email","email","Please enter  a valid Email Address");
  
 
  frmvalidator.addValidation("country", "req","Plese Select Country");
</script>

{/literal}