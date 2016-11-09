<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr bgcolor="#F4F4F4">
    <td width="45%" height="35" align="right" valign="middle" class="fldcolor"> First Name:</td>
    <td width="2%" align="left" valign="middle">&nbsp;</td>
    <td width="53%" align="left" valign="middle">{$array[0].first_name}</td>
  </tr>
  <tr>
    <td height="35" align="right" valign="middle" class="fldcolor"> LastName:</td>
    <td align="left" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">{$array[0].last_name}</td>
  </tr>
  <tr bgcolor="#F4F4F4">
    <td height="35" align="right" valign="middle" class="fldcolor"> Email Id :</td>
    <td align="left" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">{$array[0].email}</td>
  </tr>
  <tr>
    <td height="35" align="right" valign="middle" class="fldcolor">Username :</td>
    <td align="left" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">{$array[0].username}</td>
  </tr>
  <tr bgcolor="#F4F4F4">
    <td height="35" align="right" valign="middle" class="fldcolor">Password :</td>
    <td align="left" valign="middle">&nbsp;</td>
    <td align="left" valign="middle">{$array[0].password} </td>
  </tr>
  <tr>
    <td height="35" align="right" valign="top" class="fldcolor">Job Title :</td>
    <td align="left" valign="middle">&nbsp;</td>
    <td align="left" valign="top"><select name="jtitle" class="ari sel" style="width:220px">
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
    <td colspan="3" align="right" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" align="right" valign="middle">&nbsp;</td>
  </tr>
</table>

