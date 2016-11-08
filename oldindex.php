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
<meta http-equiv="x-ua-compatible" content="ie=edge" />
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



	$metatitle = 'Active Directory Manager, Enterprise Self Service, Active Directory Recovery, Active Directory Reporter, Active Directory Change Notifier, System Information &amp; Comparison - Cion Systems'; cionsystems; password; groups;



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



	$metakeywords = 'Cion active directory reports, Cion active directory, active directory reporter, active directory cleaner, self service password reset, self service password reset, active directory audit tools, active directory audit tool, Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service, password';



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
	padding-top: 2px;
	overflow: hidden;
}
a {
	outline: none;
}
.header_bg {
	background: url(images/header/header_bg.gif) repeat-x;
}
.tabberlive .tabbertabhide {
	display: none;
}
.tabber {
}
img {
	border: none;
	behavior: url(iepngfix.htc);
}
.tabberlive {
}
ul.tabbernav {
	margin: 0;
	padding: 3px 0px;
	font-size: 13px;
	vertical-align: bottom;
	position: absolute;
	margin-top: 10px;
}
ul.tabbernav li {
	list-style: none;
	margin: 0;
	display: inline;
}
ul.tabbernav li a {
	padding: 10px 13px 10px 15px;
	margin-left: 1px;
	text-decoration: none;
	background-color: #056fa6;
	font-weight: bold;
}
ul.tabbernav li a:link {
	color: #8ddfff;
	outline: none;
}
ul.tabbernav li a:visited {
	color: #fff;
}
ul.tabbernav li a:hover {
	color: #fff;
	background: #013b60;
	text-decoration: none;
}
ul.tabbernav li.tabberactive a {
	background-color: #013b60;
	color: #FFFFFF;
}
ul.tabbernav li.tabberactive a:hover {
	color: #fff;
	background: #003759;
}
.tabberlive .tabbertab {
	padding: 5px;
	color: #FFFFFF;
	font-size: 14px;
}
.tabberlive .tabbertab h2 {
	display: none;
}
.tabberlive .tabbertab h3 {
	display: none;
}
.tabberlive .tabbertab ul {
	margin: 15px 0px 0px 0px;
	padding: 0px 0px 0px 25px;
	letter-spacing: 0.3px;
}
.tabberlive .tabbertab li {
	color: #FFFFFF;
	font-size: 13px;
	margin-bottom: 10px;
}
.tabbertab_title {
	font-size: 18px;
	font-weight: bold;
	color: #fcd505;
}
.tabbertab_caption {
	font-style: italic;
	color: #7ad9ff;
	font-size: 15px;
	letter-spacing: 0.3px;
}
.margin_top {
	margin-top: 20px;
}
.tryany {
	color: #FFFFFF;
	font-size: 17px;
}
.copyright {
	height: 33px;
	text-align: center;
	color: #FFFFFF;
	background-color: #333333;
	background-image: url(images/copyrightbg.gif);
	background-repeat: repeat-x;
	background-position: left top;
}
.copyright dd {
	padding-top: 10px;
}
div#rotator {
	background-color: White;
	border: 2px solid #b8c6dd;
	margin: 0px;
	padding: 0px;
	position: relative;
}
div#rotator div.show {
	display: block;
	z-index: 1000;
}
.hide {
	display: none;
}
.list {
	float: left;
	text-align: center;
	margin-left: 10px;
}
.list ul {
	margin: 0px;
	padding: 0px;
	list-style: url(none) none;
}
.list li {
	display: block;
	text-align: left;
	padding: 3px 5px 3px 5px;
}
.list li img {
	padding: 0px 10px 0px 0px;
}
.list li:hover {
	display: block;
	text-align: left;
	padding: 3px 5px 3px 5px;
	background-color: #d5d5d5;
}
.list a:link, .list a:visited {
	font-weight: normal;
	font-size: 11px;
	text-align: left;
	color: #626262;
	padding: 3px 5px 3px 5px;
}
.list a:hover {
	text-decoration: none;
	color: #000000;
	background-color: #d5d5d5;
}
.h3Color {
	color: #333333;
}
</style>
<script type="text/javascript">



    var delayb4scroll = 800 //Specify initial delay before marquee starts to scroll on page (2000=2 seconds)



    var marqueespeed = 1 //Specify marquee scroll speed (larger is faster 1-10)



    var pauseit = 1 //Pause marquee onMousever (0=no. 1=yes)?



    var copyspeed = marqueespeed



    var pausespeed = (pauseit == 0) ? copyspeed : 0



    var actualheight = ''



    function scrollmarquee() {



        if (parseInt(cross_marquee.style.top) > (actualheight * (-1) + 8))



            cross_marquee.style.top = parseInt(cross_marquee.style.top) - copyspeed + "px"



        else



            cross_marquee.style.top = parseInt(marqueeheight) + 8 + "px"



    }



    function initializemarquee() {



        cross_marquee = document.getElementById("vmarquee")



        cross_marquee.style.top = 0



        marqueeheight = document.getElementById("marqueecontainer").offsetHeight



        actualheight = cross_marquee.offsetHeight



        if (window.opera || navigator.userAgent.indexOf("Netscape/7") != -1) { //if Opera or Netscape 7x, add scrollbars to scroll and exit



            cross_marquee.style.height = marqueeheight + "px"



            cross_marquee.style.overflow = "scroll"



            return



        }



        setTimeout('lefttime=setInterval("scrollmarquee()",30)', delayb4scroll)



    }


	/*
    if (window.addEventListener)
        window.addEventListener("load", initializemarquee, false)
    else if (window.attachEvent)
        window.attachEvent("onload", initializemarquee)
    else if (document.getElementById)
        window.onload = initializemarquee
	*/
