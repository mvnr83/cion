
{literal} 
<script type="text/javascript">

    /* varying radii, "all" browsers */

    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.compare', '10px 10px 0px 0px', true);
    DD_roundies.addRule('.com-title', '10px 10px 0px 0px', true);
</script> 
<script language="javascript" type="text/javascript">

    function showtrial(id, uname, pname) {
        document.getElementById('product_id').value = id;
        document.getElementById('keyword').value = 'trial';
        document.getElementById('download_type').value = 'trial';
        document.getElementById('pname').value = pname;
        if (uname == '' || uname == null) {
            document.form1.action = "login.php";
            return true;
        }
        else {
            document.form1.action = "tryitnow.php";
            return true;
        }
    }

    function login(id, pname) {
        document.getElementById('product_id').value = id;
        document.getElementById('keyword').value = 'trial';
        document.getElementById('download_type').value = 'trial';
        document.getElementById('pname').value = pname;
        if (id != '') {
            document.form1.action = "login.php";
            document.form1.submit();
        }

    }
</script>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
<style type="text/css">

#popup a  
{
    color:#fb6e40;
    font-weight:bold;
    text-decoration:none;
}

/* the IE correction rule */

#popup a:hover	{
	color: white; 
	font-weight:bold; 
	background-color:#fb6e40;
	text-indent: 0; /* added the default value */
}

</style>
<script type="text/javascript" src="lightbox/scripts/prototype.js"></script> 
<script type="text/javascript" src="lightbox/scripts/lightbox.js"></script> 
{/literal}
<form method="post" action="" name="form1">
  <input type="hidden" name="keyword" id="keyword" />
  <input type="hidden" name="product_id" id="product_id" />
  <input type="hidden" name="pname" id="pname" />
  <input type="hidden" name="res_id" id="res_id" />
  <input type="hidden" name="download_type" id="download_type" />
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="2%">&nbsp;</td>
      <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> / <span>Multi-</span>  <em>Factor</em></h2></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                <tr>
                  <td colspan="2" align="center" class="highlite"><h3>Provisioning System</h3></td>
                </tr>
                <tr>
                  <td width="75%" valign="top"><p>Two-factor authentication assures your data and accounts are protected and significantly reduce the chance of being hacked. </p>
                    <p>Your data can be accessed or stolen if your password is compromised.</p>
					<p>Two-factor authentication solves this problem.  Your data or accounts require two separate authentication attempt to be accessed, and if one of the authentification is stolen or compermised, your data or devices are still secure and protected.</p>
                    </td>
                  <td width="25%" align="center" valign="top"> <br />
                   
                    {section name=cust loop=$array} 
                    <!-- {if $smarty.section.cust.rownum eq 2}
           
                    {if $session_username != ""}
                    <a href="demo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
                    <a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> --> {/if} 
                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />--> 
                    <!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />--> 
                    
                     {if $session_username != ""} <a href="download.php?id=11"><img src="images/download_trail_pro.gif" width="175" height="37" border="0" /></a> {else} <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a> 
                    {/if} 
                    <!--                   <br />
                   <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>--> 
                    <br />
                    
                    <!--<a href="buyitnow.php?product=ActiveDirectoryManager"><img src="images/buy.gif" border="0" /></a>--> 
                    {/if}
                    {/section} 
                    
                    <!--      {section name=cust loop=$array}
           			{if $smarty.section.cust.rownum eq 1}
                   	<input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow_pro.gif" alt="Try It Now"  border="0" />
                	{/if}
                	{/section}-->
                    
    				</td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
								
                <tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <img src="images/MultiFactor.jpg" alt="Provisioning" width="520" height="300" title="MultiFactor"/>
                    </object>
                    
                  <td width="25%" align="center" valign="middle"><img src="images/ad_provisioning.jpg" alt="ActiveDirectoryManager" width="154" height="193" title="Active Directory Manager"/></td>
                </tr>
                <tr>
				
				<tr>
                  <td width="75%" valign="top"><p>With CionSystems solution you have the option of providing something you only know, PIN via email and or PIN via mobile.</p>
				  <p>CionSystems solution protects workstation login, mobile and web applications, and even person to person communications. The web application multifactor authentication provides Identity in the internet along with complete user life cycle management for the identity, userid, password, and multi-factor elements.</p>
				  <p>See CionSystems Multi-Factor authentication in use, securing a Windows login. Coming Soon</p>
				  <p>Sign up free and multifactor factor solution for Windows Login (hyper link signup page)link to#2</p>
				  <p>See CionSystems Multi-Factor authentication for  securing a Windows login in an enterprise and for web applications.link to #3</p>
				  </td>
				  <td width="25%"></td>
                    </tr>
				
				
				
				
				
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
                    
                <tr>
                  <td colspan="2" valign="top">&nbsp;</td>
                </tr>
              </table></td>
          </tr>
        </table></td>
      <td width="2%">&nbsp;</td>
    </tr>
  </table>
</form>
