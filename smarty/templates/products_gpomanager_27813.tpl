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
    <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Group Policy </span> Manager / <span>GPO</span> Manager</h2></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2" align="center" class="highlite"><h3>The easiest, most efficient way to manage your organization's Active Directory Group Policies</h3></td>
      </tr>
      <tr>
        <td width="75%" valign="top"><p>Group Policy allows users administrators to implement specific configurations for users and computers. Group Policy settings are contained in Group Policy objects (GPOs), which are linked to the following Active Directory directory service containers: sites, domains, or organizational units (OUs). </p>
      
              <p>As security issues are becoming paramount within any organizations. Within Active Directory (AD), the Group Policy Objects (GPOs) are at the forefront of an organization's ability to roll out and control functional security. Core aspects of user life cycle such as password policies, logon hours, software distribution, and other critical security settings are handled through GPOs. It is paramount for Organizations to have proper methods to control the settings of these GPOs and to deploy GPOs in a meaningful and safe manner with confidence, easily backup and restore GPOs when they are either incorrectly updated or corrupt. </p>
                <div style="float:right">

                                                    <img border="0" alt="" src="images/gpoimg2.jpg">

                                                </div> 
              <p>Windows Group Policy are powerful and allows user centralized management. However, uncontrolled and unintentional changes can have disastrous consequences. For example, unintended effects of a GPO change could stop hundreds of users from logging on, exclude access to critical software applications, or expose system settings. The Group Policy Management Console (GPMC) from Microsoft is a useful tool for the individual administrator, but additional functionality-such as GPO workflow management, check in/check out, change control, backup/restore, reports and rollback-is needed to effectively manage GPOs across the enterprise. </p>
              <p>CionSystems GPOManager offers a mechanism to control this highly important component of Active Directory. GPOs, Scope of Management links, and WMI filters are backed up in a secure, distributed manner and then placed under version control. </p>
             
             
              
              
              
              </td>
              <td width="25%" align="center" valign="top">
              <!--<a href="cart_item.php?id=5&cart=add" class="lbOn"><img src="images/buy_now.gif" width="175" height="37" border="0" /></a>--><br />
            <!--  <a href="http://www.youtube.com/results?search_query=cionsystems&search_type=&aq=f" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />-->
             <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a><br />
            {section name=cust loop=$array}
       <!-- {if $smarty.section.cust.rownum eq 2}
           
            {if $session_username != ""}
<a href="demo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> -->                  {/if}
                   <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
<!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->
                   
                 <!-- <a href="../datasheet/ADM_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>-->
                   
                   
                   {if $session_username != ""}
                   <a href="download.php?id=18"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
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
       
      
      <tr>
      <tr>
      	<td align="left" valign="top">
            <div class="system">
                <h3>
                    System Requirements :</h3>
                <ul class="list">
                    <li>Intel Processor, AMD, or equivalent</li>
                    <li>Microsoft Windows Server 2008+</li>
                    <li>IIS 7.X (X abbreviates for Version)</li>
                    <li>Microsoft .NET Framework 4.0, ASP 4.0</li>
                </ul>
            </div>
        </td>
      </tr>
<td>
 <div class="head-list hrline">

                                                    <h3>

                                                        GPOManager offers following benefits and more:</h3>

                                                    <ul type="square">

                                                        <li>Simplifies and automates critical tasks, reduces outages by eliminating manual process and scripts

                                                        </li>

                                                        <li>Helps prove compliance to ITIL, MOF, SOX, Basel II, HIPAA and C-198.

                                                        </li>

                                                        <li>Improves availability and disaster recovery via backup and rollback capabilities.

                                                        </li>

                                                        <li>Simplifies the enforcement of enterprise-wide business policies by enabling streamlined GPO control via workflow.

                                                        </li>

                                                        <li>Simplifies and improves network security by restricting access to production GPOs.

                                                        </li>

                                                        <li>Gives Active Directory administrators and security personnel's control of GPO changes, to eliminate system outages and security exposures 

                                                        </li>

                                                        <li>Allows administrators to edit and test GPOs and have them approved before they are deployed </li>

                                                        <li>Provides a way to quickly roll back changes</li>

                                                      <li>Archives all GPO settings </li>
