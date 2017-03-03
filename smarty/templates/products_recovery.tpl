{literal}

<script type="text/javascript">



    /* varying radii, "all" browsers */

    DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);

    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);

    DD_roundies.addRule('.box', '10px 10px 10px 10px', true);

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

    <td colspan="2" align="left">
    <div class="googleapp">
			<h1>Active Directory Recovery Tools</h1>
			</div>
    
    <h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Recovery</h2></td>

  </tr>

  <tr>

    <td colspan="2" align="center" class="highlite"><h3>Quickly and Accurately Backup and Recover Your Active Directory </h3></td>

  </tr>

  <tr>

    <td width="75%" valign="top" class="head-list"><p>Active Directory (AD) is one of the most critical systems in your Windows infrastructure. It manages essential information and all enterprise level applications and security depend on its health therefore its availability and security must be assured. Human error, malicious actions, and technology failures can easily corrupt your directory, system configurations or Group Policy data. To sustain efficient business operations, you must securely back up your AD and be ready to recover the information 24/7 because any unplanned system downtime means lost productivity.</p>

    	<h3>Backup and Restore Quickly and Accurately</h3>

        <p>CionSystems' Active Directory Recovery empowers you to recover from inadvertent deletions or changes to your AD data in seconds, not hours. With its remote, online, granular restore capability, you can recover entire sections of the directory, selected objects and individual attributes.</p>

        </td>

        <td align="center" valign="middle">
            {if $product_info.id neq '' && $product_info.id neq 0}
                                        
                                        <a href="javascript:;" data-toggle="modal" data-target="#myModal-{$product_info.id}"><img src="images/sidebuy.png" width="175" height="37" border="0" /></a>
                     <br />
                     {/if}
        <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a><br />

        <a href="Videos_all.php" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />

        {section name=cust loop=$array}

    <!--       {if $smarty.section.cust.rownum eq 3}

           

            {if $session_username != ""}

<a href="demo.php?product=ActiveDirectoryRecovery"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}

<a href="scheduleademo.php?product=ActiveDirectoryRecovery"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> -->                  {/if}

  <!--<a href="buyitnow.php?product=ActiveDirectoryRecovery"><img src="images/buy.gif" border="0" /></a>-->

              <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->

<!--              <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now" border="0" />-->

              

                   {if $session_username != ""}

                   <a href="download.php?id={$product_id}"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>

                   {else}

                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>

                   {/if}

                   <br />

<!--                   <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>

                   <br />-->

            <a href="../datasheet/ADRec_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>
            
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

                <li>Schedule automated full backups for off-peak hours ensuring the best performance</li>

                <li>Quickly recover specific Active Directory objects or attributes with your AD online to reduce or eliminate downtime</li>

                <li>Restore your entire domain according to Microsoft's best practices to maintain IT efficiency</li>

                <li>Fast, online, granular recovery of AD, System State and Group Policy data from easy to use web interface for the most uptime. </li>

                <li>No system restart required.</li>

                <li>Multiple domain support</li>

              </ul></td>

            </tr>

          </table>

        </div></td>

        

        <td width="25%" align="center" valign="middle"><img src="images/ad_recovery.jpg" alt="ActiveDirectoryRecovery" width="154" height="193" title="Active Directory Recovery" ></td>

      </tr>

    </table></td>

  </tr>

  <!--<tr>

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

        <td align="center" valign="middle">

        {section name=cust loop=$array}

           {if $smarty.section.cust.rownum eq 4}

        <a href="scheduleademo.php?product=ActiveDirectoryReporter"><img src="images/sademo.gif" width="175" height="37" border="0" /></a><br /><a href="buyitnow.php?product=ActiveDirectoryReporter"><img src="images/buy.gif" border="0" /></a><br />

             <a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />

              

              <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now" border="0" /><br />

            <a href="../datasheet/ADR_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a>

             {/if}

          {/section}

            -->

            

            </td>

      </tr>

    </table></td>

  </tr>

  <tr>

   <td width="2%">&nbsp;</td> <td valign="top" class="head-list">

       

      <h3><strong>Take AD Recovery beyond the native tools</strong></h3>

      <p>In many instances recovery must be done on a granular level - restoring only specific data. The native tools alone will not provide this level of recovery. With this application CionSystems helps restore your AD at the object level with the attributes intact.</p>

      <h3>Granular or Full Recovery of Active Directory</h3>

      <p>CionSystems enables you to:</p>

      <ul>

      <li>Choose between online Granular Recovery or Full Domain Restore</li>

      <li>Restore any object including Group Policies in AD, allowing you to recover a deleted user account with all of its group memberships, attributes and password policies without restarting system</li>

      <li>Granular restore, including object attributes</li>

      <li>Extensible search capability (deleted item, date, etc)</li>

      <li>Easily compare backup snapshots for changes</li>

      </ul>

      

      <h3>Why restore an entire Domain instead of a Granular Recovery?</h3>

      <p>Disasters can occur at any time, such as unwanted schema extension or irreversible failures in your AD. Any disaster can result in lengthy unplanned downtime causing business critical applications (Exchange, ERP, financial systems, etc) to be unavailable. These disruptions affect your organization’s bottom line through lost productivity and potential security and compliance violations. If the damage to your AD is extensive, restoring your entire Domain is the fastest alternative.</p>

      <p>Implementing the right tool for comprehensive deletion protection is critical to turning major problems into minor restores. CionSystems offers an easy-to-use, fast, online AD backup and recovery solution. Accurate backups and recovering quickly after an outage enables you to reduce the time and costs associated with AD disasters and minimize or eliminate the impact on users throughout your enterprise. </p>

      <p>Active Directory Recovery automates the domain backup and recovery process enabling you to restore your AD to a point-in-time before the directory corruption occurred.</p>

     

      

        

      

        </td>

  </tr>

  <tr>

    <td colspan="2" align="center" valign="top">

    <object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/S7Z1lL8C0-g??fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/S7Z1lL8C0-g??fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object>    </td>

  </tr>

</table>

    

    </td>

    <td width="2%">&nbsp;</td>

  </tr>

</table>





</form>