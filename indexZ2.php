<?php
session_start();
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");
$sql_awards = "select * from awards where status='Active'";
$res_awards = mysql_query($sql_awards) or die(mysql_error());
$arr_awards = array();
while($fetch_awards=mysql_fetch_assoc($res_awards))
	array_push($arr_awards,$fetch_awards);
$sql_resources = "select * from resources where status='Active'";
$res_resources = mysql_query($sql_resources) or die(mysql_error());
$arr_resources = array();
while($fetch_resources=mysql_fetch_assoc($res_resources))
array_push($arr_resources,$fetch_resources);
$sql_partners = "select * from partners where status='Active'";
$res_partners = mysql_query($sql_partners) or die(mysql_error());
$arr_partners = array();
while($fetch_partners=mysql_fetch_assoc($res_partners))
array_push($arr_partners,$fetch_partners);
$sql_products = "select * from product_details where status='Active' order by order_product asc";
$res_products = mysql_query($sql_products) or die(mysql_error());
$arr_products = array();
while($fetch_products=mysql_fetch_assoc($res_products))
	array_push($arr_products,$fetch_products);
$sql_prds = "select * from product_details where status='Active' order by order_product asc";
$res_prds = @mysql_query($sql_prds);
$total_pro = array();
while($row_prds = @mysql_fetch_assoc($res_prds))
{
array_push($total_pro,$row_prds);
}
//echo "<pre>";
//print_r($total_pro);
/*if($_POST['uname'] != '')
{
$sql_chk = "select * from users where user_name = '".$_POST[uname]."'and password = '".$_POST[pwd]."'";
$res_chk = @mysql_query($sql_chk);
if(@mysql_num_rows($res_chk)>0)
	{
		$row_chk = @mysql_fetch_assoc($res_chk);
		$_SESSION[username] = $row_chk[user_name];
		$_SESSION[id] = $row_chk[id];
		header("Location: myaccount.php");
		exit();
	}
	else
	{
		$msg = "Invalid User Name/Password";
		$smarty->assign("msg",$msg);
	}
}
*/
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php
$sql_metatags = "select * from keywords where  id ='1'";
$res_metatags = mysql_query($sql_metatags) or die(mysql_error());
$arr_metatags = array();
while($fetch_metatags=mysql_fetch_assoc($res_metatags))
array_push($arr_metatags,$fetch_metatags);
if($arr_metatags[0]['metatitle']!="")
{
$metatitle = stripcslashes($arr_metatags[0]['metatitle']);
}else
{
	$metatitle = 'Active Directory Manager, Active Directory Self Service, Active Directory Recovery, Active Directory Reporter, Active Directory Change Notifier, System Information &amp; Comparison - Cion Systems';
}
if($arr_metatags[0]['metadesc']!="")
{
	$metadesc = stripcslashes($arr_metatags[0]['metadesc']);
}else
{
	$metadesc = 'The CionSystems support experience comes from our unflagging commitment to outstanding customer service. We offer customers the best experience in the industry.';
}
if($arr_metatags[0]['metakeywords']!="")
{
	$metakeywords = stripcslashes($arr_metatags[0]['metakeywords']);
}else
{
	$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool, Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service';
}
echo  "<title>".$metatitle."</title>
<meta name='keywords' content='".$metakeywords."'>
<meta name='description' content='".$metadesc."'>
";
?>
<meta name="google-site-verification" content="JIKe0_d5JHuW5NGrmWkfDJ6hPYol_fRe3NY_rJfSGDg" />
<style type="text/css">
#marqueecontainer {
	position: relative;
	width: 300px;
	height: 100px;
	background-color: #ffffff;
	padding-top:2px;
	overflow: hidden;
}

a{
	outline:none;
}

.header_bg{
	background:url(images/header/header_bg.gif) repeat-x;
}

.tabberlive .tabbertabhide {
 display:none;

}

.tabber {

}

img{
	border:none;
	behavior:url(iepngfix.htc);
}

.tabberlive {
 
}

ul.tabbernav{
 margin:0;
 padding: 3px 0px;
 font-size:13px;
}

ul.tabbernav li{
 list-style: none;
 margin: 0;
 display: inline;
}

ul.tabbernav li a{
	padding: 10px 23px 10px 22px;
	margin-left: 1px;
	text-decoration: none;
	background-color: #056fa6;
	font-weight:bold;
}

