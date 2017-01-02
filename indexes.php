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

/*echo "<pre>";
print_r($arr_products);*/

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
<style type="text/css">
#marqueecontainer{
position: relative;
width: 300px;
height: 100px;
background-color: #ffffff; padding-top:2px;
overflow: hidden;
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


<meta name="description" content="CionSystems offers a proactive way to better manage the Active Directory at an affordable cost. Our enterprise customers maintain a healthy directory structure with the assurance of unparalleled visibility into their high-performing directory systems. Through the easy to use web-based interface, our AD management solutions exceed expectations and help IT organizations manage password resets and account unlocks, provisioning and deprovisioning, temporary users and groups, Exchange and much more.">

<meta name="keywords" content="Active Directory, Group Policy Tools, GPO tools, active directory management, group policy management, active directory reports, windows server, user provisioning, identity management, access management, IAM, password management, change notification, self service"> 

<title>Active Directory Solutions | CionSystems</title>
<link rel="shortcut icon" href="fav.ico" />
<link href="style/style.css" rel="stylesheet" media="all" />

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
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
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
</head>

<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="85" valign="bottom">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="79" style="padding-left:20px"><a href="http://www.cionsystems.com"><img src="images/logo.gif" title="CionSystems" width="220" height="50" border="0" /></a></td>
        <td width="50%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="middle" class="toplinks"><a href="buynow.php" style="font-size:11px; color:#FF0000; font-weight:bold;">BUY IT NOW</a></span> | 
            <a href="javascript:void(0)" onClick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Signup for the Quarterly Newsletter</a> | <a href="contactus.php">Contact</a></td>
          
          </tr>
          <tr>
            <td height="35" align="center" valign="middle">
           <table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td align="center"><a href="#" id="status" rel="subcontent"><img src="images/langselect.gif" alt="Language Select" width="124" height="22" border="0" /></a>
 <div id="subcontent" style="position:absolute; visibility: hidden; width: 125px; border:1px solid #ccc; background-color:#f1f1f1;">
 <table width="100%" border="0" cellspacing="4" cellpadding="0">
  <tr>
    <td align="left"><abbr title="ترجمة الى العربية"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Car" rel="nofollow">Arabic</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Превод на български"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cbg" rel="nofollow">Bulgarian</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="翻译，以简体中文"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Czh-CN" rel="nofollow">Chinese (Simplified)</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="翻譯，以中國傳統"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Czh-TW" rel="nofollow">Chinese (Traditional)</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Prevedi na hrvatski"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Chr" rel="nofollow">Croatian</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Přeložit do češtiny"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Ccs" rel="nofollow">Czech</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Oversæt til dansk"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cda" rel="nofollow">Danish</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Vertaal naar Nederlands"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cnl" rel="nofollow">Nederlands</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Muunna suomi"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cfi" rel="nofollow">Suomi</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Traduire en Français"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cfr" rel="nofollow">French</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Übersetze auf Deutsch"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cde" rel="nofollow">German</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Μεταφράστε στα ελληνικά"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cel" rel="nofollow">Greek</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="हिन्दी अनुवाद करने के लिए"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Chi" rel="nofollow">Hindi</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Traduci in italiano"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cit" rel="nofollow">Italiano</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="を日本語に翻訳します"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cja" rel="nofollow">Japanese</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="한국의 번역합니다"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cko" rel="nofollow">Korean</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Oversett til norsk"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cno" rel="nofollow">Norwegian</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Tłumaczenie na Polski"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cpl" rel="nofollow">Polski</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Traduzir para Português"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cpt" rel="nofollow">Portuguese</a></abbr></td>
  </tr>
  <tr>
    <td align="left"><abbr title="Traduceţi la români"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cro" rel="nofollow">Romanian</a></abbr></td>
  </tr>
  <tr>
  <td align="left"><abbr title="Перевести на русский язык"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Cru" rel="nofollow">Russian</a></abbr></td>
  </tr>
  <tr>
  <td align="left"><abbr title="Traducir al español"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Ces" rel="nofollow">Spanish</a></abbr></td>
  </tr>
<tr>
  <td align="left"><abbr title="Översätt till svenska"><a href="http://translate.google.com/translate?u=<?php echo urlencode('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']); ?>&amp;langpair=en%7Csv" rel="nofollow">Swedish</a></abbr></td>
  </tr>

</table>
                </div>
              <script type="text/javascript">
//Call dropdowncontent.init("anchorID", "positionString", glideduration, "revealBehavior") at the end of the page:
dropdowncontent.init("status", "right-bottom", 500, 'mouseover')
          </script></td>
  </tr>
