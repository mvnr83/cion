{literal}
<script type="text/javascript">
DD_roundies.addRule('.userpro', '10px 10px 10px 10px', true);
</script>
<script language="javascript" type="text/javascript">
function validate()
{
	var frm = document.form1;
	if(frm.email.value == '')
	{
		alert("Enter Email");
		frm.email.focus();
		return false;
	}
	else if(frm.fname.value == '')
	{
		alert("Ener First Name");
		frm.fname.focus();
		return false;
	}
	else if(frm.lname.value == '')
	{
		alert("Enter Last Name");
		frm.lname.focus();
		return false;
	}
	else if(frm.uname.value == '')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == '')
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}
	else if(frm.country.value == '')
	{
		alert("Select Country");
		frm.country.focus();
		return false;
	}
	else if(frm.company.value == '')
	{
		alert("Enter COmpany");
		frm.company.focus();
		return false;
	}
	else if(frm.jtitle.value == '')
	{
		alert("Enter Job Title");
		frm.jtitle.focus();
		return false;
	}
	else if(frm.industry.value == '')
	{
		alert("Enter Industry");
		frm.industry.focus();
		return false;
	}
	else if(frm.address1.value == '')
	{
		alert("Enter Address1");
		frm.address1.focus();
		return false;
	}
	else if(frm.city.value == '')
	{
		alert("Ener City");
		frm.city.focus();
		return false;
	}
	else if(frm.phone.value == '')
	{
		alert("Enter Phone");
		frm.phone.focus();
		return false;
	}

/*	else if(frm.servers.value == '')

	{

		alert("Enter No of Servers");

		frm.servers.focus();

		return false;

	}

	else if(frm.users.value == '')

	{

		alert("Enter No of Users");

		frm.users.focus();

		return false;

	}

	else if(frm.workstations.value == '')

	{

		alert("Enter No of Workstations");

		frm.workstations.focus();

		return false;

	}

*/	else
	{
		frm.act.value = 'edit';
		return true;
	}
}
</script>
{/literal}
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
          
          <tr>
            <td height="20" colspan="2" align="center" valign="middle" class="black">Fields marked with<span class="error"> * </span>are required.</td>
          </tr>
          <tr>
            <td colspan="2" align="center" valign="middle" class="black">{$msg}</td>
          </tr>
		  <tr>
            <td colspan="2" align="center" valign="middle" class="black">
            <div class="userpro" style="width:700px;margin:0px auto;background-color:#f2f2f2;border:1px solid #CCCCCC;">
            <form name="form1" method="post" action="" onSubmit="javascript:return validate();">
		 <input type="hidden" name="act" value="edit">
		 <table width="95%" border="0" cellspacing="4" cellpadding="0" style="">
