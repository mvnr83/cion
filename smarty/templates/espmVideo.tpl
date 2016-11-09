
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="Scripts/header/espmSlide.js"></script>
<script type="text/javascript" src="Scripts/header/espmData.js"></script>
<script type="text/javascript" src="http://www.youtube.com/player_api"></script>
<script type="text/javascript">

    // create youtube player
    var player;
    function onYouTubePlayerAPIReady() {
        player = new YT.Player('player', {
            events: {
                'onStateChange': onPlayerStateChange
            }
        });
    }



    // when video ends
    function onPlayerStateChange(event) {
        if (event.data != 0) {
            $('#' + 'panel4').click();
        }
    }

</script>
<link href="style/espmSlide.css" rel="stylesheet" media="all" />
<style type="text/css">
    .newbox
    {
        font-weight: bold;
        font-size: 13px;
        text-decoration: none;
        color: #000000;
    }
    p
    {
        text-align: justify;
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
                            <span>Enterprise Security</span> and <span>Policy Manager</span></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    <h2 style="color: #fccd4d; font-size: 25px;">
                                        Enterprise Security and Policy Manager</h2>
                                </td>
                                <td>&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" class="highlite">
                                    <h3>
                                        A simple, flexible, and scalable system ensuring that users get the correct access
                                        to file shares, SharePoint, and claims aware applications
                                        <br>
                                        Without the overhead of creating and provisioning groups</h3>
                                </td>
                            </tr>
                            <!--<tr>
                                <td>
                                    <div align="center" style="background: #fff; width: 100%; border: solid 1px black;
                                        font-weight: bold; font-size: 13px;">
                                        A simple, flexible, and scalable system ensuring that users get the correct access
                                        to file shares, SharePoint, and claims aware applications Without the overhead of
                                        creating and provisioning groups
                                    </div>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>-->
                            <tr>
                                <td width="75%" valign="top">
                                    <p>
                                        <b>Enterprise Security and Policy Manager</b> is a must-have for IT organizations
                                        seeking to simplify access management. The easy to use interface, powerful and flexible
                                        access policies and audit capabilities streamlines managing permission. Leveraging
                                        claims based access control, Enterprise Security and Policy Manager allows data
                                        owners to control who has what rights and greatly reduces provisioning and de-provisioning
                                        overhead. It eliminates bloat in the number of groups and group members, and provides
                                        real time, dynamic access control.</p>
                                    <p>
                                        Use Claims, which are based on trusted user attributes, and file metadata to ensure
                                        right people have right access to right information:</p>
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
                                    {section name=cust loop=$array} {if $smarty.section.cust.rownum eq 2}
                                    <!--   {if $session_username != ""} <a href="demo.php?product=Cloud Identity Manager and self service"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=Cloud Identity Manager and self service"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a> -->
                                    {/if}
                                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->
                                    <!--                    <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->
                                    <a href="datasheet/claim_new.pdf" target="_blank">
                                        <img src="images/downdata.gif" width="175" height="37" border="0" /></a><br />
                                    {if $session_username != ""} <a href="http://www.cionsystems.com/registerbeta.php">
                                        <img src="images/download_beta.png" width="175" height="37" border="0" /></a>
                                    {else} <a href="http://www.cionsystems.com/registerbeta.php">
                                        <img src="images/download_beta.png" width="175" height="37" border="0" /></a>
                                    {/if}
                                    <br />
                                    <!--                   
                   {if $session_username != ""}
                   <a href="download.php?id=16"><img src="images/self_trial.jpg" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/self_trial.jpg" width="175" height="37" border="0" /></a>
                   {/if}
                   <br />-->
                                    <a href="datasheet/Weighted_Claims_final.pdf" target="_blank">
                                        <img src="images/whitepaper.gif" width="175" height="37" border="0" /></a>
                                    <br />
                                    <!--<a href="buyitnow.php?product=ActiveDirectoryManager"><img src="images/buy.gif" border="0" /></a>-->
                                    {/if} {/section}
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <div id="details" class="base">
                                        <div id="photo" class="base">
                                            <ul id="photos">
                                                <li><a href="#1">
                                                    <img src="images/SlideImages/espm/espm1.png" alt="Caption 1" width="620" height="270" /></a></li>
                                                <li><a href="#2">
                                                    <img src="images/SlideImages/espm/espm2.png" alt="Caption 2" width="620" height="270" /></a></li>
                                                <li><a href="#3">
                                                    <img src="images/SlideImages/espm/espm3.png" alt="Caption 3" width="620" height="270" /></a></li>
                                                <!--<li><a href="#4" onclick="#play-pause.click();"><iframe id="player" title="YouTube video player" width="620" height="270" src="http://www.youtube.com/embed/L37p8HiLMbI?rel=0&modestbranding=1&enablejsapi=1" frameborder="0" allowfullscreen="allowfullscreen"></iframe></a></li>-->
                                                <!--<li><a href="http://cionsystems.com/active-directory-ChangeNotifier.php"><img src="images/SlideImages/mlb-5.jpg" alt="Caption 5" width="535" height="270" /></a></li>
				<li><a href="http://cionsystems.com/active-directory-recovery.php"><img src="images/SlideImages/mlb-6.jpg" alt="Caption 6" width="535" height="270" /></a></li>
                <li><a href="http://cionsystems.com/cim_selfservice.php"><img src="images/SlideImages/mlb-7.jpg" alt="Caption 7" width="535" height="270" /></a></li>
                <li><a href="http://www.cionsystems.com/Two-Factor-Authentication.php"><img src="images/SlideImages/mlb-8.jpg" alt="Caption 8" width="535" height="270" /></a></li>
                <li><a href="#9"><img src="images/SlideImages/mlb-9.jpg" alt="Caption 9" width="535" height="270" /></a></li>-->
                                            </ul>
                                        </div>
                                        <!-- photo ends -->
                                        <div id="hover-box">
                                            <div id="thumbs" class="base">
                                                <ul>
                                                    <li><a href="#1" class="highlight">
                                                        <img src="images/SlideImages/espm/espm1-thumb.png" alt="Caption 1" width="140" height="41" /><span></span></a></li>
                                                    <li><a href="#2">
                                                        <img src="images/SlideImages/espm/espm2-thumb.png" alt="Caption 2" width="140" height="41" /></a></li>
                                                    <li><a href="#3">
                                                        <img src="images/SlideImages/espm/espm3-thumb.png" alt="Caption 3" width="140" height="41" /></a></li>
                                                    <!--<li><a href="#4"><img src="images/SlideImages/espm/espm3-thumb.png" alt="Caption 4" width="140" height="41" /></a></li>-->
                                                    <!--<li><a href="#5"><img src="images/SlideImages/mlb-5-thumb.jpg" alt="Caption 5" width="52" height="41" /></a></li>
					<li><a href="#6"><img src="images/SlideImages/mlb-6-thumb.jpg" alt="Caption 6" width="52" height="41" /></a></li>
                    <li><a href="#7"><img src="images/SlideImages/mlb-7-thumb.jpg" alt="Caption 7" width="52" height="41" /></a></li>
                    <li><a href="#8"><img src="images/SlideImages/mlb-8-thumb.jpg" alt="Caption 8" width="52" height="41" /></a></li>
                    <li><a href="#9"><img src="images/SlideImages/mlb-9-thumb.jpg" alt="Caption 9" width="52" height="41" /></a></li>-->
                                                </ul>
                                                <p>
                                                    Dashboards Display configuration and status in Real Time</p>
                                            </div>
                                            <!-- thumbs -->
                                            <div id="navigation" class="base" style="float: none">
                                                <a href="#" id="prev" class="prev-next"><span>&lt;&lt;</span> prev</a> <a href="#"
                                                    id="play-pause" class="play pause" title="Play or Pause the slider">Play/Pause</a>
                                                <ul>
                                                    <li><a href="#1" class="highlight">Story 1</a></li>
                                                    <li><a href="#2">Story 2</a></li>
                                                    <li><a href="#3">Story 3</a></li>
                                                    <!--<li><a id="panel4" href="#4">Story 4</a></li>-->
                                                    <!--<li><a href="#5">Story 5</a></li>
					<li><a href="#6">Story 6</a></li>
                    <li><a href="#7">Story 7</a></li>
                    <li><a href="#8">Story 8</a></li>
                    <li><a href="#9">Story 9</a></li>-->
                                                </ul>
                                                <a href="#" id="next" class="prev-next">next <span>&gt;&gt;</span></a>
                                            </div>
                                            <!-- navigation -->
                                        </div>
                                        <!-- hover box -->
                                        <div id="description" class="base">
                                            <!--<p id="small-caption">Roy Halladay struck out 11 Marlins batters and threw 115 pitches Saturday.</p>-->
                                            <h1 id="title">
                                                <a href="#">Dashboards Display configuration and status in Real Time</a></h1>
                                            <!--<p id="long-desc">Phillies ace Roy Halladay made history in Miami on Saturday, tossing the 20th perfect game in MLB history vs. the Marlins in a 1-0 win. It was the first no-hitter of Halladay's brilliant career.</p>-->
                                        </div>
                                        <!-- description -->
                                    </div>
                                </td>
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
                            <tr>
                                <td valign="top">
                                    <p>
                                        Claims based access allows expression-based access policies based on the classification
                                        of files, metadata, user and device attributes, file types and documents. SharePoint
                                        2010 (and later) and Windows server 2012 file shares , claims based Dynamic Access
                                        Control (DAC) eliminates the need to manually define access rights for individual
                                        documents and content types. DAC enables applying a rules-based engine to automate
                                        permission management and access control.</p>
                                    <p>
                                        You can now easily authorize users based on their Facebook, salesforce, Google,
                                        Windows Live, or other cloud based identity. This, real time, solution eliminates
                                        provisioning delays, entitlement creep, and unauthorized access due to de-provisioning
                                        latency.
                                    </p>
                                    <p>
                                        CionSystem&rsquo;s Enterprise Security and Policy Manager include the components
                                        needed to harness Claims Based Access Control in Windows Server 2012 and Microsoft
                                        SharePoint. Enterprise Security and Policy Manager ensures that the right people
                                        have the right access to the right information. Using dynamic claims, as opposed
                                        to relying on group membership, means that access is adjusted in real time. Enterprise
                                        Security and Policy Manager supports defining policies via intuitive interfaces.
                                        A comprehensive audit trail, tracking permission changes, is also generated. Creating
                                        policies replaces provisioning and de-provisioning groups to manage access permissions.
                                        Define the policy once, instead of maintaining groups forever.</p>
                                </td>
                                <td width="25%" valign="top">
                                    <!--<img src="images/ad_selfservice.jpg" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" />-->
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                     <div id="divVideo" class="base"><iframe id="player" title="YouTube video player" width="620" height="370" src="http://www.youtube.com/embed/8TEsOIwQybw?rel=0&modestbranding=1&enablejsapi=1"
                                        frameborder="0" allowfullscreen="allowfullscreen"></iframe></div>
                                </td>
                                <td width="25%" valign="top">&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;
                                    
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <table width="100%">
                                        <tr>
                                            <th align="center">
                                                Key Features
                                            </th>
                                            <th align="center">
                                                Benefits
                                            </th>
                                        </tr>
                                        <tr>
                                            <td align="left" width="25%">
                                                Claims Based Access
                                            </td>
                                            <td width="75%" align="justify">
                                                <p>
                                                    Access control based on trusted user and managed devices attributes (claims) such
                                                    as email address, security clearance, or department, title, location, manage vs
                                                    unmanaged devices etc., These claims / attributes are from the Active Directory,
                                                    SQL list, or any other Trusted Identity Provider, including OpenLDAP, Active Directory
                                                    Federation Services or other federation authentication solutions.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Expression Based Access Policies
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Powerful, easy and flexible expression-based access policies based on the classification
                                                    of files, file types, documents, file and document meta data and trusted user attributes.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Dynamic Access Policies and Control
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Goes beyond basic permission management via ACL&rsquo;s and security groups. Makes
                                                    Dynamic groups simple and on demand and allows for expression based dynamic access
                                                    groups. Simplifies granting and denying access to individuals Even though the security
                                                    group may itself have access.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                De-provisioning Access
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Automatic and instantaneous when a user&rsquo;s status changes, such as employee
                                                    role change, location change, department change, resignations or terminations.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Security for All SharePoint and Fileshare Views
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Policies are enforced for any method of access of files and SharePoint documents
                                                    as the policy is based on claims and meta data.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Centralized Administration
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Provides powerful central administration options for both SharePoint and Fileshares.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Compliance and Governance
                                            </td>
                                            <td align="justify">
                                                <p>
                                                    Audit trail and easy reports for who, what, when and why</p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="25%" valign="top">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
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
