<?php /* Smarty version 2.6.5-dev, created on 2016-11-16 18:17:43
         compiled from editproduct.tpl */ ?>
<?php echo '
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.pname.value == \'\')
	{
		alert("Enter Product Name");
		frm.pname.focus();
		return false;
	}
	/*else if(frm.pcode.value == \'\')
	{
		alert("Enter Product Code");
		frm.pcode.focus();
		return false;
	}*/
	else if(frm.sdec.value == \'\')
	{
		alert("Enter Short Description");
		frm.sdec.focus();
		return false;
	}
	else if(frm.hfname.value == \'\')
	{
		alert("Enter Html File Name");
		frm.hfname.focus();
		return false;
	}
	/*else if(frm.im1.src == \'\')
	{
		alert("Enter Trail File Path");
		frm.tfpath.focus();
		return false;
	}
	else if(frm.im2.src == \'\')
	{
		alert("Enter Original File Path");
		frm.ofpath.focus();
		return false;
	}
	else if(frm.im3.src == \'\')
	{
		alert("Upload Product Image");
		frm.img.focus();
		return false;
	}*/
	else if(frm.status.value == \'\')
	{
		alert("Select Status");
		frm.status.focus();
		return false;
	}
	else
	{
		frm.act.value = \'edit\';
		return true;
	}
}

function clear()
{
	var frm = document.form1;
	frm.pname.value = \'\';
	frm.pcode.value = \'\';
	frm.sdec.value = \'\';
	frm.hfname.value = \'\';
	frm.tfpath.value = \'\';
	frm.ofpath.value = \'\';
	frm.img.value = \'\';
	frm.status.value = \'\';
}
</script>
'; ?>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="3">&nbsp;</td>
</tr> 
<!--<tr>

	<td align="left" class="aril" colspan="2">Logged In as:<span class="Sub_menu"><?php echo $this->_tpl_vars['session']; ?>
</span></td>

</tr>

-->  <tr>
	<td align="center" class="Sub_menu" colspan="3"><?php echo $this->_tpl_vars['msg']; ?>
</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="act" />
                  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">Edit Product </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
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
                                <td align="right" valign="middle" class="aril">Product Code  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><?php echo $this->_tpl_vars['array'][0]['product_code']; ?>
</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Product Name :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><input name="pname" type="text" class="fieldwidth" value="<?php echo $this->_tpl_vars['array'][0]['product_name']; ?>
" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                               <tr>
                                <td align="right" valign="middle" class="aril">Short Description  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><textarea rows="3" cols="30" name="sdec"><?php echo $this->_tpl_vars['array'][0]['short_description']; ?>
</textarea></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Html File Name  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="hfname" type="text" class="fieldwidth" value="<?php echo $this->_tpl_vars['array'][0]['html_file_name']; ?>
" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Trial File Path  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><img src="../trail/<?php echo $this->_tpl_vars['array'][0]['trial_file_path']; ?>
" name="im1" /><br /><input name="tfpath" type="file"  /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Original File Path  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><img src="../original/<?php echo $this->_tpl_vars['array'][0]['original_file_path']; ?>
" name="im2" /><br /><input name="ofpath" type="file" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Home Product Image  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><img src="../product_images/<?php echo $this->_tpl_vars['array'][0]['product_image']; ?>
" name="im3" /><br /><input name="home_img" type="file" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							  <tr>
                                <td align="right" valign="middle" class="aril">Download Product Image  :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><img src="../download_images/<?php echo $this->_tpl_vars['array'][0]['download_image']; ?>
" name="im3" /><br /><input name="download_img" type="file" /></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							 <tr>
                                <td align="right" valign="middle" class="aril">Status :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle"><select name="status">
								<option value="" >Select</option>
								<option value="Active" <?php if ($this->_tpl_vars['array'][0]['status'] == 'Active'): ?> selected<?php endif; ?>>Active</option>
								<option value="Inactive" <?php if ($this->_tpl_vars['array'][0]['status'] == 'Inactive'): ?> selected<?php endif; ?>>Inactive</option>
								</select></td>
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
                                        <td width="67" height="23" align="left" valign="middle"><label>
                                          <input name="submit" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/>
                                        </label></td>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="reset" class="formbutton" value="Cancel" /></td>
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