<tr>
                    <td height="28" colspan="2" align="center" valign="middle" bgcolor="#f2f2f2" ><h3>Personal Information  </h3></td>
                    <td colspan="2" align="center" valign="middle" nowrap="nowrap" bgcolor="#f2f2f2" class="hea"><h3>Company Information  </h3></td>
           </tr>
                  <tr>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span>Email Address:</td>
                    <td align="left" valign="middle"><input name="email" type="text" class="txtfield" value="{$array[0].email}" /></td>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span> Company : </td>
                    <td align="left" valign="middle"><input name="company" type="text" class="txtfield" value="{$carray[0].company}" readonly="readonly"/></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span>First Name:</td>
                    <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" value="{$array[0].first_name}" />                    </td>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span> Job Title : </td>
                    <td align="left" valign="middle"><select name="jtitle" class="selfield" style="width:185px">
                        <option  value="">---Select---</option>
                        <option value="1" {if $array[0].job_title == '1'} selected="selected"{/if}>Application Developer</option>
                        <option value="2" {if $array[0].job_title == '2'} selected="selected"{/if}>C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
                        <option value="3" {if $array[0].job_title == '3'} selected="selected"{/if}>Database Administrator</option>
                        <option value="4" {if $array[0].job_title == '4'} selected="selected"{/if}>DBA Manager</option>
                        <option value="5" {if $array[0].job_title == '5'} selected="selected"{/if}>Developer</option>
                        <option value="6" {if $array[0].job_title == '6'} selected="selected"{/if}>eCommerce/eBusiness Manager</option>
                        <option value="7" {if $array[0].job_title == '7'} selected="selected"{/if}>Exchange/Mail Administrator</option>
                        <option value="8" {if $array[0].job_title == '8'} selected="selected"{/if}>Help Desk Staff/Manager</option>
                        <option value="9" {if $array[0].job_title == '9'} selected="selected"{/if}>Infrastructure Architect/Manager</option>
                        <option value="10" {if $array[0].job_title == '10'} selected="selected"{/if}>IT Applications Manager</option>
                        <option value="11" {if $array[0].job_title == '11'} selected="selected"{/if}>IT Architect</option>
                        <option value="12" {if $array[0].job_title == '12'} selected="selected"{/if}>IT Consultant</option>
                        <option value="13" {if $array[0].job_title == '13'} selected="selected"{/if}>IT Director/VP</option>
                        <option value="14" {if $array[0].job_title == '14'} selected="selected"{/if}>IT Manager</option>
                        <option value="15" {if $array[0].job_title == '15'} selected="selected"{/if}>IT Security Director</option>
                        <option value="16" {if $array[0].job_title == '16'} selected="selected"{/if}>Java Developer/Administrator</option>
                        <option value="17" {if $array[0].job_title == '17'} selected="selected"{/if}>Network Administrator</option>
                        <option value="18" {if $array[0].job_title == '18'} selected="selected"{/if}>Network Manager</option>
                        <option value="19" {if $array[0].job_title == '19'} selected="selected"{/if}>Non IT Director/VP</option>
                        <option value="20" {if $array[0].job_title == '20'} selected="selected"{/if}>Project Manager</option>
                        <option value="21" {if $array[0].job_title == '21'} selected="selected"{/if}>Software Engineer</option>
                        <option value="22" {if $array[0].job_title == '22'} selected="selected"{/if}>Student</option>
                        <option value="23" {if $array[0].job_title == '23'} selected="selected"{/if}>Systems Administrator</option>
                        <option value="24" {if $array[0].job_title == '24'} selected="selected"{/if}>Systems Analyst/Architect</option>
                        <option value="25" {if $array[0].job_title == '25'} selected="selected"{/if}>Systems Engineer</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span>Last Name:</td>
                    <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" value="{$array[0].last_name}" /></td>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span> Address 1 : </td>
                    <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" value="{$array[0].address1}" /></td>
           </tr>
                  <tr>
                    <td align="right" valign="middle"  nowrap="nowrap"><span class="error">*</span>User Name:</td>
                    <td align="left" valign="middle"><input name="uname" type="text" class="txtfield" value="{$array[0].username}" readonly="true" />                    </td>
                    <td align="right" valign="middle"  nowrap="nowrap">Address 2 :</td>
                    <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" value="{$array[0].address2}" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" ><span class="error">*</span>Password:</td>
                    <td align="left" valign="middle"><input name="pwd" type="password" class="txtfield" value="{$array[0].password}" readonly="true" /></td>
                    <td align="right" valign="middle" ><span class="error">*</span> City : </td>
                    <td align="left" valign="middle"><input name="city" type="text" class="txtfield" value="{$array[0].city}" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" >&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle"  nowrap="nowrap">State Province: </td>
                    <td align="left" valign="middle"><input name="state" type="text" class="txtfield" value="{$array[0].state}" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" >&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle" >Postal Code:</td>
                    <td align="left" valign="middle"><input name="pcode" type="text" class="txtfield" maxlength="10" value="{$array[0].zipcode}" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" >&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle" ><span class="error">*</span> Phone:</td>
                    <td align="left" valign="middle"><input name="phone" type="text"  class="txtfield" value="{$array[0].phone_no}" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" >&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td height="30" align="right" valign="middle" >Company Url :</td>
                    <td height="30" align="left" valign="middle" ><input name="url" type="text"  class="txtfield" value="{$array[0].company_url}" /></td>
                  </tr>
                  <tr>
                    <td colspan="2" rowspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
                    <img src="{if $partner[0].company_logo == ""}
        images/company_logo/default_logo.jpg
        {else}
        {$partner[0].company_logo}
        {/if}
        "  border="0" alt="{$partner[0].company}" />                    </td>
                    <td height="30" align="right" valign="middle" >&nbsp;</td>
                    <td height="30" align="left" valign="middle" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" valign="middle" >&nbsp;</td>
                    <td height="30" align="left" valign="middle" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" colspan="4" align="center" valign="middle" ><input type="image" name="submit2" id="imageField" src="images/submitbtn.gif" /></td>
                  </tr>
                </table>
            </form>
            </div>
            </td>
          </tr>
        </table>
