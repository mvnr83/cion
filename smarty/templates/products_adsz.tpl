{literal}
<script type="text/javascript">

    /* varying radii, "all" browsers */
    DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
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
<style type="text/css">
.newbox
{
    font-weight: bold;
    font-size: 13px;
    text-decoration: none; 
    color: #000000;
}
</style>
{/literal}
<form method="post" action="" name="form1">
<input type="hidden" name="keyword" id="keyword" />
<input type="hidden" name="product_id" id="product_id" />
<input type="hidden" name="pname" id="pname" />
<input type="hidden" name="res_id" id="res_id" />
<input type="hidden" name="download_type" id="download_type" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="2%">&nbsp;
            
        </td>
        <td width="96%">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <h2 class="navigation_protitle">
                            <a href="index.php" style="text-decoration: none;" title="Home">Home</a> <span style="font-size: 17px;
                                color: #999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration: none;"
                                    title="Products">Products</a> <span style="font-size: 17px; color: #999999;">&raquo;</span>
                            <span>Enterprise Self-Service</span> and <span>Microsoft | Office 365</span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td align="center">
                                    <div align="center" style="background: #fccd4d; width: 92%; border: solid 1px #a57901;
                                        font-weight: bold; font-size: 13px;">
                                        <table width="100%">
                                        <tr><td align="left" width="20%"><span class="newbox">What is new?</span></td>
										<td><a class="newbox" href="" onclick="window.open('http://cionsystems.com/MultiFactor.html', 'images', 'width=840,scrollbars=1, height=620'); return false;">
										- MultiFactor Authentication</a>
										</td>
										</tr>
										<tr>
										<td></td>
										<td align="left" width="80%"> <a class="newbox" href="" onclick="window.open('http://cionsystems.com/PasswordSync.html', 'images', 'width=840,scrollbars=1, height=620'); return false;">
                                        - Password Synchronization with Microsoft Office 365 and Microsoft Azure</a></td></tr>
                                        <tr>
										<td></td>
										<td align="left"><a class="newbox" href="http://cionsystems.com/TwoFactorAuth.php">- Two
                                            Factor Authentication and Self-Service </a></td></tr>
                                        </table>
                                    </div>
                                </td>
                                <td>&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;
                                    
                                </td>
                                <td>&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td width="75%" valign="top">
                                    <p>
                                        According to a recent report, about 1 in 4 calls to IT Help Desks involve resetting
                                        expired passwords, and unlocking user accounts. CionSystems saves you time and money
                                        by allowing employees to self-manage their accounts without having to call the Help
                                        Desk. This results in less downtime and increased satisfaction with IT processes.</p>
                                    <p>
                                        CionSystems Enterprise Self Service is a state-of-the-art solution for identity
                                        administration and access control. The Enterprise Self Service delivers the
                                        functionalities of web access policy creation and enforcement, user self-registration
                                        and self-service, delegated administration, password management, and reporting.
                                        Having 3 access levels provides the flexibility and reach necessary in today&rsquo;s
                                        complex business environment.</p>
										
										<p> Enterprise Self Service also exposes a web service api for Multifactor Authentication.
										This web service api is exposed to external clients to authenticate the users with Enterprise Self-service application.
										The external client just needs to provide User Name, password as first factor of Authentication and the Second factor
										to authenticate will be to validate using 1.Security Question with Answers  2.OTP over Email 3.OTP over Mobile.</p>
                                </td>
                                <td width="25%" align="center" valign="middle">
                                    <a href="buyitnow.php">
                                        <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                    <a href="Videos_all.php"
                                        target="_blank">
                                        <img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
                                    {section name=cust loop=$array} {if $smarty.section.cust.rownum eq 4}
                                    <!-- {if $session_username != ""}
