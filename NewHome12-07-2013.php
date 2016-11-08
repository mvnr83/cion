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
 vertical-align:bottom;
 position:absolute;
 margin-top:10px;

}



ul.tabbernav li{

 list-style: none;

 margin: 0;

 display: inline;

}



ul.tabbernav li a{

	padding: 10px 13px 10px 15px;

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

 div#rotator
{
background-color: White;
border: 2px solid #b8c6dd;
margin: 0px;
padding: 0px;
position:relative;
}
        
div#rotator div.show
{
 display: block;
 z-index:1000;
}
.hide
{
display:none;
}

.list  {
	float: left;
	text-align: center;
	margin-left:10px;
	}
.list ul {
	margin: 0px;
	padding: 0px;
	list-style: url(none) none;
	
}
.list li {
	display: block;
	text-align: left;
	padding:3px 5px 3px 5px;
}
.list li img {

	padding:0px 10px 0px 0px;
}
.list li:hover {
	display: block;
	text-align: left;
	padding:3px 5px 3px 5px;
	background-color:#d5d5d5;
	
}
.list a:link,.list a:visited {	
	font-weight: normal;
	font-size: 11px;
	text-align: left;
	color:#626262;
	padding:3px 5px 3px 5px;	
}
.list a:hover{
text-decoration:none;
color:#000000;
background-color:#d5d5d5;
}

.h3Color
{
    color:#333333;
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

    if (window.addEventListener)

        window.addEventListener("load", initializemarquee, false)

    else if (window.attachEvent)

        window.attachEvent("onload", initializemarquee)

    else if (document.getElementById)

        window.onload = initializemarquee

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
<link href="style/screen1.css" rel="stylesheet" media="all" />










<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>



<script src="Script/roundies.js" type="text/javascript"></script>



<script type="text/javascript">

    /* varying radii, "all" browsers */

    DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true);

    DD_roundies.addRule('.greybox', '10px 10px 10px 10px', true);

</script> 
<script type="text/javascript" src="Scripts/header/general.js"></script>
<script type="text/javascript" src="Scripts/header/data.js"></script>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />

<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />




</head>

<body>

<table width="900" border="0" cellspacing="0" cellpadding="0">

  <tr><td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">

   <tr><td height="65" style="padding-left:20px;vertical-align:bottom;"><a href="http://www.cionsystems.com" title="Cion Systems"><img src="images/logo.gif" title="Cion Systems" alt="Cion Systems" width="220" height="50" border="0" /></a> </td>

    <td width="50%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">

      <tr>

        <td width="100%" colspan="2" align="center" valign="middle" class="toplinks"><a href="buyitnow.php" style="font-size:11px; color:#FF0000; font-weight:bold;" title="Request A Quote">Request A Quote</a></span> | <a href="mailto:support@cionsystems.com">support@cionsystems.com</a></td>

      </tr>
      
       

    </table></td></tr></table>

  </td>

  </tr>
  <tr><td align="right"><div align="center" style="background:#FC9B20;margin-top:-15px;float:right;height:25px;margin-bottom:4px;vertical-align:middle;border:solid 1px #a57901;border-radius:2px;width:60%;"><a href="http://www.cionsystems.com/active-directory-manager.php" style="font-weight:bold; font-size:15px; text-decoration:none; color:#000000;position:relative;top:25%;">New Release - Active Directory Manager PRO - Version 4.0.0.1</a></div></td></tr>
  <tr>

    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>

          <td><div id="menuwrapper">

              <ul id="p7menubar">

                <li><a href="index.php" title="Home">Home</a></li>

               <!-- <li> <a href="solution_all.php" class="trigger" title="Solutions">Solutions</a>

                  <ul>

                    <li><a href="microsoft_bpos.php" title="Microsoft | Office365">Microsoft | Office365</a></li>

                    <li><a href="active_directory.php" title="Active Directory">Active Directory</a></li>

                    <li><a href="windows-management.php" title="Windows Management">Windows Management</a></li>

                    <li><a href="microsoft_exchange.php" title="Microsoft Exchange">Microsoft Exchange</a></li>

                    

<li><a href="microsoft_solutions.php" title="Microsoft Office Solutions">Microsoft Office Solutions</a></li>

                  </ul>

                </li>-->

                <li> <a href="active-directory-tools.php" class="trigger"  title="Cion Products">Products</a>

                  <ul>

                 
  <li><a href="active-directory-gpomanager.php" title=" Cloud Identity Manager and self service">GPO Manager</a></li>
                   <li><a href="cim_selfservice.php" title=" Cloud Identity Manager and self service">Microsoft | Office365</a></li>

                    <li><a href="active-directory-manager.php" title="Active Directory Manager">Active Directory Manager Pro</a></li>

                    <li><a href="active-directory-SelfService.php" title="Active Directory Self Service">Active Directory Self Service</a></li>

                    <li><a href="active-directory-recovery.php" title="Active Directory Recovery">Active Directory Recovery</a></li>

                    <li><a href="active-directory-reporter.php" title="Active Directory Reporter">Active Directory Reporter</a></li>

                    <li><a href="active-directory-ChangeNotifier.php" title="Active Directory Change Notifier">Active Directory Change Notifier</a></li>

                    <li><a href="Two-Factor-Authentication.php" title="Two Factor Authentication">Two Factor Authentication</a></li>

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

                <li> <a href="http://blog.cionsystems.com/" style="border-right:none;" title="Cion Systems - Blogs">Community</a> </li>

              </ul>

              <br style="clear: left;" />

            </div></td>

        </tr>

        <tr>

          <td>
          </td>

        </tr>

        <tr>

          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">

              <tr>

                <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">

                    <tr>

                      <td width="27%"><h2><span>CionSystems</span> Solutions</h2></td>

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

                <td ><table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color: #EDEDED;">

                    <tr>

                      <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center" width="38%">
                      <table width="100%" >
                      <tr>
                      <td width="99%"><h3 class="h3Color">Active Directory Management and Monitorring:</h3>

                        <div class="list">

                          <ul>

                            <li><a href=""><img src="images/bullet1.gif" alt="ADM Pro" />Active Directory Manager Pro</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="Backup Restore" />Active Directory Backup and Restore</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="Notifier" />Active Directory Change Notifier</a></li>


                          </ul>

                        </div></td>
                      </tr>
                      <tr>
                      <td width="99%"><h3 class="h3Color">Infrastructure Management:</h3>

                        <div class="list">

                          <ul>

                            <li><a href=""><img src="images/bullet1.gif" alt="Reporter" />Reporter</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="Backup Restore" />Backup and Restore</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="Claims" />Enterprise Security Policy Suite</a></li>

                          </ul>

                        </div></td>
                      </tr>
                      <tr>
                      <td width="99%"><h3 class="h3Color">Compliance and Governance:</h3>

                        <div class="list">

                          <ul>

                            <li><a href=""><img src="images/bullet1.gif" alt="Reporter" />Reporter Compliance Suite</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="Claims" />Enterprise Security Policy Suite</a></li>

                            <li><a href=""><img src="images/bullet1.gif" alt="ADM Pro" />Active Directory Manager Pro</a></li>
                          </ul>

                        </div></td>
                      </tr>
                      </table>
                      
                      
                        
                        </td>

                      <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center" width="62%">
                      
                     <div id="details" class="base">	

			<div id="photo" class="base">

			<ul id="photos">
				<li><a href="http://www.cionsystems.com/Two-Factor-Authentication.php"><img src="images/SlideImages/mlb-1.jpg" alt="Caption 1" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-manager.php"><img src="images/SlideImages/mlb-2.jpg" alt="Caption 2" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-gpomanager.php"><img src="images/SlideImages/mlb-3.jpg" alt="Caption 3" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-manager.php"><img src="images/SlideImages/mlb-4.jpg" alt="Caption 4" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-ChangeNotifier.php"><img src="images/SlideImages/mlb-5.jpg" alt="Caption 5" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-recovery.php"><img src="images/SlideImages/mlb-6.jpg" alt="Caption 6" width="535" height="270" /></a></li>
                <li><a href="http://cionsystems.com/cim_selfservice.php"><img src="images/SlideImages/mlb-7.jpg" alt="Caption 7" width="535" height="270" /></a></li>
                <li><a href="http://www.cionsystems.com/Two-Factor-Authentication.php"><img src="images/SlideImages/mlb-8.jpg" alt="Caption 8" width="535" height="270" /></a></li>
                <li><a href="#9"><img src="images/SlideImages/mlb-9.jpg" alt="Caption 9" width="535" height="270" /></a></li>
			</ul>

			</div><!-- photo ends -->

			<div id="hover-box">

				<div id="thumbs" class="base">

				<ul>
					<li><a href="#1" class="highlight"><img src="images/SlideImages/mlb-1-thumb.jpg" alt="Caption 1" width="52" height="41" /><span></span></a></li>
					<li><a href="#2"><img src="images/SlideImages/mlb-2-thumb.jpg" alt="Caption 2" width="52" height="41" /></a></li>
					<li><a href="#3"><img src="images/SlideImages/mlb-3-thumb.jpg" alt="Caption 3" width="52" height="41" /></a></li>
					<li><a href="#4"><img src="images/SlideImages/mlb-4-thumb.jpg" alt="Caption 4" width="52" height="41" /></a></li>
					<li><a href="#5"><img src="images/SlideImages/mlb-5-thumb.jpg" alt="Caption 5" width="52" height="41" /></a></li>
					<li><a href="#6"><img src="images/SlideImages/mlb-6-thumb.jpg" alt="Caption 6" width="52" height="41" /></a></li>
                    <li><a href="#7"><img src="images/SlideImages/mlb-7-thumb.jpg" alt="Caption 7" width="52" height="41" /></a></li>
                    <li><a href="#8"><img src="images/SlideImages/mlb-8-thumb.jpg" alt="Caption 8" width="52" height="41" /></a></li>
                    <li><a href="#9"><img src="images/SlideImages/mlb-9-thumb.jpg" alt="Caption 9" width="52" height="41" /></a></li>
				</ul>

				<p>Dashboards Display configuration and status in Real Time</p>
				</div><!-- thumbs -->
	
				<div id="navigation" class="base">
				<a href="#" id="prev" class="prev-next"><span>&lt;&lt;</span> prev</a>
				<a href="#" id="play-pause" class="play pause" title="Play or Pause the slider">Play/Pause</a>
				<ul>
					<li><a href="#1" class="highlight">Story 1</a></li>
					<li><a href="#2">Story 2</a></li>
					<li><a href="#3">Story 3</a></li>
					<li><a href="#4">Story 4</a></li>
					<li><a href="#5">Story 5</a></li>
					<li><a href="#6">Story 6</a></li>
                    <li><a href="#7">Story 7</a></li>
                    <li><a href="#8">Story 8</a></li>
                    <li><a href="#9">Story 9</a></li>
				</ul>
				<a href="#" id="next" class="prev-next">next <span>&gt;&gt;</span></a>
				</div><!-- navigation -->
			</div><!-- hover box -->

			<div id="description" class="base">

				<!--<p id="small-caption">Roy Halladay struck out 11 Marlins batters and threw 115 pitches Saturday.</p>-->

				<h1 id="title"><a href="#">Dashboards Display configuration and status in Real Time</a></h1>

				<!--<p id="long-desc">Phillies ace Roy Halladay made history in Miami on Saturday, tossing the 20th perfect game in MLB history vs. the Marlins in a 1-0 win. It was the first no-hitter of Halladay's brilliant career.</p>-->
				
			</div><!-- description -->

		</div>
                      </td>

                      

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

                                   <p style="padding:10px; margin:0 0 10px 0; border:#dcdcdc 1px dotted; background:#f8f8f8; font-weight:bold; "><a href="events/index.php"  target="_blank" title="CionSystems – Webcast 02.21.2011" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'bold'" style="text-decoration:none;" >CionSystems – Webcast 02.21.2011</a></p>

                       <a href="http://cionsystems.com/press/index-9.html" style="text-decoration:none;" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" title="March 26, 2012: CionSystems Announces the Release of new version of Active Directory Manager PRO 3.0.0.5 ">March 26, 2012: CionSystems Announces the Release of new version of Active Directory Manager PRO 3.0.0.5 </a><br />

                                   <br />

                                   <a style="text-decoration:none;" onMouseOver="style.fontWeight = 'bold'" onMouseOut="style.fontWeight = 'normal'" title="March 26, 2012: CionSystems Announces the Release of new version of Active Directory Self-Service | Office 365">March 26, 2012: CionSystems Announces the Release of new version of Active Directory Self-Service | Office 365 </a><br />

                                   <br />                                       

                       

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

        <td align="center" valign="middle"><div class="copyright" style="background:url(images/copyrightbg.gif) repeat-x; background:#07A9EA;">

            <dd>Copyright &copy; 2013 CionSystems, Inc. All Rights Reserved.</dd>

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

    } catch (err) { }</script>

</body>

</html>

<?php 

require_once("newsletter.php");

?>