</script>
<script type="text/javascript">



    function testdrive(id) {



        alert("Thank you. You can now login to the selected Application with the following credentials.\r\n\nUsername: admin\r\nPassword: admin\r\n\n*Use Internet Explorer 6.0 or above for optimum results.");



        if (id == 'ActiveDirectoryManager')



            var url = 'http://173.160.159.49/activedirectorymanager/userlogin.aspx';



        else if (id == 'ActiveDirectoryRecovery')



            var url = 'http://173.160.159.49/ADRecoverySetup/Default.aspx';



        else if (id == 'ActiveDirectorySelfService')



            var url = 'http://173.160.159.49/adselfservice/userlogin.aspx';



        else if (id == 'ActiveDirectoryReporter')



            var url = 'http://173.160.159.49/activedirectoryreporter/userlogin.aspx';



        window.open(url);



    }



	</script>
<link rel="shortcut icon" href="fav.ico" />
<link href="style/style.css" rel="stylesheet" media="all" />
<link href="style/slider1.css" rel="stylesheet" media="all" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="Script/roundies.js" type="text/javascript"></script>
<script type="text/javascript">



    /* varying radii, "all" browsers */



    DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true);



    DD_roundies.addRule('.greybox', '10px 10px 10px 10px', true);

    $(document).ready(function () { showSlide(1); });

    function NavigateTo(url) {

        window.location = url;

    }

</script>
<script type="text/javascript" src="Scripts/header/Slider.js"></script>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
</head>