ul.tabbernav li a:link { 
	color: #8ddfff;
	outline:none;
}
ul.tabbernav li a:visited { color: #fff; }

ul.tabbernav li a:hover{
 color: #fff;
 background: #013b60;
 text-decoration:none;
}

ul.tabbernav li.tabberactive a{
 background-color: #013b60;
 color:#FFFFFF;
}

ul.tabbernav li.tabberactive a:hover{
 color: #fff;
 background: #003759;
}


.tabberlive .tabbertab {
	padding:5px;
	color:#FFFFFF;
	font-size:14px;
}

.tabberlive .tabbertab h2 {
 display:none;
}
.tabberlive .tabbertab h3 {
 display:none;
}
.tabberlive .tabbertab ul {
	margin:15px 0px 0px 0px;
	padding:0px 0px 0px 25px;
	letter-spacing:0.3px;
}
.tabberlive .tabbertab li {
	color:#FFFFFF;
	font-size:13px;
	margin-bottom:10px;
}
.tabbertab_title{
	font-size:18px;
	font-weight:bold;
	color:#fcd505;

}
.tabbertab_caption{
	font-style:italic;
	color:#7ad9ff;
	font-size:15px;
	letter-spacing:0.3px;
}
.margin_top{
	margin-top:20px;
}
.tryany{
	color:#FFFFFF;
	font-size:17px;
}

.copyright{
	height:33px;
	text-align:center;
	color:#FFFFFF;
	background-color: #333333;
	background-image: url(images/copyrightbg.gif);
	background-repeat: repeat-x;
	background-position: left top;
}
.copyright dd{
padding-top:10px;
}

</style> 
<script type="text/javascript">
var delayb4scroll=800 //Specify initial delay before marquee starts to scroll on page (2000=2 seconds)
var marqueespeed=1 //Specify marquee scroll speed (larger is faster 1-10)
var pauseit=1 //Pause marquee onMousever (0=no. 1=yes)?
var copyspeed=marqueespeed
var pausespeed=(pauseit==0)? copyspeed: 0
var actualheight=''
function scrollmarquee(){
if (parseInt(cross_marquee.style.top)>(actualheight*(-1)+8))
cross_marquee.style.top=parseInt(cross_marquee.style.top)-copyspeed+"px"
else
cross_marquee.style.top=parseInt(marqueeheight)+8+"px"
}
function initializemarquee(){
cross_marquee=document.getElementById("vmarquee")
cross_marquee.style.top=0
marqueeheight=document.getElementById("marqueecontainer").offsetHeight
actualheight=cross_marquee.offsetHeight
if (window.opera || navigator.userAgent.indexOf("Netscape/7")!=-1){ //if Opera or Netscape 7x, add scrollbars to scroll and exit
cross_marquee.style.height=marqueeheight+"px"
cross_marquee.style.overflow="scroll"
return
}
setTimeout('lefttime=setInterval("scrollmarquee()",30)', delayb4scroll)
}
if (window.addEventListener)
window.addEventListener("load", initializemarquee, false)
else if (window.attachEvent)
window.attachEvent("onload", initializemarquee)
else if (document.getElementById)
window.onload=initializemarquee
</script>
<script type="text/javascript">
function testdrive(id)
{
 alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");
if(id=='ActiveDirectoryManager')
var url='http://173.160.159.49/activedirectorymanager/userlogin.aspx';
else if(id=='ActiveDirectoryRecovery')
var url='http://173.160.159.49/ADRecoverySetup/Default.aspx';
else if(id=='ActiveDirectorySelfService')
var url='http://173.160.159.49/adselfservice/userlogin.aspx';
else if(id=='ActiveDirectoryReporter')
var url='http://173.160.159.49/activedirectoryreporter/userlogin.aspx';
	window.open(url);
	}
	</script>
<link rel="shortcut icon" href="fav.ico" />
<link href="style/style.css" rel="stylesheet" media="all" />
<!--    ***************************

        header tabing starting

        ****************************
      -->

<script type="text/javascript" src="Scripts/header/tabber.js"></script>

<script type="text/javascript">
        document.write('<style type="text/css">.tabber{display:none;}<\/style>');
        function goto_download(id,Username){ 
		var str = id;
		var explode = str.split(",");
		//alert(explode[0]);
		document.getElementById('product_id').value=explode[0];
		document.getElementById('keyword').value='trial';
		document.getElementById('download_type').value='trial';
		document.getElementById('pname').value = explode[1];
		if(Username == '' || Username == null)
		{
			document.form1.action = "login.php";
			//frm
			//return true;
			//window.location='login.php';
	}
	else if(Username!="")
		{
	//document.form1.action="tryitnow.php";
          document.form1.action="download.php?id="+explode[0];
		}
		//return true;	
		document.form1.submit();
}
        </script>
<!--
        ***************************
        header tabing starting
        ****************************
       -->
<script type="text/javascript" src="Script/p7exp.js"></script>
<script type="text/javascript" src="Script/dropdowncontent.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/interface.js"></script>
<script src="Script/roundies.js" type="text/javascript"></script>
<script src="Script/messages.js" type="text/javascript"></script>
<script type="text/javascript" src="Script/crawler.js"></script>
<script type="text/javascript">
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true);
  DD_roundies.addRule('.greybox', '10px 10px 10px 10px', true);
</script> 
<script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $('#studies_dock').Fisheye(
    				{
    					maxWidth: 120,
    					items: 'li',
    					itemsText: 'div',
    					container: '.dock-container',
    					itemWidth: 60,
    					proximity: 100,
    					alignment : 'left',
    					valign: 'bottom',
    					halign : 'center'
    				}
    			);
    			$("#studies_dock a").click(function() {
    			   var target = $(this).parent().attr("class").replace(/dock-item /,"");
    			   //openMyModal(target);
		});
            });
        </script>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
