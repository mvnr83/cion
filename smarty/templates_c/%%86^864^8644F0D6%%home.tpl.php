<?php /* Smarty version 2.6.5-dev, created on 2017-01-09 18:23:50
         compiled from home.tpl */ ?>
<?php require_once(SMARTY_DIR . 'core' . DIRECTORY_SEPARATOR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'ucfirst', 'home.tpl', 79, false),)), $this); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    
<?php if ($this->_tpl_vars['title_dispaly'] == 'display' || $this->_tpl_vars['title_dispaly'] == ''): ?>

<title>::CionSystems::</title>

<?php else: ?> <?php echo $this->_tpl_vars['productname']; ?>


    <?php endif; ?>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name='keywords' content='Microsoft, Azure, Quest, self-service, de-prvisioning, Ofice 365, active directory, exchange, 
management,tools,Cionsystems, Cion, reports,auditing,administration, monitoring, utilities, solutions,synchronization,maintenance,
 unix, self service,user import, user provision, user de-provision, Group Policy, Group policy object, gpo'>
<meta name='description' content='We at Cion Systems offers active directory solutions to simplify your daily tasks and increased ROI. Simplify your AD infrastructure with the best active directory management company.'>
<!--<meta name="google-site-verification" content="N28xp5KoLEmZKdtJalg54yKL1N6FxNkAeIMXemUgpXY" /> -->

<link rel="shortcut icon" href="img/favicon.png">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<meta name="google-site-verification" content="Cr-BsllHBafWdF6eFS1YuGQ7qc20z0e5SUOzYUAEKVg" />
<link href="style/style.css" rel="stylesheet" media="all" />
<link href="css/bootstrap.min.css" rel="stylesheet">

 <link href="css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="css/flexslider.css"/>
 <link rel="stylesheet" type="text/css" href="ajaxtabs.css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
 <link href="css/style-responsive.css" rel="stylesheet" />
