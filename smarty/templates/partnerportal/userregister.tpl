{literal}
<script type="text/javascript">
DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);
</script>
<script type="text/javascript">

function check_it() {
     var theurl=document.form1.companyurl.value;
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
function winalert(msg){
window.alert(msg);
         return false; 
}
</script>
{/literal}
<div class="login" style="width:500px;margin:10px;">
<h2>User Registration Form</h2>
<div class="innerlogin">
<form action="" method="post" enctype="multipart/form-data" name="form1" onsubmit="return check_it();">
    <input type="hidden" name="act" value="add">
		 
<table width="100%" height="80%" border="0" align="center" cellpadding="0" cellspacing="4">
  <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
  <tr>
    <td colspan="2" align="center" valign="middle">{$msg}</td>
  </tr>
  <tr>
    <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3 style="padding-left:10px;">Personal Information </h3></td>
    </tr>
  <tr>
    <td width="45%" align="right" valign="middle"><span class="error">*</span> Email Address:</td>
    <td width="55%" align="left" valign="middle"><input name="email" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span> First Name:</td>
    <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" />
        <!-- <a href="#" class="ari">We value your privacy</a>--></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span> Last Name:</td>
    <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span> User Name:</td>
    <td align="left" valign="middle"><input name="uname" type="text" class="txtfield" />    </td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">* </span>Password:</td>
    <td align="left" valign="middle"><input name="pwd" type="password" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span> Job Title : </td>
    <td align="left" valign="middle"><select name="jtitle" class="selfield">
        <option  value="" selected="selected">---Select---</option>
        <option value="1">Application Developer</option>
        <option value="2">C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
        <option value="3">Database Administrator</option>
        <option value="4">DBA Manager</option>
        <option value="5">Developer</option>
        <option value="6">eCommerce/eBusiness Manager</option>
        <option value="7">Exchange/Mail Administrator</option>
        <option value="8">Help Desk Staff/Manager</option>
        <option value="9">Infrastructure Architect/Manager</option>
        <option value="10">IT Applications Manager</option>
        <option value="11">IT Architect</option>
        <option value="12">IT Consultant</option>
        <option value="13">IT Director/VP</option>
        <option value="14">IT Manager</option>
        <option value="15">IT Security Director</option>
        <option value="16">Java Developer/Administrator</option>
        <option value="17">Network Administrator</option>
        <option value="18">Network Manager</option>
        <option value="19">Non IT Director/VP</option>
        <option value="20">Project Manager</option>
        <option value="21">Software Engineer</option>
        <option value="22">Student</option>
        <option value="23">Systems Administrator</option>
        <option value="24">Systems Analyst/Architect</option>
        <option value="25">Systems Engineer</option>
    </select></td>
  </tr>
  
  <tr>
    <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3 style="padding-left:10px;">Company Information  </h3></td>
    </tr>
  <tr>
    <td align="right" valign="middle"> Company : </td>
    <td align="left" valign="middle"><select name="company" id="company" class="selfield" onchange="showUser(this.value)">
    <option value="0" selected="selected">- Select -</option>
    
    {section name=lcom loop = $parray}

    <option value="{$parray[lcom].id}" >{$parray[lcom].company}</option>
    
    {/section}
    
      </select>      </td>
  </tr>
  
  <tr>
    <td align="right" valign="middle">Company Url :</td>
    <td align="left" valign="middle"><input name="companyurl" type="text" id="companyurl" class="txtfield" value="" style="font-size:11px;" /></td>
  </tr>
  
  <tr>
    <td align="right" valign="middle"> Address 1 : </td>
    <td align="left" valign="middle"><input name="address1" id="address1" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle">Address 2 :</td>
    <td align="left" valign="middle"><input name="address2" id="address2" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"> City : </td>
    <td align="left" valign="middle"><input name="city" id="city" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle">County/State/Province/Territory: </td>
    <td align="left" valign="middle"><input name="state" id="state" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle">Postal Code:</td>
    <td align="left" valign="middle"><input name="pcode" id="pcode" type="text" maxlength="10" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle">Phone:</td>
    <td align="left" valign="middle"><input name="phone" id="phone" type="text" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="right" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">
      
      <input type="image" name="submit" id="imageField" src="images/submitbtn.gif" onclick="return check_it();"  />       </td>
  </tr>
</table>
</form>
</div>
</div>
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1");
  
  frmvalidator.addValidation("email","maxlen=50","50");
  frmvalidator.addValidation("email","req","Please enter your Email Address");
  frmvalidator.addValidation("email","email","Please enter  a valid Email Address");
  
  frmvalidator.addValidation("fname","req","Please enter First Name");
  frmvalidator.addValidation("fname","alpha","Please enter First Name");
  frmvalidator.addValidation("lname","req","Please enter Last Name");
  frmvalidator.addValidation("lname","alpha","Please enter Last Name");  
  frmvalidator.addValidation("uname","req","Please enter User Name");
  frmvalidator.addValidation("uname","alnumhyphen","Please enter User Name");
  frmvalidator.addValidation("pwd","req","Please enter your Password");
   frmvalidator.addValidation("pwd","alphanumeric","Please enter your Password");
  frmvalidator.addValidation("pwd","minlen=6","Min length for password is 6");
frmvalidator.addValidation("jtitle","dontselect=0","Please Select the Job Title");
 // frmvalidator.addValidation("country","dontselect=0","Please Select the Country");
  
  frmvalidator.addValidation("company","dontselect=0","Please Select the Company");
  
 // frmvalidator.addValidation("company","req","Please enter Company Name");
  // frmvalidator.addValidation("company","alpha_s");
  
  frmvalidator.addValidation("company","req","Please enter Company Name");
    
 
  frmvalidator.addValidation("address1","req","Please enter your Address");
  frmvalidator.addValidation("address1","alnumhyphen_s","Please enter your Address");
  frmvalidator.addValidation("city","req","Please enter your City Name");
  frmvalidator.addValidation("city","alpha_s","Please enter your City Name");
  
  frmvalidator.addValidation("state","req","Please enter your State Name");
  frmvalidator.addValidation("state","alpha_s","Please enter your State Name");
  
  frmvalidator.addValidation("pcode","req","Please enter your Postal Code");
  frmvalidator.addValidation("pcode","numhyphen","Postal Code should be numberic");
  
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  
</script>