<script type="text/javascript" src="lightbox/scripts/prototype.js"></script>
<script type="text/javascript" src="lightbox/scripts/lightbox.js"></script>
</head>
<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr><td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr><td height="79" style="padding-left:20px"><a href="http://www.cionsystems.com" title="Cion Systems"><img src="images/logo.gif" title="Cion Systems" alt="Cion Systems" width="220" height="50" border="0" /></a> </td>
    <td width="50%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" colspan="2" align="center" valign="middle" class="toplinks"><a href="add_cart.php" style="font-size:11px; color:#FF0000; font-weight:bold;" title="Buy Now">Buy Now</a></span> | <a href="mailto:support@cionsystems.com">support@cionsystems.com</a></td>
      </tr>
       
    </table></td></tr></table>
  </td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div id="menuwrapper">
              <ul id="p7menubar">
                <li><a href="index.php" title="Home">Home</a></li>
                <li> <a href="solution_all.php" class="trigger" title="Solutions">Solutions</a>
                  <ul>
                    <li><a href="microsoft_bpos.php" title="Microsoft BPOS | Office365">Microsoft BPOS | Office365</a></li>
                    <li><a href="active_directory.php" title="Active Directory">Active Directory</a></li>
                    <li><a href="windows-management.php" title="Windows Management">Windows Management</a></li>
                    <li><a href="microsoft_exchange.php" title="Microsoft Exchange">Microsoft Exchange</a></li>
                    
<li><a href="microsoft_solutions.php" title="Microsoft Office Solutions">Microsoft Office Solutions</a></li>
                  </ul>
                </li>
                <li> <a href="active-directory-tools.php" class="trigger" title="Cion Products">Products</a>
                  <ul>
                 
                   <li><a href="cim_selfservice.php" title=" Cloud Identity Manager and self service">Microsoft BPOS Office365</a></li>
                    <li><a href="active-directory-manager.php" title="Active Directory Manager">Active Directory Manager</a></li>
                    <li><a href="active-directory-SelfService.php" title="Active Directory Self Service">Active Directory Self Service</a></li>
                    <li><a href="active-directory-recovery.php" title="Active Directory Recovery">Active Directory Recovery</a></li>
                    <li><a href="active-directory-reporter.php" title="Active Directory Reporter">Active Directory Reporter</a></li>
                    <li><a href="active-directory-ChangeNotifier.php" title="Active Directory Change Notifier">Active Directory Change Notifier</a></li>
                    <li><a href="SystemInformation_comparison.php" title="System Information & Comparison">System Information & Comparison</a></li>