</table>

          
            
            <!--<table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="70"><img src="images/search.gif" alt="SEARCH" width="55" height="12" /></td>
                <td  class="searchtxt_bg"><input type="text" name="textfield" class="searchtxt" id="textfield" /></td>
                <td align="left" style="padding-bottom:1px;"><input type="image" name="imageField" id="imageField" src="images/searchbtn.gif" /></td>
              </tr>
            </table>--></td>
          </tr>
          <tr>
            <td align="center"><span style="padding-right:20px;font-family:Verdana, Arial, Helvetica, sans-serif">
              <SCRIPT Language="JavaScript">
<!-- hide from old browsers
  var curDateTime = new Date()
  document.write(curDateTime.toLocaleString())
//-->
</SCRIPT></span></td>
          </tr>
        </table></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>
        <!--<div id="menubutt">
                                                                                                                 
        <ul>
        <li><a href="#" class="white borderwhite">Home</a></li>
         <li class="white"> <a href="#" class="white borderwhite">Aboutus</a></li>
         <li> <a href="#" class="white borderwhite">Solutions</a></li>
         <li> <a href="#" class="white borderwhite">Products</a></li> 
         <li> <a href="#" class="white borderwhite">Community</a> </li>
         <li> <a href="#" class="white borderwhite">Downloads</a> </li>
         <li> <a href="#" class="white borderwhite">Support</a> </li>
         <li> <a href="#" class="white borderwhite">Partners</a> </li>
         <li> <a href="#" class="white borderwhite">Careers</a> </li>
         <li> <a href="#" class="white borderwhite">Blogs</a> </li>
         <li><a href="#" class="white borderwhite">Contact Us</a></li>
        </ul>
    </div>-->
     <div id="menuwrapper">
                                                                                                                 
        <ul id="p7menubar">
        <li><a href="index.php" >Home</a></li>
         <li> <a href="#" class="trigger">Solutions</a>
          <ul>
			<li><a href="active_directory.php">Active Directory</a></li>
			<li><a href="windows-management.php">Windows Management</a></li>
            <li><a href="microsoft_exchange.php">Microsoft Exchange</a></li>
          </ul>
          </li>
         <li> <a href="#" class="trigger">Products</a>
         <ul>
			<li><a href="active-directory-manager.php">Active Directory Manager</a></li>
			<li><a href="active-directory-SelfService.php">Active Directory Self Service</a></li>
            <li><a href="active-directory-recovery.php">Active Directory Recovery</a></li>
            <li><a href="active-directory-reporter.php">Active Directory Reporter</a></li>
            <li><a href="active-directory-ChangeNotifier.php">Active Directory Change Notifier</a></li>
            <li><a href="SystemInformation_comparison.php">System Information & Comparison</a></li>
            <!--<li><a href="RemoteManager.php">Remote Manager</a></li>-->
            
          </ul>
         </li> 
<li> <a href="support_overview.php">Support</a> </li>
         <li> <a href="#" class="trigger">Downloads</a> 
         <ul>
			<li><a href="active-directory-tools.php">Products</a></li>
			<li><a href="whitepapers.php">Whitepapers</a></li>
            <li><a href="presentation.php">Archives</a></li>
          </ul>
         </li>
         
         <li> <a href="#" class="trigger">Partners</a> 
         <ul>
			<li><a href="partners.php">Program Overview</a></li>
			<li><a href="partnerportal/register.php">Become a Partner</a></li>
            <li><a href="partnerportal/">Partner Login</a></li>
          </ul>
         </li>
         <li> <a href="#" class="trigger">Company</a> 
         <ul>
			<li><a href="aboutus.php">About Us</a></li>
			<li><a href="events/">News and Events</a></li>
            <li><a href="careers.php">Careers</a></li>
            <li><a href="press/">Press</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>
         </li>
        <li> <a href="http://blog.cionsystems.com/" style="border-right:none;">Blogs</a> </li>
        </ul>
        <br style="clear: left;" />
    </div>
    
    </td>
      </tr>
      <tr>
        <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="flashbox"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><!--url's used in the movie-->
            <!--text used in the movie-->
            <!--
<p align="left"><font face="arial" size="10" color="#ffffff" letterSpacing="0.000000" kerning="1">99%</font></p>
-->
            <!-- saved from url=(0013)about:internet -->
            <script language="JavaScript" type="text/javascript">
	if (AC_FL_RunContent == 0) {
		alert("This page requires AC_RunActiveContent.js.");
	} else {
		AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0','width','900','height','330','id','cionflash','align','middle','src','cionflash','quality','high','wmode','transparent','bgcolor','#ffffff','name','cionflash','allowscriptaccess','sameDomain','allowfullscreen','false','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','cionflash' ); //end AC code
	}
            </script>
            <noscript>
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="900" height="330" id="cionflash" align="middle">
              <param name="allowScriptAccess" value="sameDomain" />
              <param name="allowFullScreen" value="false" />
              <param name="movie" value="cionflash.swf" />
              <param name="quality" value="high" />
              <param name="wmode" value="transparent" />
              <param name="bgcolor" value="#ffffff" />
              <embed src="cionflash.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="900" height="330" name="cionflash" align="middle" allowscriptaccess="sameDomain" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />            
