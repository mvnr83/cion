{literal}
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="Scripts/header/cmtSlide.js"></script>
<script type="text/javascript" src="Scripts/header/cmtData.js"></script>
<link href="style/cmtSlide.css" rel="stylesheet" media="all" />
<style>
    .list li
    {
        margin-bottom: 5px;
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
                            <span>Cloud Identity Management Tool <span style="color: #000000;">and</span> Password
                                Self-Service</span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td width="75%" valign="top">
                                    <p>
                                        Cloud Identity Management Tool and CionSystems&acute; cloud based Identity and Access
                                        Management (IAM) Solution, CMT, is a centralized on premise enterprise to Microsoft
                                        | Office 365 | Azure AD cloud identity integration, access and management solution. It automates
                                        user de-provisioning, provisioning, collects auditing data for compliances. It enables
                                        migration to the Microsoft cloud in stages via all or a subset of user migration
                                        from on-premise to the Microsoft cloud. Leverage powerful secure self service option
                                        for password resets, account unlock for both premise and | office 365 | Azure AD cloud. Keep
                                        the passwords in sync between on premise domain to | office 365 | Azure AD cloud.</p>
                                    <ul style="margin: 0 15px 10px 30px;" class="list">
                                        <li><strong>Self service for password reset and password synchronization service:</strong>
                                            Distribute password reset to user community securely for on premise and cloud VIA
                                            <a href="Enterprise-Self-Service.php" style="color: #0000FF; text-decoration: underline;">
                                                Enterprise Self-Service</a> </li>
                                        <li><strong>Significant reduction in help desk load and associated costs:</strong> Fewer
                                            user authentication issues mean fewer calls to help desk for lost or forgotten passwords.
                                            <br />
                                        </li>
                                        <li><strong>Reduction in overhead through automation:</strong> Our solution automatically
                                            creates updates and removes user accounts as needed, and streamlines the tedious
                                            task of Internet user account management.
                                            <br />
                                        </li>
                                        <li><strong>Increased productivity:</strong> Enabling rapid issue resolution reduces
                                            wasted times waiting for IT and therefore increases employee productivity.
                                            <br />
                                        </li>
                                        <li><strong>Strengthened security:</strong> Automating user account deactivation removes
                                            unused access and prevents identity exposure for hackers.
                                            <br />
                                        </li>
                                        <li><strong>Increased compliance audit pass rates: </strong>Provide a centralized, auditable
                                            point of Internet application access. Compliance audit pass rates improve.
                                            <br />
                                        </li>
                                        <li><strong>Reports: </strong>Provide a variety of (scheduled and or on demand) reports.
                                            <br />
                                        </li>
                                        <li><strong>Migration in phases:</strong> Migrate a subset of users to the cloud.
                                            <br />
                                        </li>
                                        <li><strong>Email Migration:</strong> Migrate on premise exchange mailboxes, hosted
                                            exchange mail boxes, and or migrate non-Microsoft email boxes via pop3 or Imap to
                                            the cloud.</li>
                                    </ul>
                                    <div class="succeed" style="margin-bottom: 15px;">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td>
                                                    <h2>
                                                        Cloud and Identity Management Tool (CMT)</h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <ul>
                                                        <li>Automate the Microsoft /Office 365 | Azure AD user provisioning/de-provisioning<br />
                                                        </li>
                                                        <li>Ties into on &ndash;premise directory. Any on premise changes are automatically
                                                            synchronized<br />
                                                        </li>
                                                        <li>Bi-directional and it will sync up on a regular schedule or on demand in order to
                                                            capture any changes either on the active directory or in the cloud<br />
                                                        </li>
                                                        <li>March to cloud via phased approach deployment / migration<br />
                                                        </li>
                                                        <li>Provides compliance reports<br />
                                                        </li>
                                                        <li>Tracks all changes<br />
                                                        </li>
                                                        <li>Provides a history of all modifications<br />
                                                        </li>
                                                        <li>Either on the local network or done in the cloud via the tool<br />
                                                        </li>
                                                        <li>Supports email migration for on premise exchange, hosted exchange, POP3 &amp; IMAP
                                                            CionSystems centralized management for common action from on premise tool (no need
                                                            to login to portal for common day to day to functions)<br />
                                                        </li>
                                                        <li>Functions performed from this application are tracked as audit log<br />
                                                        </li>
                                                        <li>CionSystems tool provides administrator Password reset, email management, reporting.</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                                <td width="25%" align="center" valign="top">
                                    <!--      {section name=cust loop=$array}
           {if $smarty.section.cust.rownum eq 1}
                   <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow_pro.gif" alt="Try It Now"  border="0" />
    {/if}
    {/section}-->
                                    <a href="buyitnow.php">
                                        <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                    <a href="Videos_all.php" target="_blank">
                                        <img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
                                    {section name=cust loop=$array} {if $smarty.section.cust.rownum eq 2}
                                    <!--   {if $session_username != ""} <a href="demo.php?product=Cloud Identity Manager and self service"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=Cloud Identity Manager and self service"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a> -->
                                    {/if}
                                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
                                    <!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->
                                    <a href="datasheet/CIM_datasheet.pdf" target="_blank">
                                        <img src="images/downdata.gif" width="175" height="37" border="0" /></a><br />
                                    {if $session_username != ""} <a href="download.php?id={$product_id}">
                                        <img src="images/cmt_trial.jpg" width="175" height="37" border="0" /></a> {else}
                                    <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');">
                                        <img src="images/cmt_trial.jpg" width="175" height="37" border="0" /></a> {/if}
                                    <br />
                                    <!--                   
                   {if $session_username != ""}
                   <a href="download.php?id=16"><img src="images/self_trial.jpg" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/self_trial.jpg" width="175" height="37" border="0" /></a>
                   {/if}
                   <br />-->
                                    <a href="datasheet/CIM_whitepaper.pdf" target="_blank">
                                        <img src="images/whitepaper.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                    <!--<a href="buyitnow.php?product=ActiveDirectoryManager"><img src="images/buy.gif" border="0" /></a>-->
                                    {/if} {/section}
                                    <br />
                                     <div class="system">
                                        <h3>
                                            System Requirements :</h3>
                                        <ul class="list">
                                            <li>Intel Processor, AMD, or equivalent</li>
                                            <li>Microsoft Windows Server 2003+</li>
                                            <li>Microsoft .NET Framework 4.0 or Higher</li>
                                        </ul>
                                    </div>
                                    <br />
                                    <img src="images/cim.jpg" width="154" height="193" alt="Cloud Identity Management Tool "
                                        title="Cloud Identity Management Tool" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="olink">
                                    <div align="center" style="margin-bottom: 15px;">
                                        <img src="images/cim_new3.jpg" alt="Cloud Identity Manager and self service" width="511"
                                            title="Cloud Identity Manager and self service" />
                                    </div>
                                </td>
                                <td align="center" valign="middle">&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" class="head-list">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="center" valign="top">
                                                <div id="details" class="base">
                                                    <div id="photo" class="base">
                                                        <ul id="photos">
                                                            <li><a href="#1">
                                                                <img src="images/SlideImages/cmt/cmt1.jpg" alt="Caption 1" width="620" height="270" /></a></li>
                                                            <li><a href="#2">
                                                                <img src="images/SlideImages/cmt/cmt2.jpg" alt="Caption 2" width="620" height="270" /></a></li>
                                                            <li><a href="#3">
                                                                <img src="images/SlideImages/cmt/cmt3.jpg" alt="Caption 3" width="620" height="270" /></a></li>
                                                            <li><a href="#4">
                                                                <img src="images/SlideImages/cmt/cmt4.jpg" alt="Caption 4" width="620" height="270" /></a></li>
                                                            <li><a href="#5">
                                                                <img src="images/SlideImages/cmt/cmt5.jpg" alt="Caption 5" width="620" height="270" /></a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- photo ends -->
                                                    <div id="hover-box">
                                                        <div id="thumbs" class="base" style="visibility:hidden">
                                                            <ul>
                                                                <li><a href="#1" class="highlight">
                                                                    <img src="images/SlideImages/espm/espm1-thumb.png" alt="Caption 1" width="140" height="41" /><span></span></a></li>
                                                                <li><a href="#2">
                                                                    <img src="images/SlideImages/espm/espm2-thumb.png" alt="Caption 2" width="140" height="41" /></a></li>
                                                                <li><a href="#3">
                                                                    <img src="images/SlideImages/espm/espm3-thumb.png" alt="Caption 3" width="140" height="41" /></a></li>
                                                                <li><a href="#3">
                                                                    <img src="images/SlideImages/espm/espm3-thumb.png" alt="Caption 4" width="140" height="41" /></a></li>
                                                                <li><a href="#3">
                                                                    <img src="images/SlideImages/espm/espm3-thumb.png" alt="Caption 5" width="140" height="41" /></a></li>
                                                            </ul>
                                                            <p>
                                                                Dashboards Display configuration and status in Real Time</p>
                                                        </div>
                                                        <!-- thumbs -->
                                                        <div id="navigation" class="base" style="float: none">
                                                            <a href="#" id="prev" class="prev-next"><span>&lt;&lt;</span> prev</a> <a href="#"
                                                                id="play-pause" class="play pause" title="Play or Pause the slider">Play/Pause</a>
                                                            <ul style="padding: 0px !important">
                                                                <li><a href="#1" class="highlight">Story 1</a></li>
                                                                <li><a href="#2">Story 2</a></li>
                                                                <li><a href="#3">Story 3</a></li>
                                                                <li><a href="#4">Story 4</a></li>
                                                                <li><a href="#5">Story 5</a></li>
                                                            </ul>
                                                            <a href="#" id="next" class="prev-next">next <span>&gt;&gt;</span></a>
                                                        </div>
                                                        <!-- navigation -->
                                                    </div>
                                                    <!-- hover box -->
                                                    <div id="description" class="base" style="display: none">
                                                        <h1 id="title">
                                                            <a href="#">Dashboards Display configuration and status in Real Time</a></h1>
                                                    </div>
                                                </div>
                                            </td>
                                            <td width="25%">&nbsp;
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" valign="top">&nbsp;
                                                
                                            </td>
                                            <td>&nbsp;
                                                
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td width="2%">&nbsp;
            
        </td>
    </tr>
</table>
</form>