<a href="demo.php?product=ActiveDirectorySelfService"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=ActiveDirectorySelfService"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> -->
                                    {/if}
                                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
                                    <!--                 <a href="buyitnow.php?product=ActiveDirectorySelfService"><img src="images/buy.gif" border="0" /></a>
                 <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->
                                    {if $session_username != ""} <a href="download.php?id={$product_id}">
                                        <img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                                    {else}<a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img
                                        src="images/download_trail.gif" width="175" height="37" border="0" /></a>{/if}
                                    <br />
                                    <a href="../datasheet/Enterprise_SelfService_Datasheet.pdf">
                                        <img src="images/downdata.gif" width="175" height="37" border="0" /></a> 
										
										<a href="../datasheet/ESS_Authentication_Service_Api_Guide.pdf"  target="_blank"> 
										<img src="images/Webservices.gif" width="175" height="37" border="0"></a>
										
										<a href="../datasheet/Enterprise_SelfService_how_to_dos.pdf"
                                            target="_blank">
                                            <img src="images/faqs.gif" width="175" height="37" border="0" /></a>
											
											<a href="../white_papers/Enterprise_IDentity_and_Governance_Suite.pdf">
                                        <img src="images/whitepaper.gif" width="175" height="37" border="0" /></a> {/if}
                                    {/section}
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <p>
                                       Enterprise Self Service allows users to reset their password and unlock their account using their <a class="newbox" href="" onclick="window.open('http://cionsystems.com/MobileResetPwd.html', 'images', 'width=600,scrollbars=1, height=620'); return false;">phone</a>, <a class="newbox" href="" onclick="window.open('http://cionsystems.com/MobileResetPwd.html', 'images', 'width=600,scrollbars=1, height=620'); return false;">tablet</a>, shared workstation or kiosk.</p>
                                    <p>
                                       Enterprise Self Service is the first product that can be deployed in hours and supports on-premises and cloud based identity stores.  This avoids complex processes, often with requiring human intervention, and greatly enhances security.  All actions follow a defined workflow, and are tracked for audit purposes - supporting governance and compliance requirements.</p>
                                    <p>
                                        Enterprise Self Service provides a complete, easily deployed and managed, solution.  This includes workflow, policy, administrative portal, end use portal, customizable look and feel, reporting, and audit logs.  Enterprise Self Service also delivers multifactor authentication and white pages.  The web based portal allows Enterprises to easily deploy a secure intranet and/or internet site where employees, partners, vendors, and customers can maintain their profile, access public directory information, and reset expired or forgotten passwords.</p>
                                        <p>
                                       The administrative portal allows for customization and configuration.  Support for delegation control to data owners or departmental administrators is provided.  Enterprise Self Service also allows for fine grain synchronization of data between stores.  Flat (non-hierarchal identity stores), such as Office 35, can leverage Enterprise Self Services ability to represent a company&#39;s organizational structure, simplifying reporting, delegation, and governance.</p>
                                    
                                    <p>
                                       Deployment is simple and quick.  Enterprise Self Service is a web based solution, and includes self-enrollment features which simplify and speed deployment.  Deployment reports, tracking, and automated emails for enrollment, notification, and as a reminder are built into the product.</p>
                                    
                                </td>
                                <td width="25%" valign="top">
                                    <div class="system">
                                        <h3>
                                            System Requirements :</h3>
                                        <ul class="list">
                                        <li>2GB RAM (4GB Recommended)</li>
                                        <li>50 MB of disk space</li>
                                        <li>Web Browser: IE 9.0 or higher, Chrome, Firefox</li>
                                        <li>Windows Server 2008+</li>
                                        <li>IIS server 7.0 or higher</li>
                                        <li>Microsoft .NET 4.0 Framework</li>
                                        <li>Optional - Access to Exchange Server 2003 or Exchange Server 2007, exchange 2010 or 2013</li>
                                        <li> Access to Windows Active Directory (2008+)</li>
                                        <li>SQL Server 2005 (or higher)</li>
                                        <li>Optional - For exchange 2007(or higher) support, please install Exchange 2007 (or higher)management tools on your system.</li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <!--<tr>
                                <td align="center">
                                &nbsp;
                                    <iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/lbRAfNCTCi0?fs=1&rel=0&modestbranding=1&enablejsapi=1"
                                        frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                </td>
                                <td align="center" valign="top">
                                    <img src="images/ad_selfservice.jpg" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" />
                                </td>
                            </tr>-->
                            <tr>
                                <td align="left">
                                    <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left" valign="top">
                                                <div class="head-list hrline" style="background:none">
                                                    <h3>
                                                        Features</h3>
                                                    <ul type="square">
                                                        <li>Supports Active Directory, Openldap, Other LDAP compliant directories, Virtual Directories, Azure AD or Office365 <br />
                                                        </li>
                                                        <li>Supports hybrid or pure cloud environment<br />
                                                        </li>
                                                        <li>Easy to deploy, scales to small to very large Directories<br />
                                                        </li>
                                                        <li>Web based, lightweight footprint, simple install, easy to use<br />
                                                        </li>
                                                        <li>Simple, configurable three tier access model: administrator, power user and users <br />
                                                        </li>
                                                        <li>Profile including manager attribute, Contact and Self group membership management<br />
                                                        </li>
                                                        <li>Complete group management, supports primary and secondary group owners</li>
                                                        <li>Flexible password policies that can vary based on domain, OU, geography, and group membership </li>
                                                        <li>Enforces strong authentication policies  </li>
                                                        <li>Account lock and unlock by administrator or users </li>
                                                        <li>Self-service Password reset, for Microsoft AD, OpenLDAP, AzureAD, Office365, Google apps, Sales force </li>
                                                        <li>Password synchronization Microsoft AD, OpenLDAP, AzureAD, Office365, Google apps, Sales force</li>
                                                        <li>Web-service API&#39;s for integration</li>
                                                        <li>Manager can manage all direct reports profiles</li>
                                                        <li>Delegated user can manage their assigned objects like OU&#39;s, groups, users and other objects</li>
                                                        <li>White-pages - free form search for Azure AD, Office365, Active Directory and other connectors </li>
                                                        <li>Full audit support - All changes are tracked including who changed what and when </li>
                                                    </ul>
                                                </div>
                                                <div align="center" style="width: 600px; margin: 0 auto 0 0;">
                                                    <img src="images/enterprise.png" alt="" width="500" border="0" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                 <td align="center" valign="top">
                                    <img src="images/enterprise-selfservice.jpg" style="margin-top:15px" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!--<tr>
                    <td align="center" valign="top">
                        <div align="center" style="width: 700px; margin: 0 auto 0 0;">
                            <object width="480" height="385">
                                <param name="movie" value="http://www.youtube.com/v/ycc-yF8JzKk&amp;hl=en_US&amp;fs=1&amp;?fs=1&rel=0&modestbranding=1&enablejsapi=1" />
                                </param>
                                <param name="allowFullScreen" value="true" />
                                </param>
                                <param name="allowscriptaccess" value="always" />
                                </param>
                                <embed src="http://www.youtube.com/v/ycc-yF8JzKk&amp;hl=en_US&amp;fs=1&amp;?fs=1&rel=0&modestbranding=1&enablejsapi=1" type="application/x-shockwave-flash"
                                    allowscriptaccess="always" allowfullscreen="true" width="490" height="285"></embed>
                            </object>
                        </div>
                    </td>
                </tr>-->
                <tr>
                    <td align="center" valign="top">&nbsp;
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">&nbsp;
                        
                    </td>
                </tr>
            </table>
        </td>
        <td width="2%">&nbsp;
            
        </td>
    </tr>
</table>
</form>
