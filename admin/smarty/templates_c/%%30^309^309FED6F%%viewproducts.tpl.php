<?php /* Smarty version 2.6.5-dev, created on 2016-11-17 17:30:01
         compiled from viewproducts.tpl */ ?>
<?php require_once(SMARTY_DIR . 'core' . DIRECTORY_SEPARATOR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'truncate', 'viewproducts.tpl', 145, false),)), $this); ?>
<?php echo '
<script language="javascript" type="text/javascript">
function check()
{
	var frm = document.form1;
	if(frm.uname.value == \'\')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == \'\')
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}
	else if(frm.fname.value == \'\')
	{
		alert("Enter First Name");
		frm.fname.focus();
		return false;
	}
	else if(frm.lname.value == \'\')
	{
		alert("Enter Last Name");
		frm.lname.focus();
		return false;
	}
	else if(frm.email.value == \'\')
	{
		alert("Enter Email");
		frm.email.focus();
		return false;
	}
	else if(frm.utype.value == \'\')
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
	frm.cname.value = \'\';
	frm.url.value = \'\';
	frm.img.value = \'\';
	frm.status.value = \'\';
}
function showproduct(id)
{
	var op = window.open("productdetails.php?uid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=650,height=500")
	op.focus();
}
function editproduct(id)
{
	var frm = document.form1;
	frm.action = "editproduct.php?uid="+id;
	frm.submit();
}
function delproduct(id)
{
	var frm = document.form1;
	if(confirm("Are you sure,Do you want to delete this Product"))
	{
		frm.act.value = \'del\';
		frm.uid.value = id;
		frm.action = \'viewproducts.php\';
		frm.submit();
	}
}
function changestat(id,st)
{
	var frm = document.form1;
	frm.uid.value = id;
	frm.st.value = st;
	frm.act.value = \'change\';
	frm.action = \'viewproducts.php\';
	frm.submit();
}
function fnOrder(id,or_id)
{
	var frm = document.form1;
	frm.order_hid.value = id;
	frm.ordder.value = or_id;
	frm.submit();
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
--><tr>
	<td colspan="3">&nbsp;</td>
</tr>
<tr>
	<td align="center" class="Sub_menu" colspan="3"><?php echo $this->_tpl_vars['msg']; ?>
</td>
</tr>
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="100%" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="uid" />
				<input type="hidden" name="st"  />
				<input type="hidden" name="order_hid" id="order_hid" value="" />
				<input type="hidden" name="ordder" id="ordder" value="" />
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="97%" border="0" align="center" cellpadding="0" cellspacing="0">
					  
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite">View Products </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td>
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
								<td align="center" valign="middle" class="Sub_menu">Product Name </td>
								<!--<td align="center" valign="middle" class="Sub_menu">Short Description </td>-->
								<td align="center" valign="middle" class="Sub_menu">Product Order</td>
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                             <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['array']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
									<tr>
										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
" /></td>
										<td class="aril" align="center"><?php echo $this->_sections['list']['rownum']; ?>
</td>
										<td class="aril" align="center"><?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['product_name']; ?>
</td>
										<!--<td class="aril" align="center"><?php echo ((is_array($_tmp=$this->_tpl_vars['array'][$this->_sections['list']['index']]['short_description'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 50) : smarty_modifier_truncate($_tmp, 50)); ?>
</td>-->
										<td class="aril" align="center"><select name="<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
" onchange="javascript: fnOrder('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
',this.value);">
										<option value="0">Select</option>
										<?php unset($this->_sections['count_list']);
$this->_sections['count_list']['name'] = 'count_list';
$this->_sections['count_list']['loop'] = is_array($_loop=$this->_tpl_vars['count']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['count_list']['show'] = true;
$this->_sections['count_list']['max'] = $this->_sections['count_list']['loop'];
$this->_sections['count_list']['step'] = 1;
$this->_sections['count_list']['start'] = $this->_sections['count_list']['step'] > 0 ? 0 : $this->_sections['count_list']['loop']-1;
if ($this->_sections['count_list']['show']) {
    $this->_sections['count_list']['total'] = $this->_sections['count_list']['loop'];
    if ($this->_sections['count_list']['total'] == 0)
        $this->_sections['count_list']['show'] = false;
} else
    $this->_sections['count_list']['total'] = 0;
if ($this->_sections['count_list']['show']):

            for ($this->_sections['count_list']['index'] = $this->_sections['count_list']['start'], $this->_sections['count_list']['iteration'] = 1;
                 $this->_sections['count_list']['iteration'] <= $this->_sections['count_list']['total'];
                 $this->_sections['count_list']['index'] += $this->_sections['count_list']['step'], $this->_sections['count_list']['iteration']++):
$this->_sections['count_list']['rownum'] = $this->_sections['count_list']['iteration'];
$this->_sections['count_list']['index_prev'] = $this->_sections['count_list']['index'] - $this->_sections['count_list']['step'];
$this->_sections['count_list']['index_next'] = $this->_sections['count_list']['index'] + $this->_sections['count_list']['step'];
$this->_sections['count_list']['first']      = ($this->_sections['count_list']['iteration'] == 1);
$this->_sections['count_list']['last']       = ($this->_sections['count_list']['iteration'] == $this->_sections['count_list']['total']);
?>
										<option value="<?php echo $this->_tpl_vars['count'][$this->_sections['count_list']['index']]; ?>
" <?php if ($this->_tpl_vars['array'][$this->_sections['list']['index']]['order_product'] == $this->_tpl_vars['count'][$this->_sections['count_list']['index']]): ?> selected<?php endif; ?>><?php echo $this->_tpl_vars['count'][$this->_sections['count_list']['index']]; ?>
</option>
										<?php endfor; endif; ?>
										</select>
										</td>
										<td class="aril" align="center"><?php if ($this->_tpl_vars['array'][$this->_sections['list']['index']]['status'] == 'Active'): ?><a href="javascript:changestat('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
','Inactive');" class="Sub_menu">Make In Active</a><?php else: ?><a href="javascript:changestat('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
','Active');" class="Sub_menu">Make Active</a><?php endif; ?></td>
                                                                                <td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showproduct('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
')" style="cursor:pointer" title="View Product Details"> / <img src="images/b_edit.png" width="20" onclick="javascript:editproduct('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
')" style="cursor:pointer"  title="Edit Product"/> / <a href="subscription_plans.php?product_id=<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
"><img src="images/subscription_plans.png" width="20" style="cursor:pointer"  title="View Subscription Plans"/></a></td>
                                                                                
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delproduct('<?php echo $this->_tpl_vars['array'][$this->_sections['list']['index']]['id']; ?>
')" style="cursor:hand" title="Delete Product" /></td>
									</tr>
							 <?php endfor; endif; ?>

                              
                              <tr>
                                <td align="right" valign="middle" colspan="8">&nbsp;</td>
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