<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="35%" height="65" style="padding-left:20px;vertical-align:bottom;"><a href="http://www.cionsystems.com" title="Cion Systems"><img src="images/logo.gif" title="Cion Systems" alt="Cion Systems" width="220" height="50" border="0" style="margin-bottom:8px;" /></a></td>
          <td width="65%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" colspan="2" align="center" valign="middle" class="toplinks"><a href="buyitnow.php" style="font-size:11px; color:#FF0000; font-weight:bold;" title="Request A Quote">Request A Quote</a></span> | <a href="mailto:support@cionsystems.com">support@cionsystems.com</a></td>
              </tr>
              <tr>
                <td align="right"><div style="margin-top:2px;float:right;margin-bottom:2px;vertical-align:middle;">
                    <form name="form1" method="post" action="" style="margin:0px; padding:0px;">
                      <?php $name = $_SESSION['username'];?>
                      <span style="padding:4px"><strong>Try FREE Tools</strong></span> 
                      <!-- <select name="jumpMenu" id="jumpMenu" onChange="return goto_download(this.value,'<?php echo $name;?>')" style="padding:3px; font-size:12px;">-->
                      <select name="jumpMenu" id="jumpMenu" onchange="javascript:location.href = this.value;" style="padding:3px; font-size:12px;">
                        <option value="#">--Select Any Product--</option>
                        <option value="http://www.cionsystems.com/downloadADDiagram.php">AD Diagram</option>
                        <?php /*?>  <?php for($i=0;$i<count($total_pro);$i++){?>
                        <?php if($total_pro[$i]['order_product'] == 1) {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Manager Pro </option>
                        <?php } elseif($total_pro[$i]['order_product'] == '3') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>" >Active Directory Recovery</option>
                        <?php }  elseif($total_pro[$i]['order_product'] == '8') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Enterprise Self-Service</option>
                        <?php }  elseif($total_pro[$i]['order_product'] == '5') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Reporter</option>
                        <?php } elseif($total_pro[$i]['order_product'] == '6') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Active Directory Change Notifier</option>
                        <?php } elseif($total_pro[$i]['order_product'] == '7') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">System Information & Comparison</option>
                        <?php } 

                             elseif($total_pro[$i]['order_product'] == '12') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Cloud Identity Minder</option>
                        <?php }

                            elseif($total_pro[$i]['order_product'] == '9') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">Cloud Identity Management Tool</option>
                        <?php } elseif($total_pro[$i]['order_product'] == '11') {?>
                        <option value="<?php echo $total_pro[$i]['id'];?>,<?php echo $total_pro[$i]['product_code'];?>">GPO Manager</option>
                        <?php }}?><?php */?>
                      </select>
                    </form>
                  </div></td>
              </tr>
              <tr>
                <td align="right"><div align="center" style="background:#FC9B20;margin-top:0px;float:right;height:25px;margin-bottom:2px;vertical-align:middle;border:solid 1px #a57901;border-radius:2px;width:85%;"><a href="http://www.cionsystems.com/active-directory-manager.php" style="font-weight:bold; font-size:13px; text-decoration:none; color:#000000;position:relative;top:25%;">New Release -  Active Directory Manager Pro Version 5.0.0.0</a> </div></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div id="menuwrapper">
              <ul id="p7menubar">
                <li><a href="index.php" title="Home">Home</a></li>
                <li> <a href="solution_all.php" class="trigger" title="Solutions">Solutions</a>
                  <ul>
                    <li><a href="cmt.php" title="DirSync for O365 | Azure">DirSync for O365 | Azure</a></li>
                    <li><a href="active_directory.php" title="Active Directory">Active Directory</a></li>
                    <li><a href="windows-management.php" title="Windows Management">Windows Management</a></li>
                    <li><a href="microsoft_exchange.php" title="Microsoft Exchange">Microsoft Exchange</a></li>
                    <li><a href="microsoft_solutions.php" title="Microsoft Office Solutions">Microsoft Office Solutions</a></li>
                    <li><a href="espm.php" title="Enterprise Security Policy Manager">Enterprise Security Policy Manager</a></li>
                  </ul>
                </li>
                <li> <a href="active-directory-tools.php" class="trigger"  title="Cion Products">Products</a>
                  <ul>
                    <li><a href="active-directory-gpomanager.php" title=" Cloud Identity Manager and self service">GPO Manager</a></li>
                    <li><a href="cim_selfservice.php" title=" Cloud Identity Manager and self service">DirSync for O365 | Azure</a></li>
                    <li><a href="active-directory-manager.php" title="Active Directory Manager">Active Directory Manager Pro</a></li>
                    <li><a href="Enterprise-Self-Service.php" title="Enterprise Self-Service">Enterprise Self-Service</a></li>
                    <li><a href="active-directory-recovery.php" title="Active Directory Recovery">Active Directory Recovery</a></li>
                    <li><a href="active-directory-reporter.php" title="Active Directory Reporter">Active Directory Reporter</a></li>
                    <li><a href="active-directory-ChangeNotifier.php" title="Active Directory Change Notifier">Active Directory Change Notifier</a></li>
                    <li><a href="Cloud_Identity_Minder.php" title="Cloud Identity Minder">Cloud Identity Minder</a></li>
                    <li><a href="SystemInformation_comparison.php" title="System Information & Comparison">System Information & Comparison</a></li>
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
                <li> <a href="http://blog.cionsystems.com/" style="border-right:none;" title="Cion Systems - Blogs">Blog</a> </li>
              </ul>
              <br style="clear: left;" />
            </div></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="27%"><h3 style="font-size:18px">Identity and access – simplified for both on premise and cloud</h3></td>
                      
                      <!--

                      <td width="58%" align="center" style="background:#fccd4d; border:solid 1px #a57901; font-weight:bold; font-size:12px;">



                          <h4 style="font-weight:bold; font-size:15px; text-decoration:none; color:#000000; margin-bottom: 1px; height: 14px;">New Version Release:</h4>
                
                <ahref="http://www.cionsystems.com/active-directory-manager.php" style="font-weight:bold; font-size:14px; text-decoration:none underline; color:#000000">Active Directory Manager PRO Version 4.0 </a><br /></td>
                
                
                
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                -->
                      
                      <td width="15%" align="right"><!-- webim button --> 
                        
                        <!--              <a href="http://www.cionsystems.com/LiveSupport/client.php?locale=en" target="_blank" onClick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 && window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('http://www.cionsystems.com/LiveSupport/client.php?locale=en&url='+escape(document.location.href)+'&referrer='+escape(document.referrer), 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;">



                        



                        <img src="http://www.cionsystems.com/LiveSupport/button.php?image=webim&lang=en" border="0" width="155" height="55"/></a>--> 
                        
                        <!-- / webim button --></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td ><input type="hidden" name="keyword" id="keyword" />
                  <input type="hidden" name="product_id" id="product_id" />
                  <input type="hidden" name="pname" id="pname" />
                  <input type="hidden" name="res_id" id="res_id" />
                  <input type="hidden" name="download_type" id="download_type" />
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                    <tr>
                      <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center" width="70%"><div class="headerslider" style="background-color:#669BCD;">
                          <div class="navigator">
                            <div id="ancher1" onclick="showSlide(1)" style="background-color: rgb(255, 255, 255);"></div>
                            <div id="ancher2" onclick="showSlide(2)" style="background-color: rgb(255, 255, 255);"></div>
                            <div id="ancher3" onclick="showSlide(3)" style="background-color: rgb(255, 255, 255);"></div>
                            <div id="ancher4" onclick="showSlide(4)" style="background-color: rgb(255, 255, 255);"></div>
                            <div id="ancher5" onclick="showSlide(5)" style="background-color: rgb(255, 255, 255);"></div>
                          </div>
                          <div class="feathereffect"></div>
                          <ul id="slider" class="slider">
                            <li class="slide1" style="display: none;" onclick="NavigateTo('http://www.cionsystems.com/active_directory.php')"></li>
                            <li class="slide2" style="display: none;" onclick="NavigateTo('http://www.cionsystems.com/windows-management.php')"></li>
                            <li class="slide3" style="display: none;" onclick="NavigateTo('http://www.cionsystems.com/cmt.php')"></li>
                            <li class="slide4" style="display: none;" onclick="NavigateTo('http://www.cionsystems.com/espm.php')"></li>
                            <li class="slide5" style="display: none;" onclick="NavigateTo('http://www.cionsystems.com/services.php')"></li>
                          </ul>
                        </div></td>
                      <td  width="30%"><div class="greybox" style="height:381px;background:#EDEDED; -webkit-border-radius: 0;border-radius:0;">
                          <div style="margin-top:30%">
                            <p style="font-size:13;color:#626262;text-align:justify;font-weight:bold">"Recently we had to make a staffing change in IT.  Following procedures, we forced a password reset on all active user accounts.  AD Notifier helped me monitor how the password changes were progressing, as I received email notifications that indicated when a specific user changed their password.  This was very helpful."</p>
                            <div align="right" style="padding:5px;"><em><strong>Pete</strong><br>
                              IT Manager Tecplot Inc.</em></div>
                          </div>
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td><table width="99%" border="0" cellspacing="0" cellpadding="5" style="margin-top:5px;">
                    <tr>
                      <td width="64%" rowspan="2" align="left" valign="top"><h3>Affordable Identity and Access Lifecycle Management Solutions</h3>
                        <p align="justify" style="padding-left:0px;">Reduce number of administrators and other high privilege accounts.<br />
                          <br />
                          Your IT budget is stretched thin and you struggle to cut support costs. It doesn't help that manual Identity administration and management, provisioning and de-provisioning processes are time-consuming. Even worse, manual implementation can be error-prone, threatening the security of your environment. <br />
                          <br />
                          Organizations can no longer rely on manual provisioning, de-provisioning, delegation and administrative processes to maintain compliance and security of Identity infrastructure. Add to that the need to simplify management, reduce costs, and tightly delegate control of Identity and access on premise and cloud among various administrative groups, today's  administrators need help! <br />
                          <br />
                          CionSystems can help. Here's how: Using our solutions reduce the administrators and high privilege account increase, you can manage users, temporary groups, OU's, Exchange and more, from a web-based interface, without the need for scripting or other complex programming. Password management and unlocking accounts is a snap. The solutions are flexible, easy to deploy and maintain. </p></td>
                      <td width="36%" valign="top"><div class="greybox" style="height:290px; width:98%; border:solid 1px #ccc;-webkit-border-radius: 0;border-radius: 0;">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td><h2><img src="images/bullet.gif" style="padding-right:3px;" /><a href="http://cionsystems.com/news-events.php" style="text-decoration:none; " title="News & Events">News &amp; Events</a></h2></td>
                            </tr>
                            <tr>
                              <td><div id="marqueecontainer" style="height:230px;">
                                  <div class="succeed" style="border:solid 0px #CCCCCC">
                                  	<ul style="margin-left:10px; padding:0px">
 <li><a href=""  title="October 2015, CionSystems™ announced the release of “automated provisioning” solution for education and other industries">October 2015, CionSystems™ announced the release of “automated provisioning” solution for education and other industries</a></li>
								<li><a href=""  title="June 2015, CionSystems™ announced the release of multi-factor authentication solution for windows and web applications">June 2015, CionSystems™ announced the release of multi-factor authentication solution for windows and web applications</a></li>
								<li><a href=""  title="March 2015, CionSystems™ announced the release of Cloud Identity Minder 4.0">March 2015, CionSystems™ announced the release of Cloud Identity Minder 4.0</a></li>
								<li><a href=""  title="January 2015, CionSystems™ and Telos Inc. enter into partnership for providing Identity and Access management software">January 2015, CionSystems™ and Telos Inc. enter into partnership for providing Identity and Access management software</a></li>
                                    <li><a href="http://cionsystems.com/press/index-18.html" title="August 8, 2014: CionSystems™ and WSIPC Enter Into Partnership For Providing Low Cost Identity and Access Management Software For School Districts">August 8, 2014: CionSystems™ and WSIPC Enter Into Partnership For Providing Low Cost Identity and Access Management Software For School Districts</a></li>
                                  	<li><a href="http://cionsystems.com/news.php#n1" title="Data Migration Management for OneDrive">Data Migration Management for OneDrive</a></li>
                                    <li><a href="http://cionsystems.com/press/index-17.html"  title="June 19, 2014: CionSystems ReleasesActive Directory Manager Reporter version 5.0">June 19, 2014: CionSystems Releases Active Directory Reporter version 5.0</a></li>
                                    <li><a href="http://cionsystems.com/press/index-16.html"  title="June 12, 2014: CionSystems ReleasesActive Directory Manager Pro version 5.0">June 12, 2014: CionSystems Releases Active Directory Manager Pro version 5.0</a></li>
                                    <li><a href="http://cionsystems.com/press/index-15.html"  title="January 6, 2014: CionSystems Releases Enterprise Self Service Version 4.0">January 6, 2014: CionSystems Releases Enterprise Self Service Version 4.0</a></li>
                                    <li><a href="http://cionsystems.com/press/index-14.html"  title="July 16, 2013: CionSystems Releases Enterprise Self Service Version 3.0">July 16, 2013: CionSystems Releases Enterprise Self Service Version 3.0 </a></li>

                                    
                                  </div>
                                </div>
                                <div style="border-top:1px dotted #eaeaea;height:15px; text-align:right"> 
                                	<a href="http://cionsystems.com/news-events.php"  title="More news and events" style="margin-right:20px; color:#F30">&raquo; More</a>
                                </div>
                            </tr>
                          </table>
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      
      <!--dock menu JS options --></td>
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
    <td align="center" valign="middle"><div class="copyright" style="background:url(images/copyrightbg.gif) repeat-x; background:#07A9EA;">
        <dd>Copyright &copy; 2014 CionSystems, Inc. All Rights Reserved.</dd>
      </div></td>
  </tr>
</table>
<div style="margin:0px auto; width:450px; padding:10px;"> <img src="images/microsoftlogo.jpg" alt="Microsoft" style="border-right:1px solid #eaeaea;" class="clogo" width="71" height="38" /> <img src="images/hplogo.jpg" title="Business Partner" class="clogo" style="border-right:1px solid #eaeaea;" width="76" height="51" /> <img src="images/ibmlogo.jpg" alt="International Business Machines" class="clogo" width="89" height="49" style="border-right:1px solid #eaeaea;" /> <img src="images/big_spark.jpg" title="Business Partner" class="clogo" width="111" height="46" /> </div>
<script type="text/javascript">







    function goto_download(id, Username) {



        var str = id;



        var explode = str.split(",");



        //alert(explode[0]);



        //document.getElementById('product_id').value = explode[0];



        //document.getElementById('keyword').value = 'trial';



       //document.getElementById('download_type').value = 'trial';



        //document.getElementById('pname').value = explode[1];



        if (Username == '' || Username == null) {



            document.form1.action = "login.php";



            //frm



            //return true;



            //window.location='login.php';



        }



        else if (Username != "") {



            //document.form1.action="tryitnow.php";



            //document.form1.action = "download.php?id=" + explode[0];
           document.form1.action = "downloadADDiagram.php;


        }



        //return true;	



        document.form1.submit();



    }



        </script> 
<script type="text/javascript">



    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");



    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));



</script> 
<script type="text/javascript">



    try {



        var pageTracker = _gat._getTracker("UA-13191513-1");



        pageTracker._trackPageview();



    } catch (err) { }</script>
</body>
</html>
<?php 



require_once("newsletter.php");



?>