<li><a href="products_mdms.php" title="Microsoft Office Data Management Solutions">Microsoft Office Data Management Solutions</a></li>
                    <!--<li><a href="RemoteManager.php">Remote Manager</a></li>-->
                  </ul>
                </li>
                <li> <a href="support_overview.php" title="Support">Support</a> </li>
                <li> <a href="active-directory-tools.php" class="trigger" title="Cion Downloads">Downloads</a>
                  <ul>
                    <li><a href="active-directory-tools.php" title="Cion Products">Products</a></li>
                    <li><a href="whitepapers.php" title="Whitepapers">Whitepapers</a></li>
                    <li><a href="presentation.php" title="Archives">Archives</a></li>
                  </ul>
                </li>
                <li> <a href="partners.php" class="trigger" title="Cion Systems - Partners">Partners</a>
                  <ul>
                    <li><a href="partners.php" title="Program Overview">Program Overview</a></li>
                    <li><a href="partnerportal/register.php" title="Become a Partner">Become a Partner</a></li>
                    <li><a href="partnerportal/" title="Cion Systems - Partner Login">Partner Login</a></li>
                  </ul>
                </li>
                <li> <a href="aboutus.php" class="trigger" title="Company">Company</a>
                  <ul>
                    <li><a href="aboutus.php" title="About Cion Systems">About Us</a></li>
                    <li><a href="events/" title="Cion Systems - News and Events">News and Events</a></li>
                    <li><a href="careers.php" title="Cion Systems - Careers">Careers</a></li>
                    <li><a href="press/" title="Cion Systems - Press">Press</a></li>
                    <li><a href="contactus.php" title="Contact Cion">Contact Us</a></li>
                 </ul>
                </li>
                <li> <a href="http://blog.cionsystems.com/" style="border-right:none;" title="Cion Systems - Blogs">Blogs</a> </li>
              </ul>
              <br style="clear: left;" />
            </div></td>
        </tr>
        <tr>
          <td><table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="header_bg">
              <tr>
                <td height="55" align="center" valign="middle"><form name="form1" method="post" action="" style="margin:0px; padding:0px;">
                    <input type="hidden" name="keyword" id="keyword" />
                    <input type="hidden" name="product_id" id="product_id" />
                    <input type="hidden" name="pname" id="pname" />
                    <input type="hidden" name="res_id" id="res_id" />
                    <input type="hidden" name="download_type" id="download_type" />
                    <table width="60%" border="0" align="center" cellpadding="0" cellspacing="0" class="tryany">
                      <tr>
                        <td align="right" valign="middle">Try Any Product for <strong>FREE</strong></td>
                        <td align="center" valign="top"><?php $name = $_SESSION['username'];?>
                          <select name="jumpMenu" id="jumpMenu" onChange="return goto_download(this.value,'<?php echo $name;?>')" style="padding:3px; font-size:12px;">
                            <option value="#">--Select Any Product--</option>
                            <?php for($i=0;$i<count($total_pro);$i++){?>
                            <?php if($total_pro[$i]['order_product'] == 1) {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Manager Pro </option>
                            <?php } elseif($total_pro[$i]['order_product'] == '2') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Manager </option>
                            <?php } elseif($total_pro[$i]['order_product'] == '3') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>" >Active Directory Recovery</option>
                            <?php }  elseif($total_pro[$i]['order_product'] == '8') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Self-Service</option>
                            <?php }  elseif($total_pro[$i]['order_product'] == '5') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Reporter</option>
                            <?php } elseif($total_pro[$i]['order_product'] == '6') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Change Notifier</option>
                            <?php } elseif($total_pro[$i]['order_product'] == '7') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">System Information & Comparison</option>
                            <?php } elseif($total_pro[$i]['order_product'] == '9') {?>
                            <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Cloud Identity Management Tool</option>
                            <?php } }?>
                          </select>
                        </td>
                        <td align="left" valign="middle"><img src="images/header/get_started.png" width="105" height="27"></td>
                      </tr>
                    </table>
                  </form></td>
              </tr>
              <tr>
                <td height="299" align="left" valign="top"><div class="tabber">
                
                <div class="tabbertab" style="margin-top:12px;" >
                      <h2>Microsoft BPOS | Office365</h2>
                      <table width="87%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title" height="25">Microsoft BPOS | Office 365</td>
                              </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Simple, Easy-to-use, bi-directional directory synchronization between on premise domain and Microsoft BPOS | Office 365</td>
                              </tr>
                              <tr>
                                <td align="left" valign="top">
                                <ul>
                                    <li style="margin-bottom:5px;">Real time or at schedule automatic user provisioning, de-provisioning with audit trail</li>
                                  <li style="margin-bottom:5px;">Password synchronization and self-service for password reset and account unlock via "AD Self-Service"</li>
                                  <li style="margin-bottom:5px;">Reports containing who, when, what, before and after values </li>
                                  <li style="margin-bottom:5px;">Email migration Microsoft Exchange and others to Microsoft BPOS | Office 365</li>
                                </ul></td>
                              </tr>
                          </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/cmt.png" alt="Microsoft BPOS | Office 365" width="307" height="180" /></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                            <tr>
                              <td align="center" valign="middle"><a href="buyitnow.php?product=Cloud Identity Manager and Self Service"><img src="images/header/request_quote.png" alt="Take a Test Drive Now" width="159" height="38"/></a></td>
                              <!-- <td align="center" valign="middle"><a href="scheduleademo.php?product=Cloud Identity Manager and Self Service"><img src="images/header/schedule_demo.png" alt="Take a Test Drive Now" width="159" height="38" /></a></td> -->
                              <td align="center" valign="middle"><a href="cim_selfservice.php"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More" /></a></td>
                              <td align="center" valign="middle"><a href="datasheet/CIM_datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet" /></a></td>
                              <td align="center" valign="middle"><a href="datasheet/CIM_whitepaper.pdf" target="_blank"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper" /></a></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table>
                </div>
                <div class="tabbertab">
                      <h2>AD Manager</h2>
                      <table width="87%" border="0" align="center" cellpadding="0" cellspacing="0" class="margin_top">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title">Active Directory Manager</td>
                             </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Essential secure, affordable management, reporting and compliance</td>
                             </tr>
                              <tr>
                                <td align="left" valign="top"><ul>
                                    <li>Reduce the complexity of your AD<br>
                                    </li>
                                    <li>Lower the cost of your AD operations<br>
                                    </li>
                                    <li>Comply with regulations such as SOX,PCI,etc<br>
                                    </li>
                                    <li>Secure your Active Directory and Windows infrastructure</li>
                                  </ul></td>
                              </tr>
                            </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/ad_manager.png" alt="Active Directory Manager" width="307" height="180"></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                              <tr>
                                <td align="center" valign="middle"><?php /*?><?php if(empty($_SESSION['username']))
		{?>
                                  <a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } else {?>
                                  <a href="javascript:void(0);" onClick="testdrive('ActiveDirectoryManager');"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } ?><?php */?>
                                   <a href="cart_item.php?id=5&cart=add" class="lbOn"><img src="images/header/buy_now.png" width="159" height="38" alt="Active Directory Manager"></a>                                </td>
                                <td align="center" valign="middle"><a href="active-directory-manager.php" target="_blank"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More"></a></td>
                                <td align="center" valign="middle"><a href="datasheet/ADM_Datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet"></a></td>
                                <td align="center" valign="middle"><a href="whitepapers.php"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper"></a></td>
                              </tr>
                            </table></td>
                        </tr>
                      </table>
                    </div>
                    <div class="tabbertab" >
                      <h2>AD Recovery</h2>
                     <table width="87%" border="0" align="center" cellpadding="0" cellspacing="0" class="margin_top">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title">Active Directory Recovery</td>
                              </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Quickly and Accurately Backup and Recover your Active Directory</td>
                              </tr>
                              <tr>
                                <td align="left" valign="top"><ul>
                                    <li>Schedule backups for off-peak hours for best performance<br>
                                    </li>
                                    <li>Quickly recover specific objects or attributes to eliminate downtime<br>
                                    </li>
                                    <li>Restore your AD according to Microsoft's best practies to maintain IT efficiency</li>
                                    <li>No system restart required</li>
                                  </ul></td>
                              </tr>
                            </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/ad_recovery.png" alt="Active Directory Recovery" width="307" height="180"></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                              <tr>
                                <td align="center" valign="middle"><?php /*?><?php if(empty($_SESSION['username']))
		{?>
                                  <a href="scheduleademo.php?product=ActiveDirectoryRecovery"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } else {?>
                                  <a href="javascript:void(0);" onClick="testdrive('ActiveDirectoryRecovery');"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } ?><?php */?>
                                    <a href="cart_item.php?id=12&cart=add" class="lbOn"><img src="images/header/buy_now.png" width="159" height="38" alt="Active Directory Recovery"></a>                                </td>
                                <td align="center" valign="middle"><a href="active-directory-recovery.php"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More"></a></td>
                                <td align="center" valign="middle"><a href="datasheet/ADRec_Datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet"></a></td>
                                <td align="center" valign="middle"><a href="whitepapers.php"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper"></a></td>
                              </tr>
                            </table></td>
                        </tr>
                      </table>
                    </div>
                    <div class="tabbertab" >
                      <h2>AD Self-Service</h2>
                      <table width="93%" border="0" align="center" cellpadding="0" cellspacing="0" class="margin_top">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title">Active Directory Self-Service</td>
                              </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Eliminate the single most common support issue for domain and Office 365</td>
                              </tr>
                              <tr>
                                <td align="left" valign="top"><ul>
                                    <li>Securely allow end users to reset passwords and unlock accounts</li>
                                    <li>Integrates Microsoft BPOS | Office 365</li>
                                    <li>Full audit tracking of password activity</li>
                                    <li>Maintain stronger password policies</li>
                                    <li>Lower Help Desk workload reduce cost</li>
                                </ul></td>
                              </tr>
                            </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/ad_self_service.png" alt="Active Directory Self-Service" title="Active Directory Self-Service" width="292" height="181"></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                              <tr>
                                <td align="center" valign="middle"><a href="buyitnow.php?product=Cloud Identity Manager and Self Service"><img src="images/header/request_quote.png" alt="Take a Test Drive Now" width="159" height="38" /></a></td>
                              <!--  <td align="center" valign="middle"><?php if(empty($_SESSION['username']))

		{?>
                                 <a href="scheduleademo.php?product=ActiveDirectorySelfService"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } else {?>
                                  <a href="javascript:void(0);" onClick="testdrive('ActiveDirectorySelfService');"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } ?>                                </td> -->
                                <td align="center" valign="middle"><a href="active-directory-SelfService.php"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More"></a></td>
                                <td align="center" valign="middle"><a href="datasheet/ADS_Datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet"></a></td>
                                <td align="center" valign="middle"><a href="whitepapers.php"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper"></a></td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    </div>
                    <div class="tabbertab" >
                      <h2>AD Reporter</h2>
                      <table width="87%" border="0" align="center" cellpadding="0" cellspacing="0" class="margin_top">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title">Active Directory Reporter</td>
                              </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Automate data collection and report generation </td>
                              </tr>
                              <tr>
                                <td align="left" valign="top"><ul>
                                    <li>Easily meet compliance reporting requirements</li>
                                    <li>Deep insight into Active Directory and quickly validate security settings</li>
                                    <li>Efficiently collect information on your Windows infrastructure</li>
                                    <li>Active Directory Change Notification via &quot;AD Change Notifier&quot;</li>
                                </ul></td>
                              </tr>
                            </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/ad_reporter.png" alt="Active Directory Reporter" width="307" height="181"></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                              <tr>
                                <td align="center" valign="middle"><?php /*?><?php if(empty($_SESSION['username']))
		{?>
                                  <a href="scheduleademo.php?product=ActiveDirectoryReporter"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } else {?>
                                  <a href="javascript:void(0);" onClick="testdrive('ActiveDirectoryReporter');"><img src="images/header/test_drive.png" width="189" height="38" alt="Take a Test Drive Now"></a>
                                  <?php } ?><?php */?>
                                   <a href="cart_item.php?id=1&cart=add" class="lbOn"><img src="images/header/buy_now.png" width="159" height="38" alt="Active Directory Reporter"></a>                                </td>
                                <td align="center" valign="middle"><a href="active-directory-reporter.php"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More"></a></td>
                                <td align="center" valign="middle"><a href="datasheet/ADR_Datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet"></a></td>
                                <td align="center" valign="middle"><a href="whitepapers.php"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper"></a></td>
                              </tr>
                            </table></td>
                        </tr>
                      </table>
                    </div>
                    <div class="tabbertab" >
                      <h2>AD Change Notifier</h2>
                      <table width="87%" border="0" align="center" cellpadding="0" cellspacing="0" class="margin_top">
                        <tr>
                          <td width="67%" align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td align="left" valign="top" class="tabbertab_title">Active Directory Change Notifier </td>
                              </tr>
                              <tr>
                                <td height="30" align="left" valign="middle" class="tabbertab_caption">Real-time notifications of managed and unmanaged changes</td>
                              </tr>
                              <tr>
                                <td align="left" valign="top"><ul>
                                    <li>Protect your infrastructure and limit your security exposures</li>
                                    <li>Allows IT Administrators to make critical AD decisions</li>
                                    <li>Enable quick response to unwanted AD Changes</li>
                                    <li>Reports via &quot;AD Reporter&quot;</li>
                                </ul></td>
                              </tr>
                            </table></td>
                          <td width="33%" align="right" valign="top"><img src="images/header/ad_notifier.png" alt="Active Directory Change Notifier" width="307" height="180"></td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center" valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
                              <tr>
                                <td align="center" valign="middle"><a href="cart_item.php?id=6&cart=add" class="lbOn"><img src="images/header/buy_now.png" width="159" height="38" alt="Active Directory Change Notifier"></a></td>
                              <!--  <td align="center" valign="middle"><a href="scheduleademo.php?product=ActiveDirectoryChangeNotifier"><img src="images/header/schedule_demo.png" alt="Take a Test Drive Now" width="159" height="38"></a> </td> -->
                                <td align="center" valign="middle"><a href="active-directory-ChangeNotifier.php"><img src="images/header/learn_more.png" width="159" height="38" alt="Learn More"></a></td>
                                <td align="center" valign="middle"><a href="datasheet/ADCN_Datasheet.pdf" target="_blank"><img src="images/header/datasheet.png" width="159" height="38" alt="Datasheet"></a></td>
                                <td align="center" valign="middle"><a href="whitepapers.php"><img src="images/header/whitepaper.png" width="159" height="38" alt="White Paper"></a></td>
                              
                              </tr>
                            </table></td>
                        </tr>
                      </table>
                    </div>
                    
                  </div></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="27%"><h2><span>CionSystems</span> Solutions</h2></td>
                      <td width="58%" align="center" style="background:#fccd4d; border:solid 1px #a57901; font-weight:bold; font-size:12px;"><a href="http://cionsystems.com/consulting/" style="font-weight:bold; font-size:15px; text-decoration:none; color:#000000">Professional services</a></td>

