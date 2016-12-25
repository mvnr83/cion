<?php 
error_reporting(E_ALL^E_NOTICE);
session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Active Directory Solutions | Managing Active Directory Company</title>
<meta name='keywords' content='Microsoft, Azure, Quest, self-service, de-prvisioning, Ofice 365, active directory, exchange, 
management,tools,Cionsystems, Cion, reports,auditing,administration, monitoring, utilities, solutions,synchronization,maintenance,
 unix, self service,user import, user provision, user de-provision, Group Policy, Group policy object, gpo'>
<meta name='description' content='We at Cion Systems offers active directory solutions to simplify your daily tasks and increased ROI. Simplify your AD infrastructure with the best active directory management company.'>
<!--<meta name="google-site-verification" content="N28xp5KoLEmZKdtJalg54yKL1N6FxNkAeIMXemUgpXY" /> -->
<meta name="google-site-verification" content="wyA5AqlyQ4FwzP0gM4MOYomx6JSmuLHEZV7L3aTAjLc" />
<link rel="shortcut icon" href="img/favicon.png">
<title>Cion Systems</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" /> -->
 <link href="css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="css/flexslider.css"/>

 <link href="css/style-responsive.css" rel="stylesheet" />

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-85152202-1', 'auto');
  ga('send', 'pageview');
  
  
  

</script>

<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300 600 700' rel='stylesheet' type='text/css'>
<!--
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
 HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>
    <![endif]-->
    
    
</head>

<body>
<!--header start-->
<header class="head-section container" style="background:#FFF; border:#fff;">
  <div class="navbar navbar-default  ">
    <div class="col-md-7 pull-right topbtn">
     
     
      <div class="registerwrapper"><div  class="btn-wrapper">
     
<!-- <a href="buyitnow.php" class="btn-request">Purchase Online</a>-->
<?php if(!isset($_SESSION['username']) && $_SESSION['username'] == ''){ ?>
 <a href="login.php" class="newlogin" title="Login"> LogIn</a> <a href="register.php" title="Signup" class="newRegister">Signup</a> 
<?php } else { ?>
 
 
 <div class="username"><span>Hi</span> <span class="UN"><?=ucfirst($_SESSION['lname'])?></span><em></em>
 <div class="useraccountdd"><ul><li><a href="myaccount.php">My Account</a></li>
 <!-- <li><a href="myaccount.php">Your Orders</a></li> -->
 <li><a href="myaccount.php">My Downloads</a></li>
 <li class="logoutNew"><a href="logout.php">Logout</a></li>
 </ul></div>
 </div>
<?php } ?>
 <div class="cartBlock"><span class="itemcount">0</span>Cart</div>
 
 
 
 
 
      </div>

                        
</div>

   <!-- <div class="form-group col-md-6 col-sm-6 col-xs-6">
        <form action="#">
          <select class="form-control" id="sel1" style="background:#60b50f; color:#fff;">
            <option>--Free Tools--</option>
            <option><a href="downloadADDiagram.php" class="btn-link">Ad Diagram</a></option>
          </select>
        </form>
      </div> --> 
     <div class="clearfix"></div>
    </div>
    
    <div class="navbar-header " >
    <a class="navbar-brand" href="index.php" >
    <img src="img/logo.png"  alt="Cion Systmes" title="Cion Systmes" style="height:75px"  ></a> 
      <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
       <span class="icon-bar"></span>
        <span class="icon-bar"></span>
         <span class="icon-bar"></span>
          </button>
      </div>
	  
    <div class="navbar-collapse collapse">

      <ul class="nav navbar-nav">
        <li > <a href="index.php">Home </a> </li>
        <li class="dropdown"> 
            <a class="dropdown-toggle" data-close-others="false" data-delay="0" onClick="fnRedirect(this);" 
        data-hover="dropdown" data-toggle="dropdown" href="http://www.cionsystems.com/solution_all.php">Solutions <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li><a href="cmt.php.php">DirSync for O365 | Azure</a></li>
            <li> <a href="active_directory.php">Active Directory</a> </li>
            <li> <a href="windows-management.php">Windows Management</a> </li>
            <li> <a href="microsoft_exchange.php">Microsoft Exchange</a> </li>
            <li> <a href="microsoft_solutions.php" tabindex="-1">Microsoft Office Solutions</a> </li>
            <li> <a href="espm.php" tabindex="-1">Enterprise Security Policy Manager</a> </li>
             <li> <a href="mfauthentication.php" tabindex="-1">Multifactor Authentication</a> </li>
            <li> <a href="ADProvisioning.php" tabindex="-1">Provisioning Solutions</a> </li>

          </ul>
        </li>
        <li class="dropdown"> 
		<a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover="dropdown" role="button"
					  data-toggle="dropdown"  onclick="fnRedirect(this);" href="http://www.cionsystems.com/active-directory-tools.php">
					  Products <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
		   <li><a href="mfauthentication.php">MultiFactor Autentication</a> </li>
 <li> <a href="active-directory-manager.php">Active Directory Manager Pro</a> </li>
 </li>
