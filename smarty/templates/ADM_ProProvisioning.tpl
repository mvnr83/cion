
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
    <td width="96%">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> 
    <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">
    Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Manager / <span>Active Directory</span> Manager 
    <em>Pro</em></h2></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2" align="center" class="highlite"><h3>Provisioning System</h3></td>
      </tr>
      <tr>
        <td width="75%" valign="top"><p>User Provisioning System creates, modifies, disables and deletes user accounts across IT infrastructure and business applications.  Provisioning system use templates and business rules to automate onboarding, off-boarding and other administration workforce processes such as, new hires, transfers, promotions and terminations. Typically the system runs on schedule basis and ensures that data is transferred or provisioned in the destination system from the source while applying rules/policies that transforms the data for destination system.

User provisioning to company software such as enterprise directory, IT-infrastructure commonly known as identity management, has typically been a daunting task for enterprises. Automated user provisioning allows tasks that would normally take days to enter mere hours, creates a single point of failure, while making your environment more streamlined. Automated user provisioning makes the process of user creation, modification and deletion simple, cost effective, secure, efficient and streamlined. 

CionSystems provisioning system simplifies this process via their predefined and customizable templates, policies via simple user interface. User provisioning doesn’t have to be complex anymore. No script or code is needed.
</p>
              <div class="succeed">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
             
                <tr>
                  <td><img src="untitled.jpg" alt="img1" width="548" height="215"><br/>
                  CionSystems Provisioning system has two major components. First one is a service component which is continuously run on schedule basis, based on the configuration. Second one is user interface to manage the system which is integrated in Active Directory Manager Application under Provisioning Tab.
                  <br/>
                  <img src="ProvisionImg3.jpg" alt="ProvisionImg3" width="608" height="250">
                  </td>
                </tr>
                <tr>
                <td>
                <img src="ProvisionImg4.jpg" alt="ProvisionImg4" width="608" height="268">
                </td></tr>
              </table>
              </div>
              
              </td>
              <td width="25%" align="center" valign="top">
             
    {/section}--><img src="ProvisionImg2.jpg" alt="ProvisionImage" width="621" height="414"></td>
       
      </tr>
     
     
      
             </table></td>
      </tr>
      
    </table>
    </td>
    </tr>
     
      
    </table></td>
  </tr>
</table>
    
    </td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>


</form>