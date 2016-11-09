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
            <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span>  <span>Multi-</span><em>Factor</em></h2></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                <tr>
                  <td colspan="2" align="left" style="font-size:15px;" class="highlite"><h3>Multi-Factor, Strong Authentication for All</h3></td>
                </tr>
                <tr>
                  <td width="75%" valign="top"><p align="justify">You are developing web application, should you write “so much code” for user management, multifactor authentication, account creation and management, password management and self-service, audit?</p>
                    <p align="justify">Use CionSystems Identity as a service and get all the above. Let CionSystems take care of the user management and authentication, and you focus on the core parts of your application.</p>
					<p align="justify">CionSystems provides the option in two flavors.  Integrate and install it in your environment or we manage the users for you. You simply integrate with our webservice and you get the complete “user life cycle management” into your application. You can re-use the same users for other web-application as well.</p>
                    </td>
                  <td width="25%" align="center" valign="top">
				  <a href="../datasheet/ESS_Authentication_Service_Api_Guide.pdf"  target="_blank"><img src="img/webServiceApi_ESS.jpg" /></a><br />
				   <br /><br />
				  
				  <a href="../datasheet/Cloud_Identity_Minder_WebService_Usage_Guidelines.pdf" target="_blank"> <img src="img/webServiceApi_cim.jpg" border="0" /></a>
				  <br /><br />
                   <!--<img src="images/ad_provisioning.jpg" alt="ActiveDirectoryManager" width="154" height="193" title="Active Directory Manager"/>-->
                    {section name=cust loop=$array} 
                    <!-- {if $smarty.section.cust.rownum eq 2}
           
                    {if $session_username != ""}
                    <a href="demo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
                    <a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> --> {/if} 
                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />--> 
                    <!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />--> 
                    
                     {if $session_username != ""} <a href="download.php?id=11"></a> {else} <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"></a> 
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
                  <td align="left" class="olink">
				  <p><b>Obtain Identity as a service in the cloud or deploy the solution within your enterprise.</b></p>
                    </td>
                  <td width="25%" align="center" valign="middle"></td>
                </tr>
                <tr>
				
				<tr>
                  <td colspan="2" valign="top"><table border="1" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse; border:solid 1px #ccc">
                      <tr style="background-color:#f0f0f0;">
                        <td align="center" width="50%" style="line-height:25px; border:solid 1px #ccc;padding-top:10px"><b><a href="Cloud_Identity_Minder.php"> <img src="img/cloudIdentifyer.jpg" width="175" height="37" border="0" /></a> 
                  
						</b></td>
                        <td align="center" width="50%" style="border:solid 1px #ccc; padding-top:10px"><b><a href="Enterprise-Self-Service.php"> <img src="img/enterprise_self.jpg" width="175" height="37" border="0" /></a>
						<br />
                  
						</b></td>
                      </tr>
                      <tr>
                        <td width="50%" valign="top">
                          <ul class="list">
                            <li>
                              <p>Identity as a service – cloud, enterprise for all web applications</p>
                            </li>
                            <li>
                              <p>Two factor authentication for windows login and web applications </p>
                            </li>
                            <li>
                              <p>Complete user life cycle management</p>
                            </li>
                            <li>
                              <p>User audit</p>
                            </li>
                            <li>
                              <p>Self service for users including self-signup of users</p>
                            </li>
                            <li>
                              <p>Password reset</p>
                            </li>
                            <li>
                              <p>Supports Microsoft Active Directory, OpenLDAP, Office365 , Azure and other clouds</p>
                            </li>
                            
                          </ul></td>
                        <td>
                          <ul class="list">
                            <li>
                              <p>All in one</p>
                            </li>
                            <li>
                              <p> Identity as a service – cloud, enterprise for all web applications</p>
                            </li>
                            <li>
                              <p> Two factor authentication for windows login and web application</p>
                            </li>
                            <li>
                              <p> Complete user life cycle management</p>
                            </li>
                            <li>
                              <p> User audit</p>
                            </li>
                            <li>
                              <p> Self service for users including self-signup of users</p>
                            </li>
                            <li>
                              <p> Password Synchronization – cloud and on premise targets</p>
                            </li>
                            <li>
                              <p> Password reset via credential provider </p>
                            </li>
                            <li>
                              <p> Workflow based access management and group membership management</p>
                            </li>
							<li>
                              <p> User Profile Management</p>
                            </li>
							<li>
                              <p> Supports Microsoft Active Directory, Office 365, Azure and other clouds</p>
                            </li>
                          </ul></td>
                      </tr>
                    </table></td>
                        <td width="25%" valign="top"></td>
                      </tr>
                    </table></td>
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
