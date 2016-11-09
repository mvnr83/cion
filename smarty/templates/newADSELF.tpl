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
                            <span>Active Directory Self-Service</span> and <span>Microsoft | Office 365</span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td align="center">
                                    <div align="center" style="background: #fccd4d; width: 60%; border: solid 1px #a57901;
                                        font-weight: bold; font-size: 13px;">
                                        <a href="http://www.cionsystems.com/active-directory-manager.php" style="font-weight: bold;
                                            font-size: 13px; text-decoration: none; color: #000000">What is new?<br />
                                            - Password Synchronization with Microsoft Office 365<br />
                                            - Two factor authentication
                                            and self-service </a>
                                    </div>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
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
                                        According to a recent report, about 1 in 4 calls to IT Help Desks involve resetting
                                        expired passwords, and unlocking user accounts. CionSystems saves you time and money
                                        by allowing employees to self-manage their accounts without having to call the Help
                                        Desk. This results in less downtime and increased satisfaction with IT processes.</p>
                                    <p>
                                        CionSystems Active Directory Self Service is a state-of-the-art solution for identity
                                        administration and access control. The Active Directory Self Service delivers the
                                        functionalities of web access policy creation and enforcement, user self-registration
                                        and self-service, delegated administration, password management, and reporting.
                                        Having 3 access levels provides the flexibility and reach necessary in today&rsquo;s
                                        complex business environment.</p>
                                </td>
                                <td width="25%" align="center" valign="middle">
                                    <a href="buyitnow.php">
                                        <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                    <a href="http://www.youtube.com/results?search_query=cionsystems&search_type=&aq=f"
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
                                    <a href="../datasheet/ADS_Datasheet.pdf">
                                        <img src="images/downdata.gif" width="175" height="37" border="0" /></a> <a href="../datasheet/ADS_FAQs.pdf"
                                            target="_blank">
                                            <img src="images/faqs.gif" width="175" height="37" border="0" /></a> {/if}
                                    {/section}
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <p>
                                        The Active Directory Self Service is simplifying your IT processes and streamlines
                                        your daily activities. This application is a highly flexible and scalable identity
                                        management system that controls user accounts and access privileges within the enterprise
                                        IT organization. The Active Directory Self Service capabilities allow users to manage
                                        their own profiles and perform account and password updates. Having customizable
                                        challenge questions set by the IT administrators will enable secure identification
                                        and password resets. This application will easily pay for itself many times over
                                        just through the reduced Help Desk calls.</p>
                                    <p>
                                        The notification process included in the Active Directory Self Service allows administrators
                                        to set specific policies to ensure all users, including those in remote offices
                                        or working offsite, are aware of password expirations. The users that would normally
                                        be stranded without access until they contact your Help Desk are now able to reset
                                        their access and passwords, and eliminate any downtime and reduction in productivity.</p>
                                    <p>
                                        The Active Directory Self-Service offers comprehensive reporting to assure compliance.
                                        You&rsquo;ll be able to measure adoption across the board by looking at how many
                                        users have self-registered. You can report and analyze trends in password resets,
                                        notification efforts, and user update changes.</p>
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
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <iframe title="YouTube video player" width="480" height="390" src="http://www.youtube.com/embed/lbRAfNCTCi0"
                                        frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                </td>
                                <td align="center" valign="top">
                                    <img src="images/ad_selfservice.jpg" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left" valign="top">
                                                <div class="head-list hrline">
                                                    <h3>
                                                        Features</h3>
                                                    <ul type="square">
                                                        <li>100% web based, On premise self service for local domain users<br />
                                                        </li>
                                                        <li>3 level of access (administrator, manager and user)<br />
                                                        </li>
                                                        <li>Self update user profile, group membership management, change passwords, outlook
                                                            configuration management, mobile device management<br />
                                                        </li>
                                                        <li>Self service for password resets (portal for users to reset and unlock without having
                                                            to call IT Helpdesk) for local domain and Microsoft | Office 365<br />
                                                        </li>
                                                        <li>Passwords are synchronized between local domain and Microsoft | Office 365 | AD
                                                            Domain<br />
                                                        </li>
                                                        <li>Audit log for all changes done via self service portal (who, when , where and what)<br />
                                                        </li>
                                                        <li>Automated notifications for all locked out users, passwords about to expire and
                                                            inbox size limit threshold</li>
                                                        <li>Automatic Password Expiry Notification for Office 365 and Users</li>
                                                        <li>Multi-factor authentication. Supports one time password&nbsp; Authentication for
                                                            changing, resetting passwords and Unlocking Account</li>
                                                        <li>Automatically resetting password expired Users password automatically</li>
                                                        <li>Automated notifications of Password audit report, Mail status Report, Unlock audit
                                                        </li>
                                                        <li>Automatic notification to user when password is changed or reset</li>
                                                    </ul>
                                                </div>
                                                <div align="center" style="width: 700px; margin: 0 auto 0 0;">
                                                    <img src="images/office365.gif" alt="" width="400" border="0" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        <div align="center" style="width: 700px; margin: 0 auto 0 0;">
                            <object width="480" height="385">
                                <param name="movie" value="http://www.youtube.com/v/ycc-yF8JzKk&amp;hl=en_US&amp;fs=1&amp;" />
                                </param>
                                <param name="allowFullScreen" value="true" />
                                </param>
                                <param name="allowscriptaccess" value="always" />
                                </param>
                                <embed src="http://www.youtube.com/v/ycc-yF8JzKk&amp;hl=en_US&amp;fs=1&amp;" type="application/x-shockwave-flash"
                                    allowscriptaccess="always" allowfullscreen="true" width="490" height="285"></embed>
                            </object>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" valign="top">
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
