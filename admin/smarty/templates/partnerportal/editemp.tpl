{literal}

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.pname.value == '')

	{

		alert("Enter Product Name");

		frm.pname.focus();

		return false;

	}

	else if(frm.uname.value == '')

	{

		alert("Enter User Name");

		frm.uname.focus();

		return false;

	}

	else if(frm.nusers.value == '')

	{

		alert("Enter No of Users");

		frm.nusers.focus();

		return false;

	}

	else if(frm.nservers.value == '')

	{

		alert("Enter No of Servers");

		frm.nservers.focus();

		return false;

	}

	else if(frm.nworkstations.value == '')

	{

		alert("Enter No of Workstations");

		frm.nworkstations.focus();

		return false;

	}

	else if(frm.date.value == '')

	{

		alert("Enter Date");

		frm.date.focus();

		return false;

	}

	else if(frm.status.value == '')

	{

		alert("Select Status");

		frm.status.focus();

		return false;

	}

	else

	{

		frm.act.value = 'edit';

		return true;

	}

}

function clear()

{

	var frm = document.form1;

	frm.pname.value = '';

	frm.uname.value = '';

	frm.nusers.value = '';

	frm.nservers.value = '';

	frm.nworkstations.value = '';

	frm.date.value = '';

	frm.status.value = '';

}

	

</script>

{/literal}

<form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
  <input type="hidden" name="act" value="edit" />
  <table width="100%" border="0" cellspacing="5" cellpadding="0">
    <tr>
      <td colspan="2" align="center"><span class="Sub_menu">{$msg}</span></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><h2>Status : {$array[0].status}</h2></td>
    </tr>
    <tr>
      <td colspan="2" align="center" valign="top"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #d4ddec">
        
        <tr>
          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> Partner EmployeeDetails
              <!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> Member Details </td>

                              </tr>

                          </table>--></td>
        </tr>
        <tr>
          <td align="left" valign="top">
          
          
              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
                <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
                <tr>
                  <td height="25" colspan="2" align="left" valign="middle" class="Sub_menu"><div align="center">Partner Name : <strong>{$company[0].company}</strong></div></td>
                </tr>
                <tr>
                  <td width="48%" height="25" colspan="2" align="left" valign="middle" bgcolor="#f0f0f0" class="Sub_menu">&nbsp;&nbsp;<strong>Personal Information : </strong></td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Email Address:</td>
                  <td align="left" valign="middle" class="aril">{$array[0].email}</td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">First Name:</td>
                  <td align="left" valign="middle" class="aril">{$array[0].first_name} </td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Last Name:</td>
                  <td align="left" valign="middle" class="aril">{$array[0].last_name}</td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">User Name:</td>
                  <td align="left" valign="middle" class="aril">{$array[0].username} </td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu">Password:</td>
                  <td align="left" valign="middle" class="aril">{$array[0].password}</td>
                </tr>
                <tr>
                  <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Job Title : </td>
                  <td align="left" valign="middle"><select name="jtitle" class="ari" style="width:220px">
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
                  <td align="right" valign="middle" class="Sub_menu">Status</td>
                  <td align="left" valign="middle" ><select name="status">
            <option value="" >Select</option>
            <option value="Active" {if $array[0].status == "Active"} selected{/if}>Active</option>
            <option value="Inactive" {if $array[0].status == "Inactive"} selected{/if}>Inactive</option>
           
          </select></td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td align="left" valign="middle"><input name="submit" type="submit" class="formbutton" value="Submit"   /></td>
                </tr>
            </table>
            
            </td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width="400" valign="top" >&nbsp;</td>
      <td width="300" valign="top" >&nbsp;</td>
    </tr>
  </table>
</form>
