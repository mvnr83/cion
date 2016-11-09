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

                          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> User File<!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

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
                                <td align="right" valign="middle" nowrap="nowrap" class="Sub_menu">Partner Name :</td>
                                <td align="left" valign="middle" class="aril"><strong>{$company[0].company}</strong></td>
                              </tr>
                              <tr>
                                <td width="40%" align="right" valign="middle" nowrap="nowrap" class="Sub_menu">Title :</td>
                                <td width="60%" align="left" valign="middle" class="aril">{$array[0].Title}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">File :</td>
                                <td align="left" valign="middle" class="aril">{$array[0].Pfiles}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Filetype :</td>
                                <td align="left" valign="middle" class="aril">{$array[0].filetype}                                </td>
                              </tr>
                              
                              <tr>
                                <td align="right" class="Sub_menu">Status :</td>
                                <td align="left" valign="middle" class="aril">{$array[0].Pstatus}</td>
                              </tr>
                              <tr>
                                <td align="right" class="Sub_menu">Date :</td>
                                <td align="left" valign="middle" class="aril">{$array[0].Pdate|date_format:"%D"}</td>
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