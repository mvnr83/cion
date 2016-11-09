<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Cion Systems Inc -Windows Management Solutions that Work!</title>
<link rel="shortcut icon" href="fav.ico" />
{literal}
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link href="css/styl.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
body {
	background-color: #464646;
}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
  var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
   if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
function check()
{
	var frm = document.form1;
	if(frm.uname.value == '')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == '')
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}
	else
		return true;
}
function access(id)
{
	document.getElementById('res_id').value=id;
	document.getElementById('keyword').value='keyword';
	document.resources.action="download.php";
	document.resources.submit();
}
</script>
{/literal}
</head>
<body onload="MM_preloadImages('images/products_white.gif','images/producttoor_white.gif','images/solutions_white.gif','images/downloads_white.gif','images/partners_white.gif','images/support_white.gif','images/contactus_white.gif','images/solutions_whiteind.gif')" class="body">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="blackstr2">
  <tr>
   <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td align="left" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1000" height="137">
          <param name="movie" value="images/header.swf" />
          <param name="quality" value="high" />
          <embed src="images/header.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="137"></embed>
        </object>
	  <script type="text/javascript" src="ieupdate.js"></script></td>
      </tr>
        <tr>
        <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="images/indbutton_topbg.gif">
          <tr>
            <td width="3%" align="left" valign="top"><img src="images/le_t_butt.gif" width="29" height="31" /></td>
            <td width="97%" align="left" valign="middle"><div class="logout" id="rightside">{if $session_username != ''}<a href="logout.php" class="rightside">Logout</a>{else}<a href="login.php" class="rightside">Login</a>{/if} </div>
             <div id="blogforums">
             <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="advisiors.html" class="aributt">Advisiors</a></td>
                  <td align="center" valign="middle"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="careers.html" class="aributt">Careers</a></td>
                  <td align="center" valign="middle"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="feedback.php" class="aributt">Feedback </a></td>
                  <td align="center" valign="middle"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="myaccount.php" class="aributt">My Accounts </a></td>
                  <td align="center" valign="middle"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="2%" align="right" valign="middle" class="aributt"><img src="images/cart.png" width="16" height="14" /></td>
                  <td width="8%" align="center" valign="middle" class="aributt"><a href="buynow.html" class="aributt">&nbsp;Buy Now </a></td>
                  <td align="center" valign="middle" class="aributt"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="blogs.php" class="aributt">Blogs</a></td>
                  <td align="center" valign="middle" class="aributt"><img src="images/bl_bullet.gif" width="4" height="6" /></td>
                  <td width="10%" align="center" valign="middle" class="aributt"><a href="#" class="aributt">Forums</a></td>
                </tr>
              </table>
            </div></td>
            <td width="0%" align="right" valign="top"><img src="images/rig_t_butt.gif" width="28" height="31" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="41" align="center" valign="middle" background="images/button_bg.gif"><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="middle"><a href="producttours.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Products Tour','','images/producttoor_white.gif',1)"><img src="images/producttoor_gree.gif" name="Products Tour" width="169" height="30" border="0" id="Products Tour" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Products Tour','','images/products_white.gif',1)"></a></td>
           <td align="center" valign="middle"><a href="products_sic.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Products','','images/products_white.gif',1)"><img src="images/products_green.gif" name="Products" width="136" height="30" border="0" id="Products" /></a></td>
            <td align="center" valign="middle"><a href="solutions_sic.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Solutions','','images/solutions_whiteind.gif',1)"><img src="images/solutions_green.gif" name="Solutions" width="140" height="30" border="0" id="Solutions" /></a><a href="solutions_sic.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Solutions','','images/solutions_white.gif',1)"></a></td>
            <td align="center" valign="middle"><a href="products_sic.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Downloads','','images/downloads_white.gif',1)"><img src="images/downloads_green.gif" name="Downloads" width="133" height="30" border="0" id="Downloads" /></a></td>
            <td align="center" valign="middle"><a href="partners.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Partners','','images/partners_white.gif',1)"><img src="images/partners_green.gif" name="Partners" width="132" height="30" border="0" id="Partners" /></a></td>
            <td align="center" valign="middle"><a href="support_overview.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Support','','images/support_white.gif',1)"><img src="images/support_green.gif" name="Support" width="119" height="30" border="0" id="Support" /></a></td>
           <td align="center" valign="middle"><a href="contactus.php" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Contact Us','','images/contactus_white.gif',1)"><img src="images/contactus_green.gif" name="Contact Us" width="139" height="30" border="0" id="Contact Us" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="top" bgcolor="#464646"><table width="965" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="blstr2">
	<tr>
       <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
        </tr>
      <tr>
        <td width="1%">&nbsp;</td>
        <td width="98%" class="body"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="209" align="left" valign="top"><table width="216" border="0" align="left" cellpadding="0" cellspacing="0">
             <tr>
                <td align="left" valign="top" background="im"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">
                    <tr>
                      <td width="13">&nbsp;</td>
                      <td width="192" align="left" valign="middle" class="hea">Customers &amp; Partners </td>
                      <td width="11">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top" bgcolor="#F1F1F1">
				<table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">
                    <tr>
                      <td width="10">&nbsp;</td>
                      <td width="200">&nbsp;</td>
                      <td width="10">&nbsp;</td>
                    </tr>
                   {section name=cust loop=$arr_company}
                    <tr>
                      <td colspan="3" align="center" class="ver11">
				<a href="{$arr_company[cust].company_url}" class="ver11">
					  {if $arr_company[cust].company_logo ne ''}
				  <img src="company_logo/{$arr_company[cust].company_logo}" width="200" border="0" alt="{$arr_company[cust].company_name}" />
				  <br />
					  {/if}
					  {$arr_company[cust].company_name}
					  </a>
					  </td>
                    </tr>
					{/section}
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top" bgcolor="#F1F1F1"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>
              </tr>
              <tr>
                <td align="left" valign="top"><img src="images/1pix.gif" width="1" height="1" /></td>
              </tr>
              <tr>
                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">
                    <tr>
                      <td width="13">&nbsp;</td>
                      <td width="192" align="left" valign="middle" class="hea">Resources</td>
                      <td width="11">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top" bgcolor="#F1F1F1">
				<table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">
				<form name="resources" method="post">
				<input type="hidden" name="keyword" id="keyword" />
				<input type="hidden" name="res_id" id="res_id" />
                    <tr>
                     <td width="10">&nbsp;</td>
                      <td width="200">&nbsp;</td>
                     <td width="10">&nbsp;</td>
                    </tr>
					{section name=cust loop=$arr_resources}
                    <tr>
                      <td colspan="3" align="center" class="ver11">
					  <a href="javascript: access({$arr_resources[cust].id});" class="ver11">{$arr_resources[cust].title}</a>
					  </td>
                    </tr>
                   {/section}
				   <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
				</form>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>
              </tr>
            </table></td>
            <td width="9">&nbsp;</td>
            <td width="518" align="left" valign="top">
			<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
              {section name=cust loop=$arr_products}
			  <tr>
                <td align="left" valign="top">
				<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="str4">
                  <tr>
                    <td colspan="3" align="left" valign="top">
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="326" height="26" align="left" valign="middle" background="images/products_bg.gif">
						  <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="4%">&nbsp;</td>
                                <td width="96%" class="hea">{$arr_products[cust].product_name}</td>
                              </tr>
                          </table></td>
                          <td align="left" valign="top"><a href="adr_registration.html">
						  <img src="images/{cycle values="down_free.gif,signupforbeta.gif"}" width="156" height="21" border="0" /></a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td colspan="3" align="center" valign="top"><img src="images/5pix.gif" width="1" height="5" /></td>
                  </tr>
                  <tr>
                    <td width="20%" align="center" valign="middle">
					<img src="product_images/{$arr_products[cust].product_image}" width="39" height="66" /></td>
                    <td width="78%" align="left" valign="top" class="ver11">
					<div align="justify">{$arr_products[cust].short_description}</div></td>
                    <td width="2%">&nbsp;</td>
                  </tr>
	                 <tr>
                    <td>&nbsp;</td>
                    <td align="right" valign="middle"><table width="18%" border="0" align="right" cellpadding="0" cellspacing="0">
                       <tr>
                         <td width="54%" align="right" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                         <td width="46%" align="right" valign="middle" class="more"><a href="ad_reporter.html" class="more">More</a></td>
                        </tr>
                    </table></td>
                    <td>&nbsp;</td>
                 </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><img src="images/5pix.gif" width="1" height="5" /></td>
              </tr>
			  {/section}
            </table></td>
            <td width="10">&nbsp;</td>
            <td width="211" align="right" valign="top"><table width="216" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" valign="top" background="im"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">
                    <tr>
                      <td width="13">&nbsp;</td>
                      <td width="192" align="left" valign="middle" class="hea">Login</td>
                      <td width="11">&nbsp;</td>
                    </tr>
               </table></td>
              </tr>
              <tr>
                <td align="left" valign="top" bgcolor="#F1F1F1">
				{if $session_username != ''}
				<form id="form1" name="form1" method="post" action="" onsubmit="javascript:return check();">
                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4" class="str2">
				 <tr>
                     <td align="left" valign="middle" class="ver11" colspan="2">Logged In as</td>
                  </tr>
                    <tr>


                      <td width="37%" align="right" valign="middle" class="ver11">&nbsp; </td>



                      <td width="63%">{$session_username}</td>



                    </tr>

					

                    <tr>



                      <td colspan="2" align="right" valign="middle" class="ver11"><a href="logout.php" class="ver11">Log Out</a></td>



                      </tr>



                  </table>



               </form>

				{else}

				<form id="form1" name="form1" method="post" action="" onsubmit="javascript:return check();">



                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4" class="str2">



                    <tr>



                      <td width="37%" align="right" valign="middle" class="ver11">User Name : </td>



                      <td width="63%"><input name="uname" type="text" class="loginfield" /></td>



                    </tr>



                    <tr>



                      <td align="right" valign="middle" class="ver11">Password&nbsp;:</td>



                      <td><input name="pwd" type="password" class="loginfield" /></td>



                    </tr>



                    <tr>



                      <td>&nbsp;</td>



                      <td align="left" valign="middle"><input type="submit" name="Submit" value="Login" /></td>



                    </tr>



                    <tr>



                      <td colspan="2" align="center" valign="middle"><a href="#"><span class="ver11">Forget your ID or password?</span></a></td>



                      </tr>



                    <tr>



                      <td colspan="2" align="center" valign="middle" class="ver11"><a href="register.php" class="ver11">Sign Up</a></td>



                      </tr>



                  </table>



               </form>

				{/if}



                </td>



              </tr>



              <tr>



                <td align="left" valign="top" bgcolor="#F1F1F1"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>



              </tr>



              <tr>



                <td align="left" valign="top"><img src="images/1pix.gif" width="1" height="1" /></td>



              </tr>



              <tr>



                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">



                    <tr>



                      <td width="13">&nbsp;</td>



                      <td width="192" align="left" valign="middle" class="hea">Awards</td>



                      <td width="11">&nbsp;</td>



                    </tr>



                </table></td>



              </tr>



              <tr>



                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">



                    <tr>



                      <td width="10">&nbsp;</td>



                      <td width="200">&nbsp;</td>



                      <td width="10">&nbsp;</td>



                    </tr>



                    {section name=cust loop=$arr_awards}



					<tr>



                      <td colspan="3" align="center" class="ver11">



					  <a href="{$arr_awards[cust].site_url}" class="ver11">



					  {if $arr_awards[cust].image_path ne ''}



					  <img src="awards/{$arr_awards[cust].image_path}" alt="{$arr_awards[cust].name}" border="0" />



					  <br />



					  {/if}



					  {$arr_awards[cust].name}



					  </a>



					  </td>



                    </tr>



					{/section}



                    <tr>



                      <td>&nbsp;</td>



                      <td>&nbsp;</td>



                      <td>&nbsp;</td>



                    </tr>



                </table></td>



              </tr>



              <tr>



                <td align="left" valign="top"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>



              </tr>



            </table></td>



          </tr>



        </table></td>



        <td width="1%">&nbsp;</td>



      </tr>



      



      



      <tr>



        <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>



        </tr>



      



    </table></td>



  </tr>



  



  <tr>



    <td align="left" valign="top"><table width="965" height="29" border="0" align="center" cellpadding="0" cellspacing="0" background="images/ind_privacybg.gif">



      <tr>



        <td width="20" align="left" valign="middle">&nbsp;</td>



        <td width="945" align="left" valign="middle" class="ver11"><a href="linktous.html" class="ver11">Link to Us</a> &nbsp;| &nbsp;<a href="termofuse.html" class="ver11">Terms of Use</a>&nbsp; | &nbsp;<a href="privacy_policy.html" class="ver11">Privacy Policy</a> | <a href="aboutus.html" class="ver11">About Us</a></td>



      </tr>



    </table></td>



  </tr>



  <tr>



    <td align="left" valign="top"><table width="100%" height="43" border="0" align="center" cellpadding="0" cellspacing="0" background="images/copy_bg.gif">



      <tr>



        <td align="center" valign="middle" class="copy">Copyright © 2008 CionSystems, Inc. All Rights Reserved .</td>



      </tr>



    </table></td>



  </tr>



</table>



</body>



</html>



