{literal}

{/literal}
<div style="padding:20px;" class="graystr4">
<form action="" method="post"  name="form1" onsubmit="return check_it();">
    <input type="hidden" name="act" value="addemp">
		 
<table width="100%" height="80%" border="0" align="center" cellpadding="0" cellspacing="4">
  <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
  <tr>
    <td height="30" colspan="2" align="center" valign="middle"><h2>Employee Registration Form</h2>
   
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center" valign="middle">{$msg}</td>
  </tr>
  <tr>
    <td width="45%" align="right" valign="middle" height="30"><h3>Personal Information : </h3></td>
    <td width="55%" align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span>Email Address:</td>
    <td align="left" valign="middle"><input name="email" type="text" class="ver11 con" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span>First Name:</td>
    <td align="left" valign="middle"><input name="fname" type="text" class="ver11 con" />
        <!-- <a href="#" class="ari">We value your privacy</a>--></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span>Last Name:</td>
    <td align="left" valign="middle"><input name="lname" type="text" class="ver11 con" /></td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span>User Name:</td>
    <td align="left" valign="middle"><input name="uemp" type="text" class="ver11 con" />    </td>
  </tr>
  <tr>
    <td align="right" valign="middle"><span class="error">*</span>Password:</td>
    <td align="left" valign="middle"><input name="pwdemp" type="password" class="ver11 con" /></td>
  </tr>
  
  
  <tr>
    <td align="right" valign="middle"><span class="error">*</span> Job Title : </td>
    <td align="left" valign="middle"><select name="jtitle" class="ver11 sel">
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
    <td align="right" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td align="right" valign="middle">&nbsp;</td>
    <td align="left" valign="middle"><input type="submit" name="submit" value="submit" />    </td>
  </tr>
</table>
</form>
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
  frmvalidator.addValidation("uemp","req","Please enter User Name");
  frmvalidator.addValidation("uemp","alnumhyphen","Please enter User Name");
  frmvalidator.addValidation("pwdemp","req","Please enter your Password");
   frmvalidator.addValidation("pwdemp","alphanumeric","Please enter your Password");
  frmvalidator.addValidation("pwdemp","minlen=6","Min length for password is 6");
  frmvalidator.addValidation("jtitle","dontselect=0","Please Select the Job Title");
   
  
</script>