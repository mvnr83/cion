<?php /* Smarty version 2.6.5-dev, created on 2017-01-05 19:45:16
         compiled from login.tpl */ ?>
<?php echo '
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	//form.username.value.indexOf(" ") != -1
	if(frm.uname.value == \'\' || frm.uname.value.indexOf(" ") != -1 )
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == \'\' || frm.uname.value.indexOf(" ") != -1)
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}
	else
		return true;
}
</script>
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule(\'.login\', \'5px 5px 5px 5px\', true);
	DD_roundies.addRule(\'.innerlogin\', \'5px 5px 5px 5px\', true);

 
</script>
'; ?>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="titlebg" height="28"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><span class="error"><?php echo $this->_tpl_vars['msg']; ?>
</span></td>
  </tr>
  <tr>
    <td><form id="form1" name="form1" method="post" action="" onsubmit="javascript:return check();">
			<input type="hidden" name="keyword" id="keyword" value="<?php echo $this->_tpl_vars['keyword']; ?>
" />
			<input type="hidden" name="pname" id="pname" value="<?php echo $this->_tpl_vars['pname']; ?>
" />
			<input type="hidden" name="product_id" id="product_id" value="<?php echo $this->_tpl_vars['product_id']; ?>
" />
			<input type="hidden" name="download_type" id="download_type" value="<?php echo $this->_tpl_vars['downlaod_type']; ?>
" />
        <div class="login" style="width:300px;">
<h2>Log In</h2>
<div class="innerlogin">
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td width="50%" align="right">User Name :</td>
    <td align="left"><input name="uname" type="text"  id="uname" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right">Password :</td>
    <td align="left"><input name="pwd" type="password"  id="pwd" class="txtfield" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td align="left"><input type="image" name="Submit" id="imageField" src="images/login.gif" /></td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td align="left"><a href="forgotpassword.php" ><strong>Forgot your Password</strong></a></td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td align="left"><a href="register.php" ><strong>New User Sign Up</strong></a></td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td align="left">&nbsp;</td>
  </tr>
</table>
</div>
</div>
            
                </form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

<!--<table width="100%" border="1" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td colspan="2" class="titlebg" height="28">&nbsp;</td>
                </tr>
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle"><h2 class="protitle"><span>Log</span> In </h2></td><br />
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top" class="black"><?php echo $this->_tpl_vars['msg']; ?>
</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="96%" align="left" valign="top">&nbsp;</td>
            <td width="2%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top">
			</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>-->