<?php /* Smarty version 2.6.5-dev, created on 2016-12-05 19:16:13
         compiled from home.tpl */ ?>
<?php require_once(SMARTY_DIR . 'core' . DIRECTORY_SEPARATOR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'ucfirst', 'home.tpl', 1, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><?php if ($this->_tpl_vars['title_dispaly'] == 'display' || $this->_tpl_vars['title_dispaly'] == ''): ?><title>::CionSystems::</title><?php else: ?> <?php echo $this->_tpl_vars['productname']; ?>
    <?php endif; ?><meta name="google-site-verification" content="Cr-BsllHBafWdF6eFS1YuGQ7qc20z0e5SUOzYUAEKVg" /><link rel="shortcut icon" href="fav.ico" /><link href="style/style.css" rel="stylesheet" media="all" /><link rel="stylesheet" type="text/css" href="ajaxtabs.css" /><script src="Scripts/ajaxtabs.js" type="text/javascript"></script><script type="text/javascript" src="Script/p7exp.js"></script><script src="Script/roundies.js" type="text/javascript"></script><!-- <script src="Script/messages.js" type="text/javascript"></script> --><script src="Scripts/validator.js" type="text/javascript"></script><script type="text/javascript">        /* varying radii, "all" browsers */        DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true); </script><script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script><script src="//community.spiceworks.com/assets/external/spice_module.js"></script></head><body><table width="900" border="0" cellspacing="0" cellpadding="0">  <tr>    <td height="85" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">        <tr>          <td height="79" style="padding-left: 20px"><a href="index.php" title="CionSystems"> <img src="images/logo.gif" width="220" height="50" border="0" alt="CionSystems"                                    title="CionSystems" /></a></td>          <td width="50%" valign="top">                            <div class="registerwrapper"><div  class="btn-wrapper">     <!-- <a href="buyitnow.php" class="btn-request">Purchase Online</a> --><?php if ($this->_tpl_vars['session_username'] == ''): ?> <a href="login.php" class="newlogin" title="Login"> LogIn</a> <a href="register.php" title="Signup" class="newRegister">Signup</a> <?php else: ?>   <div class="username"><span>Hi</span> <span class="UN"><?php echo ((is_array($_tmp=$this->_tpl_vars['session_lname'])) ? $this->_run_mod_handler('ucfirst', true, $_tmp) : ucfirst($_tmp)); ?>
