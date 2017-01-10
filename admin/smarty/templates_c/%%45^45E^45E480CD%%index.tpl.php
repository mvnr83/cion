<?php /* Smarty version 2.6.5-dev, created on 2017-01-04 09:20:53
         compiled from index.tpl */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>..:: Cion Systems Admin Panel ::..</title>

<?php echo '

<style type="text/css">

<!--

body {

	margin-left: 0px;

	margin-top: 0px;

	margin-right: 0px;

	margin-bottom: 0px;

}

-->

</style>
<link rel="stylesheet" href="thickbox.css" type="text/css" />
<link href="css/style_sheet.css" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-latest.js" type="text/javascript"></script>
<script src="Scripts/thickbox.js" type="text/javascript"></script>


'; ?>


</head>



<body>

<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr>

    <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>

            <td align="left" valign="top"><img src="images/header.gif" alt="Header" width="1000" height="132" /></td>

          </tr>

        </table></td>

      </tr>

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td colspan="2" align="left" valign="top">
            <?php if ($this->_tpl_vars['session'][0] != ''): ?>
           <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" class="menubg"> <table width="250" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10" align="center">&nbsp;</td>
                <td width="50%" height="27" align="center"><a href="index.php" class="selected">Website</a></td>
                
                <td width="10" align="center">|</td>
                <td width="115" align="center" class="menu"><a href="p_index.php">Partner Portal</a></td>
                </tr>
            </table></td>
    <td class="menubg2"><div style="float:right"><a href="logout.php"><img src="images/logout.gif" border="0" /></a></div></td>
  </tr>
</table>

            <?php endif; ?>
            </td>
            </tr>
          <tr>
            <td colspan="2" align="left" valign="top" height="5" bgcolor="#73c6ff"></td>
            </tr>
          <tr>

            <td width="21%" align="left" valign="top">

			<?php if ($this->_tpl_vars['session'][0] != ''): ?>
            <table width="212" border="0" cellpadding="0" cellspacing="0" background="images/left_bg.gif">

                <tr>

                  <td colspan="2" align="left" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                </tr>

				<?php if ($this->_tpl_vars['session'][1] == 'Super'): ?>

				 <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">Change Login Details </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle" >&nbsp;&nbsp;<a href="changepassword.php" class="Sub_menu">Change Password</a> </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle" class="Sub_menu">&nbsp;&nbsp;Change User Name </td>
						</tr>

					<?php endif; ?>	

						<tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle" class="Sub_menu">&nbsp;&nbsp;<a href="logout.php" class="Sub_menu">Log Out</a> </td>
						</tr>

				<?php if ($this->_tpl_vars['session'][1] == 'Super'): ?>

                 </table></td>
                </tr>

				<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

				 <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top" nowrap="nowrap"><span class="main_manu">Admin User Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="adduser.php" class="Sub_menu">Add User</a> </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewuser.php" class="Sub_menu">View/Edit User</a> </td>
						</tr>

                  </table></td>
                </tr>
					<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

				 <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top" nowrap="nowrap"><span class="main_manu">Meta Tags Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					<tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewmetatags.php" class="Sub_menu">View/Edit Meta Tags</a> </td>
						</tr>

                  </table></td>
                </tr>

				<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

                <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">Awards Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="addaward.php" class="Sub_menu">Add Awards</a> </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewawards.php" class="Sub_menu">View/Edit Awards</a> </td>
						</tr>

                  </table></td>
                </tr>

				<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

				<tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">White Papers</span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="addwhitepapers.php" class="Sub_menu">Add Whitepapers</a> </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewwhitepapers.php" class="Sub_menu">View/Edit Whitepapers</a> </td>
						</tr>

						

                  </table></td>
                </tr>

				<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

				<tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">Products Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="addproduct.php"  class="Sub_menu">Add Products</a> </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewproducts.php" class="Sub_menu">View/Edit Products</a> </td>
						</tr>

						<tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="productrequests.php" class="Sub_menu">Order Requests</a> </td>
						</tr>

                  </table></td>
                </tr>

				<tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

					<tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">Orders Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewallorders.php" class="Sub_menu">View Orders</a>  </td>
						</tr>
						
                  </table></td>
                </tr>		
				<tr>

                  <td colspan="2" align="left" valign="middle">&nbsp;</td>
                </tr>
				<tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                      <tr>

                        <td width="6%" align="left" valign="top">&nbsp;</td>

                        <td width="88%" align="left" valign="top"><span class="main_manu">Customer Management </span></td>

                        <td width="7%" align="left" valign="top">&nbsp;</td>
                      </tr>

					   <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="addcustomer.php" class="Sub_menu">Add Customers</a>  </td>
						</tr>

						 <tr>

						  <td align="left" valign="middle">&nbsp;</td>

						  <td align="left" valign="middle">&nbsp;&nbsp;<a href="viewcustomers.php" class="Sub_menu">View/Edit Customers</a> </td>
						</tr>

                  </table></td>
                </tr>

					
				<?php endif; ?>

				<tr>

                  <td colspan="2" align="left" valign="middle"></td>
                </tr>

                <tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">CMT Beta</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="cmt.php" class="Sub_menu">MembersList</a></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">NewsLetters</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="newsletter.php" class="Sub_menu">MembersList</a></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">MVP's</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="mvp.php" class="Sub_menu">MembersList</a></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Schedule a Demo</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="scheduledemo.php" class="Sub_menu">MembersList</a></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle">&nbsp;</td>
                </tr>
                
                <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Members Info </span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                  
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                      <td align="left" valign="middle">&nbsp;&nbsp;<a href="memdetails.php" class="Sub_menu">Member Details</a></td>
                    </tr>
                    
                  </table></td>
                  </tr>

                <tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
				<tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Buy(Product)</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                   
					
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><a href="buyusers.php" class="Sub_menu">View/Edit</a></td>
                      <td align="left" valign="middle">&nbsp;</td>
                    </tr>
                  </table></td>
                  </tr>
                  <tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
                <tr>

                  <td colspan="2" align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="6%" align="left" valign="top">&nbsp;</td>
                      <td width="88%" align="left" valign="top"><span class="main_manu">Product List</span></td>
                      <td width="7%" align="left" valign="top">&nbsp;</td>
                    </tr>
                   
