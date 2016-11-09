{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
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

</script>
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
    <td><h2 class="protitle"><span>Active Directory</span> Manager</h2></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2" align="center"><h3>The easiest, most efficient way to manage your organization&rsquo;s users, computers, resources,<br />
          and accounts using the Active Directory</h3></td>
      </tr>
      <tr>
        <td width="75%" valign="top"><p>Active Directory (AD) is the backbone infrastructure for critical enterprise identity management and messaging services, and its availability and security must be assured. Windows native tools lack flexibility, automation and do not scale well in today's business environments.  They create complexities when trying to distribute administrative roles securely, or offer insufficient reporting and real-time notification capabilities to insure the infrastructure availability and IT services before changes are put into production.</p>
              <p>IT Administrators face the challenge of managing Active Directory (AD) almost every day. For example, configuring user properties manually is time consuming and error-prone, especially in large, complex Windows networks. Accomplishing the normal AD management tasks also demands in-depth knowledge of the Active Directory module and scripting language.</p></td>
        <td width="25%" align="center" valign="middle"><img src="images/ad_manager.jpg" alt="ActiveDirectoryManager" width="154" height="193" /></td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="75%" valign="top"><div class="succeed">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><h2>Succeed with CionSystems</h2></td>
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
            </div></td>
            <td width="25%" valign="top"><div class="system">
              <h3>System Requirements :</h3>
              <ul class="list">
                <li>Intel Pentium Processor, AMD, or equivalent</li>
                <li>Microsoft Windows Server 2000+ XP Professional (Windows Administrative Pack required)</li>
                <li>IIS 5.X (X abbreviates for Version)</li>
                <li>Microsoft .NET Framework 2.0, ASP 2.0</li>
              </ul>
            </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2" valign="top" class="vline"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td align="left" valign="top"><div class="head-list hrline">
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
              </ul>
            </div></td>
            <td align="left" valign="top"><div class="head-list hrline">
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
                <li>Real-time notifications &ndash; inbox size, password    	  expiry, etc</li>
              </ul>
            </div></td>
            <td align="center" valign="middle">
            {section name=cust loop=$array}
           {if $smarty.section.cust.rownum eq 2}
            <a href="scheduleademo.php?product=ActiveDirectoryManager"><img src="images/sademo.gif" width="175" height="37" border="0" /></a><br />
                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />
                    <br />
                  <a href="../datasheet/ADM_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>
                   {/if}
    {/section}
                  </td>
                  
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2" valign="top" class="head-list"><h3>What problems does it solve?</h3>
              <ul>
                <li>Eliminates repetitive, routine or complex tasks associated with AD management </li>
                <li>Automates scheduled management and reporting activities for IT Administrators</li>
                <li>Facilitates Single or Bulk creation, modification and deletion of AD objects </li>
                <li>Acts as an essential resource during Compliance Audits like SOX, HIPAA, PCI, etc</li>
                <li>Securely manage all users and objects across multiple domains</li>
              </ul>
          <h3>Simplify Active Directory</h3>
          <p>CionSystems' Active Directory Manager is an affordable solution that can automate these cumbersome tasks and overall simplify AD management. Active Directory Manager is a comprehensive web-based application that simplifies User provisioning and AD administration. The solution features a Dashboard UI from which IT managers can view and manage the full user lifecycle, along with automating tasks and generate reports on Active Directory environment.</p>
          <h3>Compliance</h3>
          <p>AD Administrators struggle to keep up with requests to create, change or remove user access to various network resources. With the advent of compliance regulations like the Sarbanes-Oxley Act (SOX), and the intense scrutiny they place on access to business-sensitive applications, companies can no longer rely on numerous manual provisioning processes to maintain compliance.<br />
            When trying to comply with the regulatory requirements like SOX, PCI, etc. it becomes mandatory to implement competent security policies and procedures. A secure environment can be established with the help of Active Directory Manager, which focuses on the key concepts of security groups and permissions in AD. </p>
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