<!--
<td width="58%" align="center" style="background:#fccd4d; border:solid 1px #a57901; font-weight:bold; font-size:12px;"><a href="http://www.cionsystems.com/events/" style="font-weight:bold; font-size:15px; text-decoration:none; color:#000000">FREE 1-Day Microsoft Cloud Assessment & Proof Of Concept</a></td>   -->



                      <td width="15%" align="right"><!-- webim button -->
          <!--              <a href="http://www.cionsystems.com/LiveSupport/client.php?locale=en" target="_blank" onClick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 && window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('http://www.cionsystems.com/LiveSupport/client.php?locale=en&url='+escape(document.location.href)+'&referrer='+escape(document.referrer), 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;">
                        
                        <img src="http://www.cionsystems.com/LiveSupport/button.php?image=webim&lang=en" border="0" width="155" height="55"/></a>-->
                        <!-- / webim button --></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td class="solutions"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center"><h3>Job-Specific </h3>
                        <div id="list">
                          <ul>
                            <li><a href="it_executive.php"><img src="images/bullet1.gif" alt="IT Executive" />IT Executive</a></li>
                            <li><a href="windows-management.php"><img src="images/bullet1.gif" alt="Systems Administrator" />Systems Administrator</a></li>
                            <li><a href="compliance_specialist.php"><img src="images/bullet1.gif" alt="Security/ Compliance Specialist" />Security/ Compliance Specialist</a></li>
                            <li><a href="server_management.php"><img src="images/bullet1.gif" alt="Help Desk and other IT Personnel" />Help Desk and other IT Personnel</a> </li>
<li><a href="microsoft_solutions.php"><img src="images/bullet1.gif" alt="Finance/Tax Data Analyst" />Finance/Tax Data Analyst</a> </li>
                          </ul>
                        </div></td>
                      <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center"><h3>Business Needs </h3>
                        <div id="list">
                          <ul>
                            <li><a href="exchange_management.php"><img src="images/bullet1.gif" alt="Exchange Management" />Exchange Management</a></li>
                            <li><a href="identity_management.php"><img src="images/bullet1.gif" alt="Identity and Access Management" />Identity and Access Management</a></li>
                            <li><a href="auditing.php"><img src="images/bullet1.gif" alt="Auditing" />Auditing</a></li>
                            <li><a href="policy_management.php"><img src="images/bullet1.gif" alt="Group Policies" />Group Policies</a></li>
                            <li><a href="regulatory_compliance.php"><img src="images/bullet1.gif" alt="SOX, PCI compliance" />SOX, PCI compliance</a></li>  <li><a href="products_mdms.php"><img src="images/bullet1.gif" alt="Excel Data Management & Audit Trails " />Excel Data Management & Audit Trails</a></li>
                          </ul>
                        </div></td>
                      <td valign="top" ><h3>Technology Based </h3>
                        <div id="list">
                          <ul>
                           <li><a href="active_directory.php"><img src="images/bullet1.gif" alt="Active Directory" />Active Directory</a></li>
                            <li><a href="microsoft_exchange.php"><img src="images/bullet1.gif" alt="Microsoft Exchange" />Microsoft Exchange</a></li>
                            <li><a href="server_management.php"><img src="images/bullet1.gif" alt="Desktop/Server Management" />Desktop/Server Management</a></li>
                          </ul>
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                      <td width="64%" rowspan="2" align="left" valign="top"><h3>Affordable Active Directory Management Solutions</h3>
                        <p>Your IT budget is stretched thin and you struggle to cut support costs. It doesn't help that manual AD management and provisioning processes are time-consuming.  Even worse, manual implementation can be error-prone, threatening the security of your environment. <br />
                          <br />
                          Organizations can no longer rely on manual provisioning and administrative processes to maintain compliance and security of Active Directory. Add to that the need to simplify management, reduce costs, and tightly delegate control of Active Directory among various administrative groups, today's Active Directory administrators need help! <br />
                          <br />
                          CionSystems can help. Here's how: Using our solutions you can manage users, temporary groups, OU's, Exchange and more, from a web-based interface, without the need for scripting or other complex programming. Password management and unlocking accounts is a snap. The solutions are flexible, easy to deploy and maintain. Using them will allow you to slash more than 75% of your AD management cost. </p></td>
                      <td width="36%" valign="top"><div class="greybox" style="height:230px;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td><h2><img src="images/bullet.gif" style="padding-right:3px;" /><a href="http://cionsystems.com/newsevents.php" style="text-decoration:none; " title="News & Events">News &amp; Events</a></h2></td>
                            </tr>
                           <tr>
                              <td><div id="marqueecontainer" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed" style="height:180px;">
                                  <div id="vmarquee" style="position: absolute; width: 100%;">                               
                                   <p style="padding:10px; margin:0 0 10px 0; border:#dcdcdc 1px dotted; background:#f8f8f8; font-weight:bold; "><a href="events/index.php"  target="_blank" title="CionSystems � Webcast 02.21.2011" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'bold'" style="text-decoration:none;" >CionSystems � Webcast 02.21.2011</a></p>
                                                              
                       <a href="http://itforme.wordpress.com/2010/12/15/finally-a-practical-solution-to-protecting-active-directory/"  target="_blank" title="5 Challenges Active Directory" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" style="text-decoration:none;" >Finally. A practical solution to protecting Active Directory</a>
                                               <br /> <br />  
                                   Microsoft interviews CionSystems founder for channel 9, click on <a href="http://ch9.ms/BVGK" target="_blank" style="font-size:12px; color:#0000FF;">http://ch9.ms/BVGK</a> to see the interview<br /><br />
                                  <a href="http://cionsystems.com/press" style="text-decoration:none;" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" title="CionSystems Announces the Release of its Active Directory Reporter and Notifier Solution">CionSystems Announces the Release of its Active Directory Reporter and Notifier Solution</a><br /><br />
                                  <a href="http://cionsystems.com/press/index-7.html" style="text-decoration:none;" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" title="CionSystems Announces the Release of Active Directory Recovery">CionSystems Announces the Release of Active Directory Recovery</a><br />
                                    <br />
                                   <a href="http://cionsystems.com/press/index-6.html" style="text-decoration:none;" title="CionSystems wins the TiE award as the company Most Likely to be Successful" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems wins the TiE award as the company "Most Likely to be Successful"</a><br />
                                    <br />
                                    <a href="http://cionsystems.com/press/index-5.html" style="text-decoration:none;" title="CionSystems Releases New Version of its Active Directory Manager Pro" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems Releases New Version of its Active Directory Manager Pro</a><br />
                                    <br />
                                   <a href="http://cionsystems.com/press/index-4.html" style="text-decoration:none; " title="CionSystems Announces the Release of Active Directory Manager Pro" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems Announces the Release of Active Directory Manager Pro</a>	<br />
                                    <br />
                                    <a href="http://cionsystems.com/press/index-3.html" style="text-decoration:none; " title="CionSystems Announces the Release of Active Directory Change Notifier 2.5" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems Announces the Release of Active Directory Change Notifier 2.5</a><br />
                                    <br />
                                    <a href="http://cionsystems.com/press/index-2.html" style="text-decoration:none; " title="CionSystems releases Active Directory Change Notifier 2.0" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems releases Active Directory Change Notifier 2.0</a><br />
                                    <br />
                                    <a href="http://cionsystems.com/press/index-1.html" style="text-decoration:none; " title="CionSystems releases Active Directory Manager 2.0" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">CionSystems releases Active Directory Manager 2.0</a><br />
                                    <br />
                                    <a href="http://www.cionsystems.com/Webinar/"  target="_blank" style="text-decoration:none; " title="5 Reasons to Eliminate Password Reset & Account Unlock Calls." onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'">5 Reasons to Eliminate Password Reset & Account Unlock Calls.</a><br />
                                    <br />
                                    <a href="http://www.microsoftstartupzone.com/Blogs/Microspark-BizSpark-Startup-of-the-Day/Lists/Posts/Post.aspx?List=7764cd7b%2Dcd2b%2D4b11%2D9e28%2De6caea1181ff&amp;ID=70" target="_blank" title="July 19th, 2009- Microsoft selects CionSystems Inc. as &quot; Startup of the Day" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" style="text-decoration:none; ">July 19th, 2009- Microsoft selects CionSystems Inc. as &quot; Startup of the Day</a><br />
                                    <br />
                                    <a href="http://cionsystems.com/webinar/demo_01/demo.html"  target="_blank" title="5 Challenges Active Directory" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" style="text-decoration:none; ">5 Challenges Active Directory</a><br />
                                  </div>
                                </div>
                                <!--<a href="http://cionsystems.com/press/"><strong>CionSystems wins the TiE award as the company "Most Likely to be Successful"</strong></a><br/>-->
                                <!-- <a href="http://www.cionsystems.com/Webinar/" target="_blank"><strong> View our webinar : 5 Reasons to Eliminate Password Reset and Account Unlock Calls</strong></a><br />-->
                                <!--<a href="http://www.microsoftstartupzone.com/Blogs/Microspark-BizSpark-Startup-of-the-Day/Lists/Posts/Post.aspx?List=7764cd7b%2Dcd2b%2D4b11%2D9e28%2De6caea1181ff&amp;ID=70" target="_blank" class="impnews">July 19th, 2009- Microsoft selects CionSystems Inc. as &quot; Startup of the Day &quot;</a><br />-->
                                <!--<a href="presentation.php"><strong>View our webinar: 5 Challenges in Active Directory Management and How to Eliminate Them.</strong></a>-->
                                <!-- Since Active Directory's native tools have their limitations, other tools are often necessary. Zubair Alexander, Microsoft MVP- Directory Services, discusses 5 of the most difficult Active Directory management tasks and why they're challenging.-->
                                <div style="border-top:1px dotted #eaeaea;font-size:0px;height:5px;">
                                  <!--empty -->
                                </div>
                                <!--<p align="right" class="olink"><a href="presentation.php">&raquo; View Presentation</a></p>--></td>
                            </tr>
                          </table>
                        </div></td>
                   </tr>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <!--dock menu JS options -->
      <script type="text/javascript">
	$(document).ready(
		function()
		{
			$('#dock2').Fisheye(
				{
					maxWidth: 120,
					items: 'a',
					itemsText: 'div',
					container: '.dock-container2',
					itemWidth: 60,
					proximity: 100,
					alignment : 'left',
					valign: 'bottom',
					halign : 'center'
			}
			)
		}
	);
</script>
    </td>
  </tr>
</table>
<table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="middle" class="footer"><table width="70%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="92%" height="33"><a href="http://cionsystems.com/consulting/">CionSystems Professional Services </a>&nbsp; | &nbsp;<a href="whitepapers.php">WhitePapers</a>&nbsp; | &nbsp;<a href="termsofuse.php">Terms of Use</a>&nbsp; | &nbsp;<a href="privacy_policy.php">Privacy Policy</a>&nbsp; | &nbsp;<a href="aboutus.php">About Us</a>&nbsp; | &nbsp;<a href="http://cionsystems.com/press/">Press</a>&nbsp; | &nbsp;<a href="http://blog.cionsystems.com/" target="_blank">BLOG</a> &nbsp;| &nbsp;</td>
              <td width="8%" style="padding-bottom:5px;"><a href="http://blog.cionsystems.com/?feed=rss2" target="_blank"><img src="images/rssfeed.gif" width="42" height="19" border="0" alt="rss"/></a></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><div class="copyright" style="background:url(images/copyrightbg.gif) repeat-x; background:#333333;">
            <dd>Copyright &copy; 2011 CionSystems, Inc. All Rights Reserved.</dd>
          </div></td>
      </tr>
    </table>
<div style="margin:0px auto; width:450px; padding:10px;"> <img src="images/microsoftlogo.jpg" alt="Microsoft" style="border-right:1px solid #eaeaea;" class="clogo" width="71" height="38" /> <img src="images/hplogo.jpg" title="Business Partner" class="clogo" style="border-right:1px solid #eaeaea;" width="76" height="51" /> <img src="images/ibmlogo.jpg" alt="International Business Machines" class="clogo" width="89" height="49" style="border-right:1px solid #eaeaea;" /> <img src="images/big_spark.jpg" title="Business Partner" class="clogo" width="111" height="46" /> </div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-13191513-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>
<?php 
require_once("newsletter.php");
?>
        