</object>
            </noscript></td>
      </tr>
      <tr>
        <td><div id="studies_dock">
            <ul style="left: 120px; width: 720px;" class="dock-container">
              <li style="width: 60px; left: 0px;" class="dock-item csh1"> <a href="active-directory-manager.php" title="View this case study"><img src="images/adm.png" title="Active Directory Manager" alt="Active Directory Manager" /></a>
                  <div>Active Directory Manager</div>
              </li>
              <li style="width: 60px; left: 60px;" class="dock-item csh2"> <a href="active-directory-SelfService.php" title="View this case study"><img src="images/ads.png" alt="Active Directory SelfServices" /></a>
                  <div>Active Directory SelfServices</div>
              </li>
              <li style="width: 60px; left: 120px;" class="dock-item csh3"> <a href="active-directory-reporter.php" title="View this case study"><img src="images/adr.png" alt="Active Directory Reporter" /></a>
                  <div>Active Directory Reporter</div>
              </li>
              <li style="width: 60px; left: 180px;" class="dock-item csh4"> <a href="active-directory-ChangeNotifier.php" title="View this case study"><img src="images/adcn.png" alt="Active Directory Change Notifier" /></a>
                  <div>Active Directory Change Notifier</div>
              </li>
              <li style="width: 60px; left: 240px;" class="dock-item csh5"> <a href="SystemInformation_comparison.php" title="View this case study"><img src="images/sic.png" alt="System Information and Comparison " title="System Information and Comparison" /></a>
                  <div>System Information and Comparison </div>
              </li>
            </ul>
          <!-- /.dock-container -->
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><h2><span>CionSystems</span> Solutions</h2></td>
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
                    </ul>
                  </div></td>
              <td valign="top" style="background:url(images/dottedline.gif) no-repeat right center"><h3>Business Needs </h3>
                  <div id="list">
                    <ul>
                      <li><a href="exchange_management.php"><img src="images/bullet1.gif" alt="Exchange Management" />Exchange Management</a></li>
                      <li><a href="identity_management.php"><img src="images/bullet1.gif" alt="Identity and Access Management" />Identity and Access Management</a></li>
                      <li><a href="auditing.php"><img src="images/bullet1.gif" alt="Auditing" />Auditing</a></li>
                      <li><a href="policy_management.php"><img src="images/bullet1.gif" alt="Group Policies" />Group Policies</a></li>
                      <li><a href="regulatory_compliance.php"><img src="images/bullet1.gif" alt="SOX, PCI compliance" />SOX, PCI compliance</a></li>
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
              <td width="64%" rowspan="3" valign="top"><h3>Affordable Active Directory Management Solutions</h3>
                  <p>Your IT budget is stretched thin and you struggle to cut support costs. It doesn't help that manual AD management and provisioning processes are time-consuming.  Even worse, manual implementation can be error-prone, threatening the security of your environment. <br />
                      <br />
                    Organizations can no longer rely on manual provisioning and administrative processes to maintain compliance and security of Active Directory. Add to that the need to simplify management, reduce costs, and tightly delegate control of Active Directory among various administrative groups, today's Active Directory administrators need help! <br />
                    <br />
                    CionSystems can help. Here's how: Using our solutions you can manage users, temporary groups, OU's, Exchange and more, from a web-based interface, without the need for scripting or other complex programming. Password management and unlocking accounts is a snap. The solutions are flexible, easy to deploy and maintain. Using them will allow you to slash more than 75% of your AD management cost. </p></td>
              <td width="36%"><div class="greybox"><img src="images/microsoftlogo.jpg" alt="Microsoft" style="border-right:1px solid #eaeaea;" class="clogo" width="71" height="38" /><img src="images/hplogo.jpg" title="Business Partner" class="clogo" style="border-right:1px solid #eaeaea;" width="76" height="51" /><img src="images/ibmlogo.jpg" alt="International Business Machines" class="clogo" width="89" height="49" /></div></td>
            </tr>
            <tr>
              <td valign="top"><div class="greybox">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><h2><img src="images/bullet.gif" style="padding-right:3px;" /><a href="http://cionsystems.com/newsevents.php" style="text-decoration:none; " title="News & Events">News &amp; Events</a></h2></td>
                  </tr>
                  <tr>
                    <td>
