{literal}

<link href="css/style_sheet.css" type="text/css" rel="stylesheet"/>

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.uname.value == '')

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

	else if(frm.fname.value == '')

	{

		alert("Enter First Name");

		frm.fname.focus();

		return false;

	}

	else if(frm.lname.value == '')

	{

		alert("Enter Last Name");

		frm.lname.focus();

		return false;

	}

	else if(frm.email.value == '')

	{

		alert("Enter Email");

		frm.email.focus();

		return false;

	}

	else if(frm.utype.value == '')

	{

		alert("Select User Type");

		frm.utype.focus();

		return false;

	}

	else

		return true;

}

function clear()

{

	var frm = document.form1;

	frm.uname.value = '';

	frm.pwd.value = '';

	frm.fname.value = '';

	frm.lname.value = '';

	frm.email.value = '';

	frm.utype.value = '';

}

</script>

{/literal}

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">



	              <tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="">

                  <table width="450" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0">

					  <tr>

						<td align="center" class="Sub_menu">{$msg}</td>

					</tr>

                        <tr>

                          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> Partner EmployeeDetails<!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> Member Details </td>

                              </tr>

                          </table>--></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top"><!--<table width="410" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

                                <td width="144" align="right" valign="middle">&nbsp;</td>

                                <td width="10" align="center" valign="middle">&nbsp;</td>

                                <td width="201" align="center" valign="middle">&nbsp;</td>

                                <td width="55" align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td> 	

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="Sub_menu">User Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].user_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="Sub_menu">Password :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle" class="aril">{$array[0].password}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">First Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].first_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Last Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].last_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Email :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].email}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">User Type :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].user_type}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Created On :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].created_on}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Status :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].status}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="23" align="center" valign="middle"><a href="#"></a><a href="#"></a>

                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">

                                      <tr>

                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" /></td>

                                      </tr>

                                    </table>

                                  <a href="#"></a></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                          </table>-->
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
                                <td align="left" valign="middle" class="aril">{$array[0].first_name}                                </td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Last Name:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].last_name}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">User Name:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].username}                                </td>
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
                                <td align="right" valign="middle" class="Sub_menu">Last Login:</td>
                                <td align="left" valign="middle" class="aril"><strong>{$array[0].last_login}</strong></td>
                              </tr>
                              
                              <tr>
                              <td colspan="2">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" /></td>
                              </tr>
                          </table></td>

                        </tr>

                      </table></td>

                    </tr>

                  </table>

                                </form>

                </td>

                <td width="129" align="left" valign="top">&nbsp;</td>

              </tr>

            </table>