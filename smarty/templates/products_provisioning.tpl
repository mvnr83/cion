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
            <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Manager / <span>Provisioning</span> <em>System</em></h2></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                <tr>
                  <td colspan="2" align="left" class="highlite"><h3>&nbsp;Provisioning System</h3></td>
                </tr>
                <tr>
                  <td width="75%" valign="top"><p align="justify">User Provisioning System creates, modifies, disables and deletes user accounts across IT infrastructure and business applications. Provisioning system use templates and business rules to automate onboarding, off-boarding and other administration workforce processes such as, new hires, transfers, promotions and terminations. Typically the system runs on schedule basis and ensures that data is transferred or provisioned in the destination system from the source while applying rules/policies that transforms the data for destination system.</p>
                    <p align="justify">User provisioning to company software such as enterprise directory, IT-infrastructure commonly known as identity management, has typically been a daunting task for enterprises. Automated user provisioning allows tasks that would normally take days to enter mere hours, creates a single point of failure, while making your environment more streamlined. Automated user provisioning makes the process of user creation, modification and deletion simple, cost effective, secure, efficient and streamlined.</p>
                    <p align="justify">CionSystems provisioning system simplifies this process via their predefined and customizable templates, policies via simple user interface. User provisioning doesn't have to be complex anymore.No script or code is needed.</p>
                   </td>
                  <td width="25%" align="center" valign="top"><a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a> <br />
                    {section name=cust loop=$array} 
                    <!-- {if $smarty.section.cust.rownum eq 2}
           
                    {if $session_username != ""}
                    <a href="demo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
                    <a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> --> {/if} 
                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />--> 
                    <!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />--> 
                    
                    {if $session_username != ""} <a href="download.php?id=21"><img src="images/download_trail_pro.gif" width="175" height="37" border="0" /></a> {else} <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a> {/if} 
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
                	{/section}--></td>
                </tr>
                <tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <img src="img/provisioning_img_01.png" alt="Provisioning" width="616" height="256" title="Provisioning_img"/>
                    </object>
                  <td width="25%" align="center" valign="middle">
                  <img src="img/ad_provisioning.jpg" alt="ActiveDirectoryManager" width="163" height="203" title="Active Directory Manager"/></td>
                </tr>
                <tr>
                <tr>
                  <td width="75%" valign="top"><p>CionSystemsProvisioning system has two major components. First one is a service component which is continuously run on schedule basis, based on the configuration. Second one is user interface to manage the system which is integrated in Active Directory Manager Application under Provisioning Tab.</p></td>
                  <td width="25%"></td>
                </tr>
                <tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <img src="img/component_01.png" alt="Provisioning"  width="620" height="377" title="Provisioning_img1"/>
                    </object>
                  <td width="25%" align="center" valign="middle"></td>
                </tr>
                <tr>
                  <td width="75%" valign="top"><p>Provisioning system has features like import supplement/master data, configuration of transactional filesschema, other configuration settings, status tracking, audit logging and error logging.</p></td>
                  <td width="25%"></td>
                </tr>
                <tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <img src="images/provisioning3.jpg" alt="Provisioning" width="520" height="300" title="Provisioning_img2"/>
                    </object>
                  <td width="25%" align="center" valign="middle"></td>
                </tr>
                <tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <img src="images/provisioning4.jpg" alt="Provisioning" width="520" height="300" title="Provisioning_img2"/>
                    </object>
                  <td width="25%" align="center" valign="middle"></td>
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