<?php echo '
<script>
  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');

  ga(\'create\', \'UA-85152202-1\', \'auto\');
  ga(\'send\', \'pageview\');
  
  
  

</script>
'; ?>


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
     
<!-- <a href="buyitnow.php" class="btn-request">Purchase Online</a> -->
<?php if ($this->_tpl_vars['session_username'] == ''): ?>
 <a href="login.php" class="newlogin" title="Login"> LogIn</a> <a href="register.php" title="Signup" class="newRegister">Signup</a> 
<?php else: ?>
 
 
 <div class="username"><span>Hi</span> <span class="UN"><?php echo ((is_array($_tmp=$this->_tpl_vars['session_lname'])) ? $this->_run_mod_handler('ucfirst', true, $_tmp) : ucfirst($_tmp)); ?>
</span><em></em>
 <div class="useraccountdd"><ul><li><a href="myaccount.php">My Account</a></li>
 <!-- <li><a href="myaccount.php">My Orders</a></li> -->
 <li><a href="myaccount.php">My Downloads</a></li>
 <li class="logoutNew"><a href="logout.php">Logout</a></li>
 </ul></div>
 </div>
<?php endif; ?>
 <div class="cartBlock"><span class="itemcount"><?php echo $this->_tpl_vars['cartnumber']; ?>
</span>Cart</div>
 
 
 
 
 
                  </div></div>

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
        data-hover="dropdown" data-toggle="dropdown" href="solution_all.php">Solutions <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li><a href="cmt.php">DirSync for O365 | Azure</a></li>
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
					  data-toggle="dropdown"  onclick="fnRedirect(this);" href="active-directory-tools.php">
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
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="active-directory-tools.php">Downloads <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li><a href="active-directory-tools.php">Products</a> </li>
            <li> <a href="whitepapers.php">Whitepapers</a> </li>
            <li> <a href="presentation.php">Archives</a> </li>
          </ul>
        </li>
        <li class="dropdown"> <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="partners.php">Partners <i class="fa fa-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li> <a href="partners.php">Program Overview</a> </li>
            <li> <a href="partnerportal/register.php">Become a Partner</a> </li>
            <li><a href="partnerportal">Partner Login</a> </li>
          </ul>
        </li>
        <li class="dropdown"> <a class="dropdown-toggle" data-close-others="false" data-delay="0" data-hover=
                      "dropdown" data-toggle="dropdown"  onclick="fnRedirect(this);" href="aboutus.php">Company <i class="fa fa-angle-down"></i> </a>
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

</div>



<div class="container ">
<div class="row">
<div class="col-xs-12">
<div class="col-xs-12 maincontentbginner">
<?php echo $this->_tpl_vars['content']; ?>

</div>
</div></div>
        </div>




<!-- Modal -->




<!--property start-->



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
        <p># 6-2-47,Yeturu Tower , 505, 5th Floor, Lakdi-ka-pool, Hyderabad-500004, Telangana, INDIA</p> 
<p><i class="fa fa-phone"></i>Phone : 91-40-64644486 </p>
        <p><i class="fa fa-envelope "></i>&nbsp;Email : <a href="javascript:;">info@cionsystems.com</a></p>
        </address>
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
        <a href="https://www.youtube.com/channel/UCQdQ5lAZR5Fupfi-ZTw8m6Q" target="_blank"><img src="img/youtube.png" ></a>
        <a href="https://plus.google.com/110645672691254501959" target="_blank"><img src="img/gplus.png"></a>
		
	  
      
      </div>
    </div></div>
    </div>
  </div>
</footer>
<!-- footer end --> 
<!--small footer start -->
<footer class="footer-small">
  <div class="container">
    <div class="row">
       <div class="col-lg-3 col-sm-12 copyright1 pull-left" style="color:#fff"> <?php echo $this->_tpl_vars['year']; ?>
 &copy; Copyright - CionSystems Inc. </div>
      <div class="col-lg-9 xol-xs-12 col-sm-12 text-center footernavmain pull-right">
     <ul class="footernav"><li>     
      <a href=""  style="color:#fff">CionSystems Professional Services</a></li>
      <li><a href="http://www.cionsystems.com/whitepapers.php" style="color:#fff">WhitePapers</a></li> 
      <li><a href="http://www.cionsystems.com/termsofuse.php" class="social-link-footer" style="color:#fff"> Terms of Use</a></li> 
     <li> <a href="http://www.cionsystems.com/privacy_policy.php" style="color:#fff">Privacy Policy </a></li>  
     <li> <a href="http://www.cionsystems.com/aboutus.php" style="color:#fff">About Us</a></li> 
     <li> <a href="http://cionsystems.com/press/" style="color:#fff"> Press </a></li> 
    <li>  <a href="http://blog.cionsystems.com/" style="color:#fff">BLOG</a> </li></ul>
   <a href="http://blog.cionsystems.com/?feed=rss2" target="_blank" class="rssblock"> <img src="images/rssicon.png"  border="0" title="RSS" alt="rss"></a>
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
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="Script/roundies.js" type="text/javascript"></script>


<script src="Scripts/ajaxtabs.js" type="text/javascript"></script>

<script type="text/javascript" src="Script/p7exp.js"></script>
<script defer src="js/jquery.flexslider.js"> </script> 
<script src="js/slick.js"> </script>
<?php echo '
<script>

function fnRedirect(Obj){
    var linkUrl = $(Obj).attr(\'href\');
    if(linkUrl != \'\' && linkUrl != \'#\')
        window.location.href = linkUrl;
}
    
    </script>
 <script type="text/javascript">
    $(document).on(\'ready\', function() {
	
      $(".regular").slick({
        dots: false,
        infinite: false,
        slidesToShow: 2,
        slidesToScroll: 1
      });
   
    });
  </script>


'; ?>



<div id="innerBuyModal" class="modal fade productsmodal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close1" data-dismiss="modal"></button>
        <h4 class="modal-title">Active Directory Manager PRO</h4>
      </div>
      <div class="modal-body">
        <h5></h5>
        <ul class="popupulfirst">
              
        </ul>
              </div>
      <div class="modal-footer">
        <a class="buynowBtn popupBuynow" href="javascript:;">Buy Now</a>
      </div>
    </div>

  </div>
</div>


</body>
</html>