{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */

    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
	 DD_roundies.addRule('.compare', '10px 10px 0px 0px', true);
	 DD_roundies.addRule('.com-title', '10px 10px 0px 0px', true);
</script>
<script language="javascript" type="text/javascript">

function showtrial(id,uname,pname)
{
	document.getElementById('product_id').value=id;
	document.getElementById('keyword').value='trial';
	document.getElementById('download_type').value='trial';
	document.getElementById('pname').value = pname;
	if(uname == '' || uname == null)
	{
		document.form1.action = "login.php";
		return true;
	}
	else
	{
		document.form1.action="tryitnow.php";
		return true;
	}
}

function login(id,pname)
{ 
	document.getElementById('product_id').value=id;
	document.getElementById('keyword').value='trial';
	document.getElementById('download_type').value='trial';
	document.getElementById('pname').value = pname;
	if(id!='')
	{
		document.form1.action = "login.php";
		document.form1.submit();
	}

}
</script>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
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
    <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Manager / <span>Active Directory</span> Manager <em>Pro</em></h2></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2" align="center" class="highlite"><h3>The easiest, most efficient way to manage your organization&rsquo;s users, computers, resources,<br />
          and accounts using the Active Directory</h3></td>
      </tr>
      <tr>
        <td width="75%" valign="top"><p>Active Directory (AD) is the backbone infrastructure for critical enterprise identity management and messaging services, and its availability and security must be assured. Windows native tools lack flexibility, automation and do not scale well in today's business environments.  They create complexities when trying to distribute administrative roles securely, or offer insufficient reporting and real-time notification capabilities to insure the infrastructure availability and IT services before changes are put into production.</p>
              <p>IT Administrators face the challenge of managing Active Directory (AD) almost every day. For example, configuring user properties manually is time consuming and error-prone, especially in large, complex Windows networks. Accomplishing the normal AD management tasks also demands in-depth knowledge of the Active Directory module and scripting language.</p>
              <div class="succeed">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="left" valign="top"><h2>Succeed with CionSystems</h2></td>
                </tr>
                <tr>
                  <td><ul>
                    <li>Manage your Active Directory safely, lowering the risk of operational changes</li>
                    <li>Lower the cost of your AD management</li>
                    <li>Easy install, configured in minutes</li>
                    <li>Increase visibility and reach beyond the native tools</li>
                    <li>Seamless installation between all Windows Server editions</li>
                    </ul></td>
                </tr>
              </table>
              </div>
              
              </td>
              <td width="25%" align="center" valign="top">
              <a href="cart_item.php?id={$product_id}&cart=add" class="lbOn"><img src="images/buy_now.gif" width="175" height="37" border="0" /></a><br />
              <a href="http://www.youtube.com/results?search_query=cionsystems&search_type=&aq=f" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
            {section name=cust loop=$array}
       <!-- {if $smarty.section.cust.rownum eq 2}
           
            {if $session_username != ""}
<a href="demo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> -->                  {/if}
                   <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
<!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->
                   
                  <a href="../datasheet/ADM_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>
                   <br />
                   {if $session_username != ""}
                   <a href="download.php?id={$product_id}"><img src="images/adm_trail.jpg" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/adm_trail.jpg" width="175" height="37" border="0" /></a>
                   {/if}
                   <br />
                   
                   {if $session_username != ""}
                   <a href="download.php?id=11"><img src="images/download_trail_pro.gif" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail_pro.gif" width="175" height="37" border="0" /></a>
                   {/if}
<!--                   <br />
                   <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>-->
                   <br />
                  <a href="#compare"><img src="images/compareed.gif" width="175" height="37" border="0" /></a> <br />
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
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr>
      <td align="center" class="olink">
      <object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/RYW3WTDml6U?fs=1&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/RYW3WTDml6U?fs=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>
      &nbsp;&nbsp; <a href="http://www.youtube.com/watch?v=RYW3WTDml6U" target="_blank">&raquo; More viedos</a></td>
      <td width="25%" align="center" valign="middle"><img src="images/ad_manager.jpg" alt="ActiveDirectoryManager" width="154" height="193" title="Active Directory Manager"/></td>
      </tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr>
        <td colspan="2" valign="top"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="75%" valign="top">
              
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="42%" align="left" valign="top"><div class="head-list hrline">
                      <h3>Benefits</h3>
                    <ul type="square">
                        <li>Lower cost of operation</li>
                      <li>Centralized access, single point of access</li>
                      <li>Fast, automate user provisioning</li>
                      <li>Full reporting and auditing</li>
                      <li>Enforce policies and prove compliance</li>
                      <li>Reliably manage access rights</li>
                      <li>Helps with migration efforts</li>
                      <li>Easy install and ramp-up </li>
                      <li>All functionality included in one file, no need for multiple modules</li>
                      <li>Task approvals decrease errors and inconsistencies &ndash;<span class="pro-list"> Pro version</span></li>
                      <li>Automates the provisioning and deprovisioning process &ndash; <span class="pro-list">Pro version</span></li>
                      <li>Schedule the tasks of adding and removing objects &ndash; <span class="pro-list">Pro version</span></li>
                      <li>Monitor the execution of tasks &ndash; <span class="pro-list">Pro version</span></li>
                      <li>Ability to accept or operations deny requests &ndash; <span class="pro-list">Pro version</span></li>
                    </ul>
                  </div></td>
                  <td width="32%" align="left" valign="top"><div class="head-list hrline">
                      <h3>Features</h3>
                    <ul type="square">
                        <li>Browser-based UI, customized by role</li>
                      <li>No coding or command line scripting</li>
                      <li>Secure provisioning and deprovisioning</li>
                      <li>Granular password, ACL management</li>
                      <li>200+ ready-to-use reports, customizable</li>
                      <li>Exchange mailbox management</li>
                      <li>Centrally manage multiple domains</li>
                      <li>Bulk object management </li>
                      <li>Customizable templates increase functionality</li>
                      <li>Real-time notifications &ndash; inbox size, password expiry, etc</li>
                      <li>Change Approval  process &ndash; <span class="pro-list">Pro version</span></li>
                      <li>Temporary User and  Group management &ndash; <span class="pro-list">Pro version </span></li>
                      <li>Schedule object  addition and removal &ndash; <span class="pro-list">Pro version</span> </li>
                    </ul>
                  </div></td>
                </tr>
              </table></td>
              
              
              
            <td width="25%" valign="top"><div class="system">
              <h3>System Requirements :</h3>
              <ul class="list">
                <li>Intel Pentium Processor, AMD, or equivalent</li>
                <li>Microsoft Windows Server 2000+ XP Professional (Windows Administrative Pack required)</li>
                <li>IIS 5.X (X abbreviates for Version)</li>
                <li>Microsoft .NET Framework 2.0, ASP 2.0</li>
              </ul>
              </div>
              <div class="system" style="margin-top:10px;">
              <h3>Additional requirements for Active Directory Manager Pro :</h3>
              <ul class="list">
               <li>.NET framework 3.5 (or higher)</li>
                <li> Exchange Administrative tools</li>
	
     <li> GPMC and Windows Installer 3.1</li>
     <li>SQL Server 2000 (or higher) or SQL Server Express 2005</li>
             <li>Compatible Browser: Internet Explorer 6.0 (or higher)</li>   
              </ul>
            </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2" valign="top" class="head-list"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="75%" align="left" valign="top" class="hrline"><h3>What problems does it solve?</h3>
              <ul>
                <li>Eliminates repetitive, routine or complex tasks associated with AD management </li>
                <li>Automates scheduled management and reporting activities for IT Administrators</li>
                <li>Facilitates Single or Bulk creation, modification and deletion of AD objects </li>
                <li>Acts as an essential resource during Compliance Audits like SOX, HIPAA, PCI, etc</li>
                <li>Securely manage all users and objects across multiple domains</li>
              </ul>
              <h3>Simplify Active Directory</h3>
              <p>CionSystems' Active  Directory Manager is an affordable solution that can automate these cumbersome  tasks and overall simplify AD management. Active Directory Manager is a  comprehensive web-based application that simplifies User provisioning and AD  administration. The solution features a Dashboard UI from which IT managers can  view and manage the full user lifecycle, along with automating tasks and  generate reports on Active Directory environment.</p></td>
            
            
            
    </tr>
    </table>
    </td>
    </tr>
      <tr>
        <td colspan="2" valign="top" class="head-list"><h3>Change Approval Process &ndash; Pro version</h3>
              <p>Having the Approval Process helps decrease IT errors when provisioning and deprovisioning users, creating groups and other objects. Provides a standardized change approval process for making changes to Active Directory data.</p>
           <h3>Temporary Users and Groups &ndash; Pro version</h3>
          <p>Automates the user provisioning and deprovisioning process for efficient user lifecycle management. Users that only need to be active for a specific time period can be securely created and scheduled for deletion, minimizing the security risks. Groups creation and expiration can be scheduled in advance, easing the burden on IT staff.</p>
          <h3>Temporary Group Memberships &ndash; Pro version</h3>
          <p>The task of adding or removing group members that need group membership for a specific amount of time is automated. You can easily and securely schedule and automate your group management.</p>
          <h3>Compliance</h3>
          <p>AD Administrators struggle to keep up with requests to create, change or remove user access to various network resources. With the advent of compliance regulations like the Sarbanes-Oxley Act (SOX), and the intense scrutiny they place on access to business-sensitive applications, companies can no longer rely on numerous manual provisioning processes to maintain compliance.<br />
            When trying to comply with the regulatory requirements like SOX, PCI, etc. it becomes mandatory to implement competent security policies and procedures. A secure environment can be established with the help of Active Directory Manager, which focuses on the key concepts of security groups and permissions in AD. </p>
            <p align="left" class="olink"><a href="sox_compliance.php">More about SOX compliance</a></p>
          <h3>Role-based Delegation</h3>
          <ul>
                <li>More granular delegation of administrative authority </li>
            <li>Delegate tasks like reset passwords, create/delete/disable accounts, unlock user accounts</li>
            <li>Exercise control over every attribute modified </li>
          </ul>
          <h3>Group Policy Management</h3>
          <ul>
                <li>Manage GPO settings, Security Group Filters, Delegation, Link and unlinked GPOs </li>
            <li>Enable/disable class of settings for GPOs</li>
            <li>Apply and manage WMI Filters </li>
            <li>Backup/Restore/Import GPO Settings</li>
            <li>Over 60 GPO-specific reports, including viewing GPO settings, can be exported to HTML, Excel, Word</li>
          </ul>
          <h3>Temporary User and Group management</h3>
          <p>Automates adding or removing users or groups that only need to exist for a specific time period. Makes it possible to add or remove members from groups on a scheduled basis, ensuring that particular users and groups are deleted thus improving security by reducing orphaned accounts and groups.</p>
          <h3>Site, Schema, Replication and ACL</h3>
          <p>Using the web-based interface, IT administrators can easily manage the Site, Schema, Replication and ACL.</p></td>
      </tr>
      <tr>
        <td colspan="2" valign="top" class="head-list">
        <a name="compare" id="compare"></a><h3>Editions - Compare</h3>
        <div class="compare">
        <div class="com-title"><strong>Which version of the Active Directory Manager is right for me?</strong></div>
        <div class="com-grid">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tablegrid">
  <tr>
    <th width="50%" height="27" align="center">Features</th>
    <th width="25%" align="center">Active Directory Manager</th>
    <th width="25%" align="center" class="comprobg">Active Directory Manager PRO</th>
  </tr>
  <tr>
    <td>Web-based Interface</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Flexible Reporting</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Scheduling of Reports</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Role-based Delegation</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Granular Password and ACL management</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Exchange mailbox management</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Multiple domains administration</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Bulk object management</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Customizable templates</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Site, Schema management</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Real-time notifications</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Change Approval Process</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Transient Users</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Temporary Groups</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Scheduled Group Membership<br /></td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Mobility (Windows and Blackberry), OCS Support</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Remote wipe support for Windows Mobile and Black Berry</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Scheduled Groups creation and deletion</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Scheduled user provisioning and de-provisioning</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>LDIF support for users, groups <br />
      (LDAP Interchange format) (Lightweight Directory Interchange Format)</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Outlook configuration (Cpanel)<br />
Control Panel</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Archiving of deleted users</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
  <tr>
    <td>Restore Deleted users</td>
    <td align="center">&nbsp;</td>
    <td align="center"><img src="images/checkmark.gif" alt="check" width="19" height="18" /></td>
  </tr>
</table>

        </div>
        </div>
        
        </td>
      </tr>
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
    
    </td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>


</form>