<li>Leverages, complements and extends native Microsoft technology, including Group Policy Management Console (GPMC), to strengthen infrastructure investments</li>


                                                    </ul>

                                                </div>
                                                
                                                
                                                 <div class="head-list hrline">

                                                    <h3>

                                                        Features</h3>

                                                    <ul type="square">

                                                        <li><strong>Version Comparisons:</strong> Quickly verify setting consistency and improve GPO auditing with advanced, side-by-side GPO version comparisons at different intervals. 

                                                        </li>

                                                        <li><strong>Enhanced Group Policy Comparison</strong> and side-by-side two distinct GPO'S , two Versions and with Existing GPO with a Checkout copy GPO comparisons to verify setting consistency.

                                                        </li>

                                                        <li><strong>GPO history and Compare:</strong> to record all changes to GPO's

                                                        </li>

                                                        <li><strong>Delete version history:</strong> to manage and reduce size of backup store

                                                        </li>

                                                        <li><strong>Undo GPO changes:</strong> Rolled back to previous versions.

                                                        </li>

                                                        <li><strong>Approval-based workflow:</strong> process to ensure that changes adhere to change management best practices before their deployment.

                                                        </li>

                                                        <li><strong>Configure workflow:</strong>  to enable organizational requirements and set for specified users or groups on edit settings, cloak and uncloak and lock and unlock. </li>

                                                        <li><strong>Workflow Commenting:</strong> Track the request, review and approval process with comments and e-mail notifications at any stage.</li>
<li><strong>Scheduling:</strong> Enable approved changes to be implemented immediately or on a schedule.</li>
<li><strong>Microsoft Group Policy Management Console</strong> (GPMC) for familiar look and feel.</li>
<li><strong>Cloaking:</strong> Hidden pre-production GPS from all but selected administrators.</li>
<li><strong>GPO check-in</strong> and check-out to prevent simultaneous editing conflicts.</li>
<li><strong>GPO locking:</strong> to prevent unwanted changes to product GPOs.</li>
<li><strong>Backup and Restore:</strong> Schedules the ALL GPO's Backup or selected GPO's to be taken at a specified date and time </li>
<li><strong>Delegation and permissions management:</strong> Delegates or provide Read, Edit, Apply Permissions on GPO to Users</li>
<li><strong>Day to Day task :</strong> Perform common GPO Actions/Tasks like Create ,  Edit,  Delete,  Link, Rename ,Backup, Import, Restore GPO, add comments to GPO, View, Enable, Disable </li>
<li><strong>Manage security:</strong> Apply Filters to GPO</li>
<li><strong>Copy /Paste :</strong> Create a duplicate GPO with same settings</li>
<li><strong>Reports:</strong> Creates Report of all GPO'S at a specified Location.</li>
<li><strong>Advance Categorizing:</strong>  Easily find GPOS that are Linked , Unlinked, Orphaned, Disabled, Deleted etc.</li>
<li><strong>Replication:</strong> To replicate the data among the Available domain controllers</li>
<li><strong>Delegation:</strong> To grant Permission for Users to create GPO. To Apply WMI Filter.</li>
<li><strong>Grant Permission on All GPO's: </strong>To grant permission for users on all GPO's to read, Edit ,delete.</li>
                                          

                                                    </ul>

                                                </div>

</td>
      <td width="25%" align="center" valign="middle"><img src="images/gpo-manager.jpg" alt="Active Directory GPO Manager" width="154" height="193" title="Active Directory GPO Manager"/></td>
      </tr>
      
   
        </table></td>
      </tr>
     
    </table></td>
  </tr>
</table>
    
  


</form>