</span><em></em> <div class="useraccountdd"><ul><li><a href="myaccount.php">My Account</a></li> <!-- <li><a href="myaccount.php">My Orders</a></li> --> <li><a href="myaccount.php">My Downloads</a></li> <li class="logoutNew"><a href="logout.php">Logout</a></li> </ul></div> </div><?php endif; ?> <div class="cartBlock"><span class="itemcount">0</span>Cart</div>                       </div></div>          </td>        </tr>      </table></td>  </tr>  <tr>    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">        <tr>          <td><!--<div id="menubutt">                                                                                                                         <ul>        <li><a href="#" class="white borderwhite">Home</a></li>         <li class="white"> <a href="#" class="white borderwhite">Aboutus</a></li>         <li> <a href="#" class="white borderwhite">Solutions</a></li>         <li> <a href="#" class="white borderwhite">Products</a></li>          <li> <a href="#" class="white borderwhite">Community</a> </li>         <li> <a href="#" class="white borderwhite">Downloads</a> </li>         <li> <a href="#" class="white borderwhite">Support</a> </li>         <li> <a href="#" class="white borderwhite">Partners</a> </li>         <li> <a href="#" class="white borderwhite">Careers</a> </li>         <li> <a href="#" class="white borderwhite">Blogs</a> </li>         <li><a href="#" class="white borderwhite">Contact Us</a></li>        </ul>    </div>-->                        <div id="menuwrapper">              <ul id="p7menubar">                <li><a href="index.php" title="Home">Home</a></li>                <li><a href="solution_all.php" class="trigger" title="Solutions">Solutions</a>                  <ul>                    <li><a href="cmt.php" title="DirSync for O365 | Azure">DirSync for O365 | Azure</a></li>                    <li><a href="active_directory.php" title="Active Directory">Active Directory</a></li>                    <li><a href="windows-management.php" title="Windows Management">Windows Management</a></li>                    <li><a href="microsoft_exchange.php" title="Microsoft Exchange">Microsoft Exchange</a></li>                    <li><a href="microsoft_solutions.php" title="Microsoft Office Solutions">Microsoft Office                      Solutions</a></li>                    <li><a href="espm.php" title="Enterprise Security Policy Manager">Enterprise Security Policy Manager</a></li>					<li><a href="mfauthentication.php" title="Multifactor Authentication">Multifactor Authentication</a></li>					<li><a href="ADProvisioning.php" title="Provisioning Solutions">Provisioning Solutions</a></li>					                  </ul>                </li>                <li><a href="active-directory-tools.php" class="trigger" title="Cion Products">Products</a>                  <ul>				  <li><a href="mfauthentication.php" title="Multifactor Autentication">Multifactor Autentication</a></li>				  <li><a href="active-directory-manager.php" title="Active Directory Manager">Active Directory                      Manager Pro</a></li>				  <li><a href="office365_bundle.php" title="Office365 and Azure Bundle"> Office 365 | Azure Management Simplified</a></li>                    <li><a href="active-directory-gpomanager.php" title=" Cloud Identity Manager and self service"> GPO Manager</a></li>                    <li><a href="cim_selfservice.php" title="DirSync for O365 | Azure">DirSync for O365 | Azure</a></li>                                        <li><a href="Enterprise-Self-Service.php" title="Enterprise Self-Service"> Enterprise Self-Service</a></li>                    <li><a href="active-directory-recovery.php" title="Active Directory Recovery">Active                      Directory Recovery</a></li>                    <li><a href="active-directory-reporter.php" title="Active Directory Reporter">Active                      Directory Reporter</a></li>                    <li><a href="active-directory-ChangeNotifier.php" title="Active Directory Change Notifier"> Active Directory Change Notifier</a></li>                    <li><a href="Cloud_Identity_Minder.php" title="Cloud Identity Minder">Cloud Identity Minder</a></li>                    <li><a href="SystemInformation_comparison.php" title="System Information & Comparison"> System Information & Comparison</a></li>                    <li><a href="ADProvisioning.php" title="Provisioning System"> Provisioning System</a></li>					                    <!--<li><a href="RemoteManager.php">Remote Manager</a></li>-->                  </ul>                </li>                <li><a href="support_overview.php" title="Support">Support</a> </li>                <li><a href="active-directory-tools.php" class="trigger" title="Cion Downloads">Downloads</a>                  <ul>                    <li><a href="active-directory-tools.php" title="Cion Products">Products</a></li>                    <li><a href="whitepapers.php" title="Whitepapers">Whitepapers</a></li>                    <li><a href="presentation.php" title="Archives">Archives</a></li>					                  </ul>                </li>                <li><a href="partners.php" class="trigger" title="Cion Systems - Partners">Partners</a>                  <ul>                    <li><a href="partners.php" title="Program Overview">Program Overview</a></li>                    <li><a href="partnerportal/register.php" title="Become a Partner">Become a Partner</a></li>                    <li><a href="partnerportal/" title="Cion Systems - Partner Login">Partner Login</a></li>                  </ul>                </li>                <li><a href="aboutus.php" class="trigger" title="Company">Company</a>                  <ul>                    <li><a href="aboutus.php" title="About Cion Systems">About Us</a></li>                    <li><a href="events/" title="Cion Systems - News and Events">News and Events</a></li>                    <li><a href="careers.php" title="Cion Systems - Careers">Careers</a></li>                    <li><a href="press/" title="Cion Systems - Press">Press</a></li>                    <li><a href="contactus.php" title="Contact Cion">Contact Us</a></li>                  </ul>                </li>                <li><a href="http://blog.cionsystems.com/" style="border-right: none;" title="Cion Systems - Blogs"> Blog</a> </li>              </ul>              <br style="clear: left;" />            </div></td>        </tr>        <tr>          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">              <tr>                <td height="28" align="right" valign="top" class="titlebg">                                        <!-- <table width="250" border="0" align="right" cellpadding="0" cellspacing="0" bgcolor="#cccccc">                    <tr>                      <td width="10" align="left"><img src="images/loginlf.gif" width="4" height="32" /></td>                      <td width="279" align="center"> <?php if ($this->_tpl_vars['session_username'] == ''): ?>                        <div style="float: left"> <a href="register.php" title="Signup">Not a Member ? Signup Here </a> </div>                        <div style="float: right"> <a href="login.php" title="Login"> <img src="images/loginbtn.gif" alt="login" width="75" height="17" border="0" /></a></div>                        <?php else: ?> <a href="myaccount.php" title="My Account"> <img src="images/myaccountbtn.gif" width="95" height="19" alt="My Account" title="My Account" /></a> &nbsp; <a href="logout.php" title="Logout"> <img src="images/logoutbtn.gif" width="77" height="19" alt="Logout" title="Logout" /></a> <?php endif; ?> </td>                      <td width="11" align="right"><img src="images/loginrt.gif" width="4" height="32" /></td>                    </tr>                  </table> -->                                                        </td>              </tr>              <tr>                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">                    <tr>                      <td align="left" valign="top"> <?php echo $this->_tpl_vars['content']; ?>
 </td>                    </tr>                  </table></td>              </tr>            </table></td>        </tr>      </table></td>  </tr>  <tr>    <td><table width="900" border="0" cellspacing="0" cellpadding="0">        <tr>          <td align="center" valign="middle" class="footer"><table width="70%" border="0" cellspacing="0" cellpadding="0">              <tr>                <td width="92%" height="33"><a href="http://cionsystems.com/consulting/">CionSystems Professional Services </a> &nbsp; | &nbsp;<a href="whitepapers.php">WhitePapers</a>&nbsp; | &nbsp;<a href="termsofuse.php">Terms                  of Use</a>&nbsp; | &nbsp;<a href="privacy_policy.php">Privacy Policy</a>&nbsp;                  | &nbsp;<a href="aboutus.php">About Us</a>&nbsp; | &nbsp;<a href="http://cionsystems.com/press/">Press</a>&nbsp;                  | &nbsp;<a href="http://blog.cionsystems.com/" target="_blank">BLOG</a> &nbsp;|                  &nbsp; </td>                <td width="8%" style="padding-bottom: 5px;"><a href="http://blog.cionsystems.com/?feed=rss2" target="_blank"> <img src="images/rssfeed.gif" width="42" height="19" border="0" alt="rss" /></a></td>              </tr>            </table></td>        </tr>        <tr>          <td align="center" valign="middle"><div class="copyright" style="background: url(images/copyrightbg.gif) repeat-x; background: #07A9EA;">              <dd> Copyright &copy; 2016 CionSystems, Inc. All Rights Reserved.</dd>            </div></td>        </tr>      </table></td>  </tr></table><?php echo '<script>  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');  ga(\'create\', \'UA-85152202-1\', \'auto\');  ga(\'send\', \'pageview\');</script>'; ?>
</body></html>