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

    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">

      <tr>

        <td colspan="2"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>Active Directory</span> Change Notifier - Who, When, Where, What<br />

        </h2></td>

        </tr>

      <tr>

        <td valign="top"><p>Active  Directory changes daily, yet most IT organizations are unaware of the changes  until something breaks. This leads to downtime, loss of productivity, and  higher cost. Becoming proactive and more aware is part of the overall IT  optimization strategy. The Active Directory Change Notifier is an invaluable  resource when IT organizations are developing a proactive approach to managing  their infrastructure.</p>

          <p>This  application proactively tracks and reports on any changes that occur within  your domains. Simply install this product, configure it, and you&rsquo;ll get  notified in <strong>real time</strong> of any  modifications to your Directory Services. You&rsquo;ll know right away the object,  type, date/time, details of what changed, and most importantly, <strong>who</strong> made the changes. All changes are recorded  and stored in a log file. This file can be archived and will help you navigate  the security and compliance audits.</p></td>

          <td align="center" valign="middle"  class="sidebtns">

           <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>

          <a href="Videos_all.php" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a>

           {section name=cust loop=$array}

          {if $smarty.section.cust.rownum eq 6} 

          

         <!-- {if $session_username != ""}

<a href="schedule_demo.php?product=ActiveDirectoryChangeNotifier"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>                   {else}

<a href="scheduleademo.php?product=ActiveDirectoryChangeNotifier"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>         -->   {/if}

         

          <!--<a href="buyitnow.php?product=ActiveDirectoryChangeNotifier"><img src="images/buy.gif" border="0" /></a>-->

                <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />-->

              

<!--                <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />-->

                   {if $session_username != ""}

                   <a href="download.php?id={$product_id}"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>

                   {else}

                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>

                   {/if}

               

<!--                  <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>

                  <br />-->

              <a href="../datasheet/ADCN_Datasheet.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a> {/if}

          {/section} 

          

          

          

          </td>

      </tr>

      <tr>

        <td valign="top" class="hrline"><p>Companies  take a lot of precautions against unauthorized access to the AD infrastructure.  However, preventive and protective measures are not always enough to find the  cause of a break-in if it does occur. For that purpose, infrastructure and  security configuration should be constantly audited, enabling you to  investigate problems and minimize the effects of adverse changes.</p>

          <p>In  IT, change is normal. However, these changes should not go unwatched. The  consequences of adverse or malicious changes can be very expensive for any  business to correct. Real time notifications are key- they will save many hours  of troubleshooting and the expense of having your business processes disrupted.</p>

          <p>In  any company, changes vary by consequences and disruptions they cause. The  deletion of a legitimate group in use is a more serious issue than the  modification of that group's description. Even more serious is the addition of  unauthorized user accounts to the Domain Admins group. The response time for  such changes needs to be as short as possible.</p>          </td>

        <td width="25%" align="center" valign="middle"><img src="images/ad_change.jpg"  alt="Active Directory Change Notifier" width="154" height="193" title="Active Directory Change Notifier" />

        

        

        </td>

      </tr>

      <tr>

        <td  align="left"><p>Unmanaged  changes are a problem in every company. They are THE primary cause of outages.  If they are not prevented, the company will fail a security audit. However,  even planned changes should be monitored to ensure that policies are being  followed.</p>

          <p>The  Active Directory Change Notifier will raise the operational efficiency of your  IT organization. Reactive reporting is good for audits and change management-  proactive reporting is essential for the well-being of your infrastructure.  This application offers <strong>real time</strong> help so you can detect, troubleshoot and quickly resolve Active Directory  issues by outlining <strong>what</strong> has  changed, <strong>when</strong>, <strong>where</strong> and <strong>who</strong> made these  changes. Background noise is eliminated and you'll see only the filtered  information you care about. You&rsquo;ll have the detailed knowledge to make critical  decisions and eliminate a lot of guessing, downtime and headaches- not just for  yourself but for the rest of the IT organization as well.</p>

          <p>Active  Directory Change Notifier is a flexible, scalable, easy to use application that  will help you with your day-to-day activities. This application is part of our  Active Directory solutions that are designed to simplify your IT environment  and enable you to work better, faster, and more efficiently.</p></td>

          

          <td>

          

         <div class="system" style="margin-top:20px;">

                <h3>

                    System Requirements :</h3>

                <ul class="list">

                    <li>Intel Processor, AMD, or equivalent</li>

                    <li>Microsoft Windows Server 2008+</li>

                    <li>Microsoft .NET Framework 4.0 or Higher</li>

                </ul>

            </div>

          	

          </td>

        </tr>

      <tr>

        <td colspan="2" align="center" valign="top">

        <object width="640" height="385"><param name="movie" value="http://www.youtube.com/v/RuCO4imGLCI?fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/RuCO4imGLCI?fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object>

        </td>

        </tr>

      <tr>

        <td align="left"><div class="head-list hrline">

          <h3>Active Directory Change Notifier at-a-glance</h3>

          <ul type="square">

            <li>Monitor AD Administrative Activities</li>

            <li>Detects Who Changed What and When</li>

            <li>Real Time Notifications</li>

            <li>Enterprise-class Scalability</li>

            <li>Changes logged for analysis and archiving</li>

            <li>Regulatory Compliance</li>

          </ul>

        </div></td>

        <td align="left" class="head-list">&nbsp;</td>

      </tr>

      <tr>

        <td colspan="2" align="left" class="head-list"><h3>Screenshots</h3></td>

      </tr>

      <tr>

        <td colspan="2" align="center"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="10">

          <tr>

            <td align="center" valign="top"><a href="images/adcn1.JPG" target="_blank"><img src="images/adcn1_small.jpg" width="210" height="154" border="0" /></a></td>

            <td align="center" valign="top"><a href="images/adcn2.JPG" target="_blank"><img src="images/adcn2_small.jpg" width="210" height="154" border="0" /></a></td>

            <td align="center" valign="top"><a href="images/adcn3.JPG" target="_blank"><img src="images/adcn3_small.jpg" width="210" height="154" border="0" /></a></td>

          </tr>

        </table></td>

        </tr>

      <tr>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

      </tr>

    </table></td>

    <td width="2%">&nbsp;</td>

  </tr>

</table>



</form>