<?php unset($this->_sections['down']);
$this->_sections['down']['name'] = 'down';
$this->_sections['down']['loop'] = is_array($_loop=$this->_tpl_vars['fetch']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['down']['show'] = true;
$this->_sections['down']['max'] = $this->_sections['down']['loop'];
$this->_sections['down']['step'] = 1;
$this->_sections['down']['start'] = $this->_sections['down']['step'] > 0 ? 0 : $this->_sections['down']['loop']-1;
if ($this->_sections['down']['show']) {
    $this->_sections['down']['total'] = $this->_sections['down']['loop'];
    if ($this->_sections['down']['total'] == 0)
        $this->_sections['down']['show'] = false;
} else
    $this->_sections['down']['total'] = 0;
if ($this->_sections['down']['show']):

            for ($this->_sections['down']['index'] = $this->_sections['down']['start'], $this->_sections['down']['iteration'] = 1;
                 $this->_sections['down']['iteration'] <= $this->_sections['down']['total'];
                 $this->_sections['down']['index'] += $this->_sections['down']['step'], $this->_sections['down']['iteration']++):
$this->_sections['down']['rownum'] = $this->_sections['down']['iteration'];
$this->_sections['down']['index_prev'] = $this->_sections['down']['index'] - $this->_sections['down']['step'];
$this->_sections['down']['index_next'] = $this->_sections['down']['index'] + $this->_sections['down']['step'];
$this->_sections['down']['first']      = ($this->_sections['down']['iteration'] == 1);
$this->_sections['down']['last']       = ($this->_sections['down']['iteration'] == $this->_sections['down']['total']);
?>
                    <tr>
                      <td align="left" valign="middle">&nbsp;</td>
                    <td align="left" valign="middle"><a href="productlist.php?pid=<?php echo $this->_tpl_vars['fetch'][$this->_sections['down']['index']]['id']; ?>
" class="Sub_menu"><?php echo $this->_tpl_vars['fetch'][$this->_sections['down']['index']]['product_name']; ?>
</a></td>
                      <td align="left" valign="middle">&nbsp;</td>
                    </tr>
                    <?php endfor; endif; ?>
                  </table></td>
                  </tr>

                <tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>

                <tr>

                  <td align="left" valign="middle">&nbsp;</td>

                  <td align="left" valign="middle" class="Sub_menu">&nbsp;</td>
                </tr>
            </table>

			<?php else: ?>

			<?php endif; ?>			</td>

            <td width="100%" align="left" valign="top"><?php echo $this->_tpl_vars['content']; ?>
</td>
            </tr>

        </table></td>

      </tr>

      <tr>

        <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>

            

            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/fut_bg.gif">

              <tr>

                <td height="39" align="center" valign="middle" class="aril" bgcolor="#D7D7D7">Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved .</td>

              </tr>

            </table></td>

          </tr>

        </table></td>

      </tr>

    </table></td>

  </tr>

</table>

</body>

</html>