<div id="marqueecontainer" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed">
<div id="vmarquee" style="position: absolute; width: 100%;">
<a href="http://cionsystems.com/press/index-6.html"><strong>CionSystems wins the TiE award as the company "Most Likely to be Successful"</strong></a><br />
<br />
<a href="http://cionsystems.com/press/index-5.html"><strong>CionSystems Releases New Version of its Active Directory Manager Pro</strong></a><br />
<br />
<a href="http://cionsystems.com/press/index-4.html"><strong>CionSystems Announces the Release of Active Directory Manager Pro</strong></a><br />
<br />
<a href="http://cionsystems.com/press/index-3.html"><strong>CionSystems Announces the Release of Active Directory Change Notifier 2.5</strong></a><br />
<br />
<a href="http://cionsystems.com/press/index-2.html"><strong>CionSystems releases Active Directory Change Notifier 2.0</strong></a><br />
<br />
<a href="http://cionsystems.com/press/index-1.html"><strong>CionSystems releases Active Directory Manager 2.0</strong></a><br />
<br />
<a href="http://www.cionsystems.com/Webinar/"  target="_blank"><strong>5 Reasons to Eliminate Password Reset & Account Unlock Calls.</strong></a><br />
<br />
<a href="http://www.microsoftstartupzone.com/Blogs/Microspark-BizSpark-Startup-of-the-Day/Lists/Posts/Post.aspx?List=7764cd7b%2Dcd2b%2D4b11%2D9e28%2De6caea1181ff&amp;ID=70" target="_blank"><strong>July 19th, 2009- Microsoft selects CionSystems Inc. as &quot; Startup of the Day</strong></a><br />
<br />
<a href="http://cionsystems.com/webinar/demo_01/demo.html"  target="_blank"><strong>5 Challenges Active Directory</strong></a>
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
            <tr>
              <td valign="top"><div class="greybox">
                
                <div  class="marquee" id="mycrawler">
<img src="company_logo/microsoft.jpg" alt="Microsoft" width="100"  height="50"/>
<img src="company_logo/hp.jpg" alt="Business Partner" width="100"  height="50"/>
<img src="company_logo/ibm.jpg" alt="International Business Machines" width="100"  height="50"/>
<img src="company_logo/wageworks.jpg" alt="Wage Works" width="100"  height="50"/>
<img src="company_logo/ces.jpg" alt="Ces" width="100"  height="50"/>
<img src="company_logo/afl.jpg" alt="Afl" width="100"  height="50"/>
<img src="company_logo/svi.jpg" alt="svi" width="100"  height="50"/>
<img src="company_logo/mentis.jpg" alt="Mentis systems" width="100"  height="50"/>
<img src="company_logo/districtlogo.jpg" alt="District" width="100"  height="50"/>
<img src="company_logo/roche.jpg" alt="Roche" width="100"  height="50"/>
<img src="company_logo/akc.jpg" alt="American Kennel Club" width="100"  height="50"/>
<img src="company_logo/scotch.jpg" alt="Scotch College Melbourne" width="100"  height="50"/>
<img src="company_logo/softchoice.jpg" alt="Softchoice" width="100"  height="50"/>
<img src="company_logo/uoi.jpg" alt="University of Idaho" width="100"  height="50"/>
<img src="company_logo/itn.jpg" alt="Itn" width="100"  height="50"/>
<img src="company_logo/mmr.jpg" alt="Market Manage Results" width="100"  height="50"/>
<img src="company_logo/PCV.jpg" alt="Proactive" width="227"  height="50"/>
<img src="company_logo/ascom.JPG" alt="Ascom" width="132" height="56" />
<img src="company_logo/kpit.jpg" alt="KPIT Cummins Infosystems Limited" width="89" height="56"/>
</div>
                </div>
                <script type="text/javascript">
marqueeInit({
	uniqueid: 'mycrawler',
	style: {
		'padding': '2px',
		'width': '300px',
		'height': '50px'
	},
	inc: 1, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 1,
	neutral: 150,
	savedirection: true
});
</script>
                </td>
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
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="middle" class="footer">
          <table width="64%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="92%" height="33"><a href="http://cionsystems.com/consulting/">CionSystems Professional Services</a> | <a href="whitepapers.php">WhitePapers</a> | <a href="termsofuse.php">Terms of Use</a> | <a href="privacy_policy.php">Privacy Policy</a> | <a href="aboutus.php">About Us</a> | <a href="http://cionsystems.com/press/">Press</a> | <a href="http://blog.cionsystems.com/" target="_blank">BLOG</a> |</td>
    <td width="8%" style="padding-bottom:5px;"><a href="http://blog.cionsystems.com/?feed=rss2" target="_blank"><img src="images/rssfeed.gif" width="42" height="19" border="0" alt="rss"/></a></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td align="center" valign="middle"><div class="copyright"><dd>Copyright &copy; 2008 CionSystems, Inc. All Rights Reserved.</dd></div></td>
      </tr>
    </table></td>
  </tr>
</table>
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