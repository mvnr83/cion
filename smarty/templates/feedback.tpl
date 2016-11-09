{literal}
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.product.value == '')
	{
		alert("Select Product");
		frm.product.focus();
		return false;
	}
	else if(frm.comment.value == '')
	{
		alert("Enter Comments");
		return false;
	}
	else
	{
		frm.act.value = 'add';
		return true;
	}
}
</script>
{/literal}
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="50%" align="left" valign="middle" class="hea">Feedback</td><br />
					<td align="right" class="black"><a href="logout.php" class="black">Log Out </a></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top" bgcolor="#F8F8F8">&nbsp;</td>
            <td width="96%" height="35" align="center" valign="middle" bgcolor="#F8F8F8" class="black1">We are eager to here from you. Please tell us what you would like to see in future version of our applications.</td>
            <td width="2%" align="left" valign="top" bgcolor="#F8F8F8">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td height="30" align="center" valign="middle" class="black">Fields marked with<span class="red"> * </span>are required.</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
		  <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td height="30" align="center" valign="middle" class="black">{$msg}</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top"><form id="form1" name="form1" method="post" action="" onsubmit="javascript: return check();">
			<input type="hidden" name="act" />
                <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/field_bg.gif" class="graystr4">
                  <tr>
                    <td colspan="3" align="right" valign="middle" class="ver11">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="37%" height="25" align="right" valign="middle" class="ver11">First Name: </td>
                    <td width="3%" align="left" valign="middle" class="red">*</td>
                    <td width="60%" align="left" valign="middle"><input name="fname" type="text" class="ver11" value="{$det[0].first_name}" readonly="true" /></td>
                  </tr>
                  <tr>
                    <td height="25" align="right" valign="middle" class="ver11">Last Name: </td>
                    <td align="left" valign="middle" class="red">*</td>
                    <td align="left" valign="middle"><input name="lname" type="text" class="ver11" value="{$det[0].last_name}" readonly="true" /></td>
                  </tr>
                  <tr>
                    <td height="25" align="right" valign="middle" class="ver11">Company:</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><input name="comp" type="text" class="ver11" value="{$det[0].company}" readonly="true" /></td>
                  </tr>
                  <tr>
                    <td height="25" align="right" valign="middle" class="ver11">Email Address: </td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><input name="email" type="text" class="ver11" value="{$det[0].email}" readonly="true" /></td>
                  </tr>
                  <tr>
                    <td height="25" align="right" valign="middle" class="ver11">Product:</td>
                    <td align="left" valign="middle" class="red">*</td>
                    <td align="left" valign="middle"><select name="product" class="ver11">
					<option value="">Select</option>
					{section  name=list loop=$array}
                        <option value="{$array[list].id}">{$array[list].product_name}</option>
					{/section}
                    </select></td>
                  </tr>
                  <tr>
                    <td colspan="3" align="right" valign="middle" class="ver11"><img src="images/5pix.gif" width="1" height="5" /></td>
                  </tr>
                  <tr>
                    <td height="32" align="right" valign="middle" class="ver11">Comments:</td>
                    <td align="left" valign="middle" class="red">*</td>
                    <td align="left" valign="middle"><textarea name="comment" wrap="virtual" class="fieldheight" rows="3" cols="40"></textarea></td>
                  </tr>
                  <tr>
                    <td height="35" align="right" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><input type="submit" name="Submit" value="Submit" />
                      &nbsp;
                      <input type="reset" name="Submit2" value="Reset" /></td>
                  </tr>
                </table>
            </form></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>