<li> <a href="office365_bundle.php" tabindex="-1">Office 365 | Azure Management Simplified</a> </li>
            <li><a href="active-directory-gpomanager.php">GPO Manager</a> </li>
            <li> <a href="cim_selfservice.php">DirSync for O365 | Azure</a> </li>
            
            <li> <a href="Enterprise-Self-Service.php">Enterprise Self-Service</a> </li>
            <li> <a href="active-directory-recovery.php">Active Directory Recovery</a> </li>
            <li> <a href="active-directory-reporter.php">Active Directory Reporter</a> </li>
            <li> <a href="active-directory-ChangeNotifier.php">Active Directory Change Notifier</a> </li>
            <li> <a href="Cloud_Identity_Minder.php">Cloud Identity Minder</a> </li>
            <li> <a href="SystemInformation_comparison.php">System Information & Comparison</a> </li>
             <li> <a href="ADProvisioning.php">Provisioning System</a>
          </ul>
        </li>
        <li><a href="support_overview.php">Support</a></li>
        <li class="dropdown"> <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="http://www.cionsystems.com/active-directory-tools.php">Downloads <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li><a href="active-directory-tools.php">Products</a> </li>
            <li> <a href="whitepapers.php">Whitepapers</a> </li>
            <li> <a href="presentation.php">Archives</a> </li>
          </ul>
        </li>
        <li class="dropdown"> <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="http://www.cionsystems.com/partners.php">Partners <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li> <a href="partners.php">Program Overview</a> </li>
            <li> <a href="partnerportal/register.php">Become a Partner</a> </li>
            <li><a href="partnerportal">Partner Login</a> </li>
          </ul>
        </li>
        <li class="dropdown"> <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="http://www.cionsystems.com/aboutus.php">Company <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li> <a href="http://cionsystems.com/aboutus.php">About Us</a> </li>
            <li> <a href="http://cionsystems.com/events/">News and Events</a> </li>
            <li> <a href="http://cionsystems.com/careers.php">Careers</a> </li>
            <li> <a href="http://cionsystems.com/press/">Press</a> </li>
            <li> <a href="http://cionsystems.com/contactus.php">Contact Us </a> </li>
          </ul>
        </li>
        <li> <a href="http://blog.cionsystems.com/">Blog</a> </li>
        
      </ul>
    </div>
  </div>
</header>
<!--header end-->
<div id="myCarousel" class="carousel slide container col-xs-12" data-ride="carousel"> 
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="padding:0 0 0 0;"> 
  <div class="item active"> <a href="http://www.cionsystems.com/active-directory-manager.php"><img src="img/jumbtron_bg_04.jpg" alt="" width="460" height="345"></a> </div>
   <div class="item "> <a href="http://www.cionsystems.com/Cloud_Identity_Minder.php"> <img src="img/jumbtron_bg_03.jpg" alt="" width="460" height="345"></a> </div>
        <div class="item"> <a href="http://www.cionsystems.com/Enterprise-Self-Service.php"><img src="img/jumbtron_bg_02.jpg" alt="" width="460" height="345"> </a></div>
   <div class="item "> <a href="http://www.cionsystems.com/windows-management.php"><img src="img/jumbtron_bg_01.jpg" alt="" width="460" height="345"></a> </div>
    <div class="item"> <a href="http://www.cionsystems.com/espm.php"> <img src="img/jumbtron_bg.jpg" alt="" width="460" height="345"></a> </div>
  </div>
  
  <!-- Left and right controls --> 
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" 
  aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#myCarousel"
   role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
   <span class="sr-only">Next</span> </a> </div>
