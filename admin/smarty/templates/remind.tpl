{literal}

<link href="css/style_sheet.css" type="text/css" rel="stylesheet"/>

<script language="javascript" type="text/javascript">

function check(){
	var frm = document.form1;
	if(frm.rem.value == ''){
		alert("Field should not be empty");
		frm.uname.focus();
		return false;
	}else{
		frm.act.value = 'edit';
		return true;
	}
}

function clear(){
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
<input type="hidden" name="act" />
                          <input name="uid" type="hidden" value="{$uid}" />
                  <table width="450" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0">


                        <tr>

                          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> Comment Details<!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> Member Details </td>

                              </tr>

                          </table>--></td>
                        </tr>

                        <tr>

                          <td align="center" valign="middle"><!--<table width="410" border="0" align="center" cellpadding="0" cellspacing="0">

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
                                <td height="30" colspan="2" align="center" valign="middle" nowrap="nowrap" style="color:#009900;">{$msg}</td>
                              </tr>
                              <tr>
                                <td width="23%" align="right" valign="top" nowrap="nowrap" class="Sub_menu">Remind : </td>
                                <td width="77%" align="left" valign="middle" class="aril"><textarea name="rem" id="rem" cols="40" rows="7" style="padding:10px; font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#666666;">{$array[0].remind}
</textarea></td>
                              </tr>
                              
                              
                              
                              
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td height="40" align="left" valign="top"><input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/>
                                   <input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" /></td>
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