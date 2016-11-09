{literal}
<script language="javascript" type="text/javascript">
    function validate() {
        var frm = document.frmpage;
        if (frm.contact.value == '') {
            alert("Please choose contact person");
            frm.contact.focus();
            return false;
        }
        else if (frm.first_name.value == '') {
            alert("Please enter your first name");
            frm.first_name.focus();
            return false;
        }
        else if (frm.last_name.value == '') {
            alert("Please enter your last name");
            frm.last_name.focus();
            return false;
        }
        else if (frm.company.value == '') {
            alert("Please enter your company name");
            frm.company.focus();
            return false;
        }
        else if (frm.phone.value == '') {
            alert("Please enter your phone number");
            frm.phone.focus();
            return false;
        }
        else if (frm.email.value == '') {
            alert("Please enter your email address");
            frm.email.focus();
            return false;
        }
        else if (frm.product.value == '') {
            alert("Please choose product");
            frm.Product.focus();
            return false;
        }
        else if (frm.comments.value == '') {
            alert("Please enter comments");
            frm.comments.focus();
            return false;
        }
        else {
            frm.keyword.value = "send";
            alert(frm.keyword.value);
            return true;
        }
    }
</script>
<script type="text/javascript">

    /* varying radii, "all" browsers */
    DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
    DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 
</script>
{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a></span> <span style="font-size:17px; color:#999999;">&raquo;</span> Company <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Contact</span> Us</h2></td>
  </tr>
  <tr>
    <td align="center" height="20">Fields marked with<span class="error"> * </span>are required.</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>

<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
 
          


          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="84%" align="center" valign="middle">
			<form name="frmpage" method="post" action="">
			<input type="hidden" name="keyword" id="keyword" value="send"  />
            <div class="login" style="width:500px;">
<h2>Contact Us</h2>
<div class="innerlogin">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="3" align="right" valign="middle" >&nbsp;</td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Contact Department :</td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><select name="contact" class="selfield">
          <option selected="selected">--Select--</option>
          <option>Sales</option>
          <option>Support</option>
          <option>Feedback</option>
          <option>General Info</option>
          <option>Webmaster</option>
      </select></td>
    </tr>
    <tr>
      <td width="37%" height="25" align="right" valign="middle" >First Name : </td>
      <td width="3%" align="left" valign="middle" class="error">*</td>
      <td width="60%" align="left" valign="middle"><input name="first_name" type="text" class="txtfield" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Last Name : </td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><input name="last_name" type="text" class="txtfield" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Company : </td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><input name="company" type="text" class="txtfield" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Phone : </td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Email Address : </td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><input name="email" type="text" class="txtfield" /></td>
    </tr>
    <tr>
      <td height="25" align="right" valign="middle" >Product :</td>
      <td align="left" valign="middle" class="error">*</td>
      <td align="left" valign="middle"><select name="product" class="selfield">
          <option selected="selected">--Select the Product--</option>
        
					{section name=cust loop=$products}
                    
        <option value="{$products[cust].product_name}">{$products[cust].product_name}</option>
        
					{/section}
                
      </select></td>
    </tr>
    <tr>
      <td colspan="3" align="right" valign="middle" ><img src="images/5pix.gif" width="1" height="5" /></td>
    </tr>
    <tr>
      <td height="32" align="right" valign="top" >Comments :</td>
      <td align="left" valign="top" class="error">*</td>
      <td align="left" valign="middle"><textarea name="comments" wrap="virtual" class="txtarea"></textarea></td>
    </tr>
    <tr>
      <td height="35" align="right" valign="middle">&nbsp;</td>
      <td align="center" valign="middle">&nbsp;</td>
      <td align="left" valign="middle"><input type="image" name="Submit" id="imageField" src="images/submitbtn.gif" />        </td>
    </tr>
  </table>
</div>
</div>
			</form>			</td>
            <td width="2%" align="left" valign="top">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="3" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td height="50" colspan="3" align="left" valign="middle" bgcolor="#f7f7f7"><div align="center" class="black"><strong>CionSystems Inc. 16625 Redmond Way, Ste. M106</strong><br />
          
            <strong>Redmond, WA. 98052.  Call us:1-425-605-5325.</strong> 
            </div>
 
            </td>
          </tr>
          <tr>
         <td height="50" colspan="3" align="left" valign="middle" bgcolor="#f7f7f7"><div align="center" class="black"><strong>Cion Systems Hyd Pvt.Ltd</strong><br />
          <strong>#505,5th Floor,6-2-47,Yeturu Tower Lakdi-ka-pool</strong><br />
                <strong>Hyderabad-4,TS, INDIA. Phone:040-64644486</strong>
            </div></td>
          <tr>
          </tr>
         
          <tr>
            <td colspan="3" align="left" valign="top" height="20">&nbsp;</td>
          </tr>
        </table>
{literal}
<script language="JavaScript" type="text/javascript">
    //You should create the validator only after the definition of the HTML form
    var frmvalidator = new Validator("frmpage");
    frmvalidator.addValidation("contact", "dontselect=0", "Please Select the Contact Department")

    frmvalidator.addValidation("first_name", "req", "Please enter First Name");
    frmvalidator.addValidation("first_name", "alpha_s");

    frmvalidator.addValidation("last_name", "req", "Please enter Last Name");
    frmvalidator.addValidation("last_name", "alpha_s");

    frmvalidator.addValidation("company", "req", "Please enter Company Name");
    frmvalidator.addValidation("company", "alpha_s");

    frmvalidator.addValidation("phone", "numhyphen", "Phone Number should be numberic\nEx:999-999-9999");
    frmvalidator.addValidation("phone", "req", "Please enter your Phone Number");

    frmvalidator.addValidation("product", "dontselect=0", "Please Select the Product")

    frmvalidator.addValidation("email", "maxlen=50", "50");
    frmvalidator.addValidation("email", "req", "Please enter your Email Address");
    frmvalidator.addValidation("email", "email", "Please enter  a valid Email Address");

    frmvalidator.addValidation("comments", "req", "Please enter your Comments");
 
</script>

{/literal}