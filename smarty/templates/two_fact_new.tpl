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
{/literal}
<form method="post" action="" name="form1">
<input type="hidden" name="keyword" id="keyword" />
<input type="hidden" name="product_id" id="product_id" />
<input type="hidden" name="pname" id="pname" />
<input type="hidden" name="res_id" id="res_id" />
<input type="hidden" name="download_type" id="download_type" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="2%">
            &nbsp;
        </td>
        <td width="96%">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <h2 class="navigation_protitle">
                            <a href="index.php" style="text-decoration: none;" title="Home">Home</a> <span style="font-size: 17px;
                                color: #999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration: none;"
                                    title="Products">Products</a> <span style="font-size: 17px; color: #999999;">&raquo;</span>
                            <span>Two Factor Authentication</span> and <span>Self Service</span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td width="75%" valign="top">
                                    <p>
                                        CionSystems&#39; Self-Service provides a two factor authentication systems that can
                                        be easily integrated with any web or non-web application. Instead of application
                                        managing the authentication, offload that functionality to CionSystems self-service
                                        authenticator and self-service module. In addition the application provides end
                                        users self passwords reset and unlocking of accounts. It also allows them to securely
                                        make account changes reducing the need for HR staff or your web-application to maintain
                                        current user information.</p>
                                </td>
                                <td width="25%" align="center" valign="middle">
                                    <a href="buyitnow.php">
                                        <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                  
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
                                        src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                                        <a href="../datasheet/self-service-howtos.pdf"
                                            target="_blank">
                                            <img src="images/faqs.gif" width="175" height="37" border="0" /></a>
                                        {/if}
                                    <br />
                                   {/if}
                                    {/section}
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="left">
                                    <table border="1" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td align="center" width="50%">
                                                <b>Benefits</b>
                                            </td>
                                            <td align="center" width="50%">
                                                <b>Features</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="50%"><p>
                                                    &quot;Eliminate the single most common support issue&quot;</p>
                                              <ul class="list">
                                                    <li>
                                                        <p>
                                                            Empower your end users to securely reset their own passwords and unlock accounts</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Track all password activity to support full auditing and reporting</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Maintain stronger password policies</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Lower your Help Desk workload and reduce operating expenses</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Two factor authentication system</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Self signup of users</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Supports Microsoft AD, Red Hat Open LDAP, and Centos Open LDAP</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Easy integration to web application</p>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td>
                                                  
                                                <p>
                                                    CionSystems&#39; Self-Service is a state-of-the-art solution for identity administration
                                                    and access control. Self Service provides an intuitive, easy-to-use web-based user
                                                    interface that supports:</p>
                                              
                                                <ul class="list">
                                                    <li>
                                                        <p>
                                                            Policy creation and enforcement</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            User self-signup, self-registration and self-service</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Self-management of user Profile</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Self-service for Password and account unlock</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Password expiry notification
                                                        </p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Two factor authentication for logins</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Webservice interfaces for any web-based application integration</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Audit and other Reports
                                                        </p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            Flexible and policy based challenge question and answer configuration</p>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="25%" valign="top">
                                    <div class="system">
                                        <h3>
                                            System Requirements :</h3>
                                        <ul class="list">
                                            <li>Intel Pentium Processor, AMD, or equivalent</li>
                                            <li>Microsoft Windows Server 2000+ XP Professional (Windows Administrative Pack required)</li>
                                            <li>IIS 5.X (X abbreviates for Version)</li>
                                            <li>Microsoft .NET Framework 2.0, ASP 2.0</li>
                                        </ul>
                                    </div>
                                    <div style="vertical-align:bottom;margin-top:20px;margin-left:10px">
                                    <img src="images/selfservice.jpg" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" /></div>
                                </td>
                            </tr>
                            
                            <tr><td colspan="2">
                            <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left" valign="top">
                                                
                                                <div align="left" style="width: 700px; margin: 0 auto 0 0;">
                                                    <img src="images/two_factor.jpg" alt="" width="670px" border="0" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                            </td></tr>
                            <tr>
                                <td colspan="2">
                                    <p>
                                        Self-Service can also send alerts such as:</p>
                                    <ul type="square" class="list">
                                        <li>Locked Out Users</li>
                                        <li>Soon To Expire Password for on-premise domain Users</li>
                                        <li>Password Expired Users</li>
                                    </ul>
                                    <p>
                                        Self-Service tracks all activity in an audit log that contain information such as
                                        when, by whom and which passwords or accounts were modified. Users can update their
                                        own personal information (as determined by policy set by system administrators).</p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </td>
        <td width="2%">
            &nbsp;
        </td>
    </tr>
</table>
</form>
