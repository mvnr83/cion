{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
	DD_roundies.addRule('.box', '10px 10px 10px 10px', true);
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
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td colspan="2" align="left"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Reporter</h2></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class="highlite"><h3>Comprehensive, easy to use and cost-effective Active Directory reporting <br />
      With over 200 out-of-the-box reports </h3></td>
  </tr>
  <tr>
    <td width="75%" valign="top"><p>Reporting on Windows Active  Directory (AD) gives IT administrators the essential information needed to  perform their jobs successfully. Active Directory Reporter is a simple, easy to  use, centralized and cost-effective reporting tool. This application quickly  extracts vital data from Microsoft Windows Server 2000+ infrastructure and  displays it in an easy to understand format. You can easily generate advanced or  general reports on Users, Objects, Contacts, Domains, OUs, Groups, GPO, Computers,  Exchange, File, Printers and other objects.</p>
        <p>Active Directory Reporter  has an extensive list of reports with over 200 out-of-the-box reports on the AD  infrastructure resources. The web-based interface enables users with no  scripting or command-line knowledge to generate reports on AD in accordance to  the specific needs of the organization. The Dashboard view  helps you and other IT staff to quickly view the AD object status.&nbsp; Adherence to various external and internal  policies can be monitored by periodically generating and analyzing the policy  related reports. The scheduled reports and notifications (such as password  expiration and email inbox size limit) can be sent to a one or more email  addresses as needed.</p></td>
        <td align="center" valign="middle">
         <a href="cart_item.php?id={$product_id}&cart=add" class="lbOn"><img src="images/buy_now.gif" width="175" height="37" border="0" /></a><br />
        <a href="http://www.youtube.com/results?search_query=cionsystems&search_type=&aq=f" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
        {section name=cust loop=$array}
           {if $smarty.section.cust.rownum eq 5}
           
            {if $session_username != ""}
<a href="demo.php?product=ActiveDirectoryReporter"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=ActiveDirectoryReporter"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {/if}
       <br />
        <!--<a href="buyitnow.php?product=ActiveDirectoryReporter"><img src="images/buy.gif" border="0" /></a>-->
              <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
              
<!--              <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now" border="0" />-->
              
                   {if $session_username != ""}
                   <a href="download.php?id={$product_id}"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                   {/if}
            <br />
<!--            <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
            <br />  -->
            <a href="../datasheet/ADR_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>
             {/if}
          {/section}
            
            </td>
    
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
                <li>Over 200 reports for immediate deployment and reporting</li>
                <li>Lower the cost of your regulatory compliance to SOX, PCI, HIPAA, etc.</li>
                <li>Increase visibility into all aspects of Active Directory</li>
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
  <td align="center"><object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/a5n5T0oKimQ&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/a5n5T0oKimQ&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="490" height="275"></embed></object></td>
<td width="25%" align="center" valign="middle"><img src="images/ad_reporter.jpg" alt="ActiveDirectoryReporter" width="154" height="193" title="Active Directory Reporter" /></td>
  </tr>
  <tr>
    <td colspan="2" valign="top" class="vline"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td align="left" valign="top"><div class="head-list hrline">
          <h3>Benefits</h3>
          <ul type="square">
            <li>Lower cost of operation</li>
            <li>Single point of access for all reporting needs</li>
            <li>Full reporting and auditing</li>
            <li>Enforce policies and prove compliance</li>
            <li>Helps with migration efforts</li>
            <li>Easy install and ramp-up </li>
          </ul>
        </div></td>
        <td align="left" valign="top"><div class="head-list hrline">
          <h3>Features</h3>
          <ul type="square">
            <li>Browser-based UI, customized by role</li>
            <li>200+ ready-to-use reports, customizable</li>
            <li>AD notifications &ndash; inbox  size, password expiry, etc</li>
            <li>Powerful Search abilities</li>
            <li>Emailed reports</li>
            <li>Print/export reports</li>
            <li>No coding or command line  scripting needed</li>
          </ul>
        </div></td>
        
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" valign="top" class="head-list"><h3><strong>Control Resource Utilization and Capital Spending</strong></h3>
        <p>With Active Directory  Reporter you can track system information in order to plan changes, assess  needs and improve budgeting.&nbsp; IT  administrators can collect the most current data available or take advantage of  scheduling capabilities to minimize the impact on users and network resources.</p>
      <h3><strong>Improve Migration and Planning</strong></h3>
      <p>With comprehensive  reporting on all groups, domains, computers, users, and more, this application  allows you to design Active Directory in a way that meets the specific needs of  your organization. This produces a more relevant environment and simplifies  migration projects.</p>
      <h3>Compliance Views</h3>
      <p>Quickly drill down into  general or very specific compliant and non-compliant categories/areas with the  Dashboard view. Advanced customization capabilities for the reports can  granularly display compliance results. Reports generated with this application  facilitate a periodic review of the entire AD inventory of objects in  compliance with the requirements during audits (SOX Compliance, PCI, etc).  Reports on Security Groups, File/Folder permissions, recently modified Users,  Computers, GPOs, OUs, OS based reports, Nested Reports, Log-on based reports  and more, can be auto generated using this application. The reports that are  critical to Compliance Audits are easily obtained using the Active Directory  Reporter.</p>
      <p align="left" class="olink"><a href="sox_compliance.php">More about SOX compliance</a></p>
      <h3>Data Analysis and Presentation</h3>
      <p>Only Active Directory  Reporter provides more than 200 unique, predefined, editable reports that you  can output to multiple formats including Excel, Word, CSV, HTML, LDIF or view  in real-time via the Dashboard portal. The application also empowers you to  create customized reports with the flexibility to include additional attributes  and leverage advanced filtering. Active Directory Reporter promotes efficient,  effective reporting that reflects the unique informational needs of your  organization.</p>
      <h3><strong>Informed Decision Making</strong></h3>
      <p>You can quickly drill down  into general or specific compliant and non-compliant categories/areas with the  Dashboard view. Advanced customization capabilities for the reports will  granularly display compliance results.</p>
      <h3><strong>Reports at-a-glance</strong></h3>
      <p>With Active Directory  Reporter&rsquo;s easy to understand user interface and accurate reports, you can  lower the cost of troubleshooting and managing objects such as:</p>
      <table width="60%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td valign="top" class="hrline"><ul>
                <li>Users </li>
              <li>Contacts</li>
              <li>Computers</li>
              <li>Domains</li>
              <li>Organizational  Units (OU)</li>
              <li>Groups</li>
              <li>GPOs</li>
            </ul></td>
            <td valign="top"><ul>
                <li>Exchange Server</li>
              <li>Terminal Server</li>
              <li>Printers</li>
              <li>File shares</li>
              <li>Replication</li>
              <li>Schema and Sites</li>
              <li>Policy, Trust and or any LDAP attributes</li>
            </ul>
            </td>
          </tr>
        </table>
        <h3>Out of the box reports</h3>
      <div class="box" style="border:2px solid #CCCCCC;width:550px;">
      <table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td align="left" width="50%" valign="top" class="hrline">
            <div id="list" >
                <ul>
                  <li><img src="images/bullet1.gif" />Active Directory User  Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Logon Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Password Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Computer Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory Site  Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Replication Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory OU  Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Group Reports</li>
                </ul>
            </div></td>
            <td align="left" valign="top"><div id="list">
                <ul>
                  <li><img src="images/bullet1.gif" />Active Directory  Security Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Exchange Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory GPO  Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory File  and Printer Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Policy Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Terminal Server Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Schema Reports</li>
                  <li><img src="images/bullet1.gif" />Active Directory  Trust Reports</li>
                </ul>
            </div></td>
          </tr>
      </table>
        </div>
        </td>
  </tr>
  <tr>
    <td colspan="2" valign="top">&nbsp;</td>
  </tr>
</table>
    
    </td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>


</form>