</div>

<br/><br/>

<div class="container">
<h1>Welcome to Cion Systems</h1>
<div class="welcomeblock"><p><strong>CionSystems</strong> delivers a simple and cost effective solution to improve security and streamline managing IT infrastructure.  CionSystems Identity Management solutions are designed to integrate with enterprise HR systems, school information systems and other systems. Products are designed to provide benefits for schools districts and IT organizations of varying size, complexity, and skill levels in verticals like finance, insurance, education, telecom, technology etc.  Implement process driven Security and Auditing to reduce support costs and quickly respond to security incidents while continuous monitoring, reporting and alerting of directories like Active Directory, ldap, openldap, office365, azure AD.</p></div>




<div class="productBlockmain">
<div class="welcomeblock productBlock"><ul>
<li><a href="javascript:;">Manage identities (users, computers, and all other resources) of Active Directory, OpenLDAP., Office 365, Azure and other SaaS applications.</a></li>
<li><a href="javascript:;">Automated user and access provisioning / de-provisioning processes</a></li>

<li><a href="javascript:;">Group policies tracking and work bench</a></li>
<li><a href="javascript:;">Office365/Azure directory sync from Active Directory and openldap</a></li>
<li><a href="javascript:;">Office365 user,  group, license management and reporting</a></li>
<li><a href="javascript:;">Email and one drive migration, archiving  and management.</a></li>
</ul>
<ul>
<li><a href="javascript:;">Self service, password management, profile and automated access management</a></li>
<li><a href="javascript:;">Active Directory Change tracking, auditing, reporting, compliance.</a></li>
<li><a href="javascript:;">Active Directory Change tracking, auditing, reporting, compliance</a></li>
<li><a href="javascript:;">Active directory backup and recovery</a></li>
<li><a href="javascript:;">Multifactor authentication 2FA  for virtual systems, servers and clouds</a></li>

</ul>
</div>
</div>


</div>


<div class="container">
<div class="row">
 <div class="col-xs-12"> <h2  class="subheading">Products<a class="viewmoreproducts" href="#">View more products &gt;&gt;</a></h2></div>

<section class="regular slider col-xs-12">
    <div>
      <div class="custom"><a href="#"><img src="images/products/multifactors_img.png"></a>
      
      <span class="pbottom"> <span class="ptitle">Multifactor Authentication</span>
              <a href="#" class="sliderlinkbuy">Buy Now</a> <a href="#" class="sliderlinktry">Try Now</a></span></div>
    </div>
    <div>
     <div class="custom"><a href="#"> <img src="images/products/provisioning_img.png"></a>
      <span class="pbottom"> <span class="ptitle">Provisioning System</span>
              <a href="#" class="sliderlinkbuy">Buy Now</a> <a href="#" class="sliderlinktry">Try Now</a></span></div>
    </div>
     <div>
    <div class="custom"><a href="#"> <img src="images/products/multifactors_img.png"></a>
      <span class="pbottom"> <span class="ptitle">Multifactor Authentication</span>
              <a href="#" class="sliderlinkbuy">Buy Now</a> <a href="#" class="sliderlinktry">Try Now</a></span></div>
    </div>
    
    
    
  </section>
  <!-- End container --> 

<div class="col-xs-12"></div>

</div>
</div>


<!--<div class="container">
<div class="property gray-bg">
  
   <div class="row"><br>
      <div class="col-md-6" >
       <center><img src="img/multifactor_txt.png" border="0"/>
<br><br>
       <a href="mfauthentication.php">
		<img src="img/multifactors_img.png" alt="Multifactor Autentication" width="525" height="201" class="img-responsive"></a></center>
		 <br/>
		 <div style="float:center">
		
		 <center>
	  <a href="http://www.cionmfa.com/MFASelfservice/frmUserLogin.aspx"><img src="img/free_icon.png" border="0"> </a></center><br/>
	  </div>
       </div>
     
      <div class="col-md-6" >
        <center> <img src="img/provisioning_img_txt.png" border="0"><br><br>
	   <a href="http://cionsystems.com/ADProvisioning.php"><img src="img/provisioning_img.png" width="490" height="180" class="img-responsive" ></a> 
        </center>    
          
        <div style="float:center"><br/>
		 <center>
	  <a href="http://cionsystems.com/ADProvisioning.php"><img src="img/download_trial.png" border="0"> </a></center>
	  </div>
	  
      </div>
   </div>
  </div>
 
</div>-->





<!-- products -->

 
<!-- products -->







<!--property start--><div class="container">
 <div class="row">
    <div class="profile col-xs-12">
      <h3  class="subheading"> Our Solutions Works With</h3>
    
    </div>
    <!-- End row --> 
  </div>
  
  
  
  
  
  
  
  <div class="row">
    <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail" data-wow-delay=".1s"> <img src="img/office-365-cloud-_01.png" class="img-responsive" alt="">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/cmt.php" class="btn btn-info btn-sm ">Read More</a>
            </center>
          </div>
        </div>
      </div>
    
       <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail" data-wow-delay=".1s"> <img src="img/am_az.jpg" class="img-responsive" alt="">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/cloud-management.php" class="btn btn-info btn-sm ">Read More</a>
            </center>
          </div>
        </div>
      </div>
      
      <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail wow fadeInUp" data-wow-delay=".5s"> <img src="img/redHat.jpg" alt="" class="img-responsive">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/Cloud_Identity_Minder.php" class="btn btn-info btn-sm ">Read More</a>
            </center>
          </div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail wow fadeInUp" data-wow-delay=".7s" > <img src="img/activeDirectory.jpg" alt="">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/active_directory.php" class="btn btn-info btn-sm ">Read More </a>
            </center>
          </div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail wow fadeInUp" data-wow-delay=".7s" > <img src="img/microsoftExchange.jpg" alt="">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/microsoft_exchange.php" class="btn btn-info btn-sm ">Read More </a>
            </center>
          </div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4 col-xs-6 nopadding">
        <div class="thumbnail wow fadeInUp" data-wow-delay=".7s" > <img src="img/sharePointLogo.jpg" alt="">
          <div class="caption">
            <center>
              <a href="http://www.cionsystems.com/espm.php" class="btn btn-info btn-sm ">Read More </a>
            </center>
          </div>
        </div>
      </div>
  
  </div>
  
  
  
  
  <div class="row">
  <div class="col-xs-12">
 <h3 class="subheading">Partners</h3>
  <div class="greybox partners">
                
                <div  class="marquee" id="mycrawler">
<img src="images/logos/marqueelogos/microsoft.jpg" alt="Microsoft" class="img-responsive" />
<img src="images/logos/marqueelogos/hp.jpg" alt="Business Partner" width="100"  height="50"/>
<img src="images/logos/marqueelogos/ibm.jpg" alt="International Business Machines" width="100"  height="50"/>
<img src="images/logos/marqueelogos/wageworks.jpg" alt="Wage Works" width="100"  height="50"/>
<img src="images/logos/marqueelogos/ces.jpg" alt="Ces" width="100"  height="50"/>
<img src="images/logos/marqueelogos/afl.jpg" alt="Afl" width="100"  height="50"/>
<img src="images/logos/marqueelogos/svi.jpg" alt="svi" width="100"  height="50"/>
<img src="images/logos/marqueelogos/mentis.jpg" alt="Mentis systems" width="100"  height="50"/>
<img src="images/logos/marqueelogos/districtlogo.jpg" alt="District" width="100"  height="50"/>
<img src="images/logos/marqueelogos/roche.jpg" alt="Roche" width="100"  height="50"/>
<img src="images/logos/marqueelogos/akc.jpg" alt="American Kennel Club" width="100"  height="50"/>
<img src="images/logos/marqueelogos/scotch.jpg" alt="Scotch College Melbourne" width="100"  height="50"/>
<img src="images/logos/marqueelogos/softchoice.jpg" alt="Softchoice" width="100"  height="50"/>
<img src="images/logos/marqueelogos/uoi.jpg" alt="University of Idaho" width="100"  height="50"/>
<img src="images/logos/marqueelogos/itn.jpg" alt="Itn" width="100"  height="50"/>
<img src="images/logos/marqueelogos/mmr.jpg" alt="Market Manage Results" width="100"  height="50"/>
<img src="images/logos/marqueelogos/PCV.jpg" alt="Proactive" width="227"  height="50"/>
<img src="images/logos/marqueelogos/ascom.JPG" alt="Ascom" width="132" height="56" />
<img src="images/logos/marqueelogos/kpit.jpg" alt="KPIT Cummins Infosystems Limited" width="89" height="56"/>
</div>
                </div>
</div>

  
  </div>
  
  
  
  
 
</div> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/crawler.js"> </script>
<script type="text/javascript">

$(document).ready(function(){
marqueeInit({
	uniqueid: 'mycrawler',
	style: {
		'padding': '2px',
		//'width': '300px',
		//'height': '50px'
	},
	inc: 1, //speed - pixel increment for each iteration of this marquee's movement
	mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
	moveatleast: 1,
	neutral: 150,
	savedirection: true
});
});
</script>


<script>
$(document).ready(function(){

$('.productbuynow').click(function(){

$(this).closest('.service').find('.service_rollover').addClass('showhover')
$(this).closest('.service').find('.service_rollovernew').addClass('showhover')


});

$('.close').click(function(){

$(this).closest('.service').find('.service_rollover').removeClass('showhover')
$(this).closest('.service').find('.service_rollovernew').removeClass('showhover')
});


$('.tabing input').click(function(){

if($(this).is(':checked'))
{
$(this).closest('.service').find('.no-of-users').hide();
$(this).closest('.tabing').next('.no-of-users').show();
}

})

})

</script>
<?php /*?><div id="home-services" style="display:none" >
  <div class="container">
    <div class="row"> 
      <!-- one-->
      <div class="col-md-6" >
 <div class="col-md-12 borderradius-top" style="background:#ccc; color:#000; font-weight:bold;  padding:5px">Our Business Partners</div>
        <div class="borderradius-bottom" style="border:solid 1px #ccc; padding:10px; margin-bottom:5px" >
          <div class="h-service-content wow fadeInUp" >
             <img src="img/msLogo.jpg" width="150" style="padding:3px">
             <img src="img/hpLogo.jpg" width="150" style="padding:3px"> 
            <img src="img/ibmLogo.jpg" width="150" style="padding:3px"> 
          </div>
        </div>
      </div>
      <!-- two-->
           
            <div class="col-md-6" >
 <div class="col-md-12 borderradius-top" style="background:#ccc; color:#000; font-weight:bold;  padding:5px">Our Test Drive Application Gallery</div>
        <div  class="borderradius-bottom" style="border:solid 1px #ccc; padding:10px; margin-bottom:5px" >
          <div class="h-service-content wow fadeInUp" >
          <div class="row">
          <div class="col-lg-2" style="padding-top:12px; padding-bottom:0;"><a href="http://mfa.ciontestdrive.com/MFASelfService/frmUserLogin.aspx" target="_blank"> <img src="img/mfa_icon.jpg" width="86px" class="img-responsive"  border="0" ></a></div>
		  <div class="col-lg-2" style="padding-top:12px; padding-bottom:0;"><a href="https://www.ciontestdrive.com/ActiveDirectoryManager/UserLogin.aspx" > <img src="img/adm_icon.jpg"  width="86px" class="img-responsive"  border="0" ></a></div>
          <!--<div class="col-lg-2" style="padding-top:12px; padding-bottom:0;"> <a href="https://www.ciontestdrive.com/ActiveDirectoryManager/UserLogin.aspx" target="_blank"> <img src="img/adm_icon.jpg"  width="86px" class="img-responsive"  border="0" ></a></div>-->
          <div class="col-lg-2" style="padding-top:12px; padding-bottom:0;"><a href="https://www.ciontestdrive.com/SelfService/frmUserLogin.aspx" target="_blank"> <img src="img/cim_icon.jpg"  width="86px" class="img-responsive"  border="0" ></a></div>
          <div class="col-lg-3" style="padding-top:12px; padding-bottom:0;"><a href="https://ciontestdrive.com/ADSelfService/frmUserLogin.aspx" target="_blank"> <img src="img/ess_icon.jpg"  width="70px" class="img-responsive"  border="0" ></a></div>
          <div class="col-lg-3"><a href="https://ciontestdrive.com/ADRecoverySetup/UserLogin.aspx" target="_blank"> <img src="img/adr_icon.jpg"  width="76px" class="img-responsive"  border="0" ></a></div>
          </div>
         	
          
          
          
           
          </div>
        </div>
      </div>
     
      <!-- four-->
      </div>
  </div>
  <!-- /container --> 
</div><?php */?>
<!-- service end -->



<!--footer start-->
<div class="container">
<footer class="footer">
  <div class="container">

<div class="clearfix"></div>
    <div class="row">
      <div class="col-lg-3 col-sm-6  wow fadeInUp" data-wow-duration="2s" data-wow-delay=".1s" style="padding-left:30px;">
<div class="address">
        <h1> contact info </h1>
        <address>
        <p style="color:#F90">USA Address</p>
        <p>6640 185th Ave NE, Redmond, WA-98052. &nbsp;<i class="fa fa-phone"></i>Phone: 1-425-605-5325 </p>
        <p style="color:#F90">INDIA Address</p>
        <p># 6-2-47,Yeturu Tower , 505, 5th Floor
Lakdi-ka-pool, Hyderabad-500004,TS, INDIA  &nbsp;
<i class="fa fa-phone"></i>Phone : 91-40-64644486 </p>
        <p><i class="fa fa-envelope "></i>Email : <a href="javascript:;">info@cionsystems.com</a></p>
        </address>
        </div>
        <h4>Our Test Drive </h4>
        <div class="testdrive">
          <div><a href="http://mfa.ciontestdrive.com/MFASelfService/frmUserLogin.aspx" target="_blank"> <img src="images/logos/mfa_icon.png" width="86px" class="img-responsive" border="0"></a></div>
		  <div><a href="https://www.ciontestdrive.com/ActiveDirectoryManager/UserLogin.aspx"> <img src="images/logos/adm_icon.png" width="86px" class="img-responsive" border="0"></a></div>
       
          <div><a href="https://www.ciontestdrive.com/SelfService/frmUserLogin.aspx" target="_blank"> <img src="images/logos/cim_icon.png" width="86px" class="img-responsive" border="0"></a></div>
          <div><a href="https://ciontestdrive.com/ADSelfService/frmUserLogin.aspx" target="_blank"> <img src="images/logos/ess_icon.png" width="70px" class="img-responsive" border="0"></a></div>
          <div><a href="https://ciontestdrive.com/ADRecoverySetup/UserLogin.aspx" target="_blank"> <img src="images/logos/adr_icon.png" width="76px" class="img-responsive" border="0"></a></div>
          </div>
        
        
        
      </div>
      <div class="col-lg-4 col-sm-6">
        <div class="page-footer wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
          <h1> Products </h1>
          <ul class="page-footer-list">
           <li> <i class="fa fa-angle-right"></i> <a href="active-directory-manager.php">Active Directory Manager Pro</a> </li>
           <li> <i class="fa fa-angle-right"></i> <a href="Enterprise-Self-Service.php">Enterprise Self-Service</a> </li>
           <li> <i class="fa fa-angle-right"></i> <a href="Cloud_Identity_Minder.php">Cloud Identity Minder</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="cim_selfservice.php">DirSync for O365 | Azure</a> </li>
             <li> <i class="fa fa-angle-right"></i> <a href="active-directory-gpomanager.php">GPO Manager</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="active-directory-recovery.php">Active Directory Recovery</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="mfauthentication.php">MultiFactor Autentication</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="SystemInformation_comparison.php">System Information & Comparison</a> </li>
          </ul>
        </div>
      </div>
     <div class="col-lg-5 col-sm-12">
    <div class="row">
      <div class="col-lg-8 col-sm-6">
        <div class="page-footer1 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".5s">
          <h1> Our Company </h1>
          <ul class="page-footer-list">
            <li> <i class="fa fa-angle-right"></i> <a href="aboutus.php">About Us</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="http://cionsystems.com/events/">News & Events</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="careers.php">Careers</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="http://cionsystems.com/press/">Press</a> </li>
            <li> <i class="fa fa-angle-right"></i> <a href="contactus.php">Contact Us</a> </li>
           
          </ul>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6">
        <h1> Follow us </h1>
        <a href="https://www.facebook.com/cionsystems/" target="_blank"><img src="img/facebook.png" ></a>  
        <a href="https://www.linkedin.com/company/cionsystems-inc" target="_blank"><img src="img/linkedin.png" ></a>
    	<a href="https://twitter.com/cionsystems?lang=en" target="_blank"><img src="img/twitter.png" ></a>
        <a href="https://www.youtube.com/channel/UCQdQ5lAZR5Fupfi-ZTw8m6Q" ta><img src="img/youtube.png" ></a>
		
        <a href="http://gplus.com" target="_blank" ><img src="img/gplus.png"></a>
	  
      
      </div>
   
   <div class="col-xs-12 col-lg-12 pull-left">
   <h4>Our Business Partners</h4>
   <div class="footerproduct1">
           <?php /*?>  <div><img src="img/msLogo.jpg" width="150" style="padding:3px"></div>
            <div> <img src="img/hpLogo.jpg" width="150" style="padding:3px"></div> 
            <div><img src="img/ibmLogo.jpg" width="150" style="padding:3px"></div> <?php */?>
            
              <div><img src="images/logos/msLogo.png" width="71" style="padding:3px"></div>
            <div> <img src="images/logos/hpLogo.png" width="71" style="padding:3px"></div> 
            <div><img src="images/logos/ibmLogo.png" width="71" style="padding:3px"></div> 
            
          </div>
   </div>
   
    </div>
    </div>
    </div>
  </div>
</footer>
<!-- footer end --> 
<!--small footer start -->
<footer class="footer-small">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-sm-3" style="color:#fff"> 2016 &copy; Copyright - Coinsystems. </div>
      <div class="col-lg-9 col-sm-9">
      <a href=""  style="color:#fff">CionSystems Professional Services</a> |      
      <a href="http://www.cionsystems.com/whitepapers.php" style="color:#fff">WhitePapers</a>  | 
      <a href="http://www.cionsystems.com/termsofuse.php" class="social-link-footer" style="color:#fff"> Terms of Use</a>  |  
      <a href="http://www.cionsystems.com/privacy_policy.php" style="color:#fff">Privacy Policy </a> |  
      <a href="http://www.cionsystems.com/aboutus.php" style="color:#fff">About Us</a>  |  
      <a href="http://cionsystems.com/press/" style="color:#fff"> Press </a> |  
      <a href="http://blog.cionsystems.com/" style="color:#fff">BLOG</a> 
   
      </div>
    </div>
  </div>
</footer>
</div>
<!--small footer end--> 

<!-- js placed at the end of the document so the pages load faster
<script src="js/jquery.js">
</script>
--> 
  <link rel="stylesheet" type="text/css" href="css/slick.css">
  <link rel="stylesheet" type="text/css" href="css/slick-theme.css">
 
<script src="js/jquery-1.8.3.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.min.js" type="text/javascript"> </script> 
<script type="text/javascript" src="js/hover-dropdown.js"> </script> 


<script src="js/link-hover.js"> </script>
<script defer src="js/jquery.flexslider.js"> </script> 
<script src="js/slick.js"> </script>
<script>

function fnRedirect(Obj){
    var linkUrl = $(Obj).attr('href');
    if(linkUrl != '' && linkUrl != '#')
        window.location.href = linkUrl;
}
    
    </script>
 <script type="text/javascript">
    $(document).on('ready', function() {
	

	
	
	
      $(".regular").slick({
        dots: false,
        infinite: false,
        slidesToShow: 2,
        slidesToScroll: 1
      });
   
    });
  </script>

</body>
</html>