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
      <td width="2%">&nbsp;</td>
      <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><h2 class="navigation_protitle"> <a href="index.php" style="text-decoration: none;" title="Home">Home</a> <span style="font-size: 17px;
                                color: #999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration: none;"
                                    title="Products">Products</a> <span style="font-size: 17px; color: #999999;">&raquo;</span> <span>Cloud Identity </span> and <span>Minder</span></h2></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" class="highlite"><h3>Now supporting Microsoft Azure AD and Microsoft Office 365.</h3></td>
                  <td></td>
                </tr>
                <tr>
                  <td width="75%" valign="top"><p> CionSystems Cloud Identity Minder is a cloud-based identity, authentication and self service user life cycle management solution. Make your application work with any Identity store located anywhere with simple and easy integration to your SaaS, web or traditional application. You no longer need to add special code for each Identity store. The solution provides auditing and workflow as well. Additionally, the application doesn’t need to be aware of the Identity store there by allowing Identities to stay within the confine of existing location (on premise or cloud). The solution can be deployed in enterprise DMZ or in the cloud.</p></td>
                  <td width="25%" rowspan="2" align="left" valign="top" style="padding-left:20px;"><a href="buyitnow.php"> <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a> <br />
                    <a href="Videos_all.php" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
                    {section name=cust loop=$array} {if $smarty.section.cust.rownum eq 4} 
                    <!-- {if $session_username != ""}
                    <a href="demo.php?product=ActiveDirectorySelfService"><img src="images/sademo.gif" width="175" height="37" border="0" /></a>                   {else}
                    <a href="scheduleademo.php?product=ActiveDirectorySelfService"><img src="images/sademo.gif" width="175" height="37" border="0" /></a> --> 
                    {/if} 
                    <!--<a href="#"><img src="images/takeatour.gif" width="175" height="37" border="0" /></a><br />--> 
                    <!--                 <a href="buyitnow.php?product=ActiveDirectorySelfService"><img src="images/buy.gif" border="0" /></a>
                 <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now"  border="0" />--> 
                    {if $session_username != ""} <a href="download.php?id={$product_id}"> <img src="images/download_trail.gif" width="175" height="37" border="0" /></a> {else}<a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img
                                        src="images/download_trail.gif" width="175" height="37" border="0" /></a> <a href="../datasheet/Cloud_Identity_Minder_howtos_3.0.0.4.pdf"
                                            target="_blank"> <img src="images/faqs.gif" width="175" height="37" border="0" /></a> {/if} <br />
                    {/if}
                    {/section} <a href="../datasheet/Authentication_selfservice_datasheet.pdf"> <img src="images/downdata.gif" width="175" height="37" border="0" /></a> <br />
                    <a href="../datasheet/Cloud_Identity_Minder_WebService_Usage_Guidelines.pdf"> <img src="images/Webservices.gif" width="175" height="37" border="0" /></a> <br />
                    <a href="../datasheet/Cionsystems_authentication_service_wp.pdf"><img src="images/whitepaper.gif" width="175" height="37" border="0" /></a> 
                    
                    <div class="system" style="margin-top:20px;">
                      <h3> System Requirements</h3>
                      <ul class="list">
                        <li>Intel Processor, AMD, or equivalent</li>
                        <li>Microsoft Windows Server 2008+</li>
                        <li>IIS 7.X (X abbreviates for Version)</li>
                        <li>Microsoft .NET Framework 4.0, ASP 4.0</li>
                      </ul>
                    </div>
                    <div style="vertical-align:bottom;margin-top:20px;"> <img src="images/ciminder.jpg" width="154" height="193" alt="Active Driectory Self Service"
                                        title="Active Driectory Self Service" /></div>
                    
                    </td>
                </tr>
                <tr>
                  <td valign="top" align="left"><table border="1" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse; border:solid 1px #ccc">
                      <tr style="background-color:#f0f0f0;">
                        <td align="center" width="50%" style="line-height:25px; border:solid 1px #ccc"><b>Benefits</b></td>
                        <td align="center" width="50%" style="border:solid 1px #ccc"><b>Features</b></td>
                      </tr>
                      <tr>
                        <td width="50%"><p> &quot;Supports Microsoft Azure AD, Office 365, Microsoft AD, Red Hat Open LDAP, and Centos Open LDAP&quot;</p>
                          <ul class="list">
                            <li>
                              <p> Empower your end users to securely reset their own passwords and unlock accounts</p>
                            </li>
                            <li>
                              <p> Track all password activity to support full auditing and reporting</p>
                            </li>
                            <li>
                              <p> Maintain stronger password policies</p>
                            </li>
                            <li>
                              <p> Lower your Help Desk workload and reduce operating expenses</p>
                            </li>
                            <li>
                              <p> Two factor authentication system</p>
                            </li>
                            <li>
                              <p> Self signup of users</p>
                            </li>
                            <li>
                              <p> Supports Microsoft AD, Red Hat Open LDAP, and Centos Open LDAP</p>
                            </li>
                            <li>
                              <p> Easy integration to web application</p>
                            </li>
                          </ul></td>
                        <td><p> CionSystems&#39; Cloud Identity Minder is a state-of-the-art solution for identity administration
                            and access control. Self Service provides an intuitive, easy-to-use web-based user
                            interface that supports:</p>
                          <ul class="list">
                            <li>
                              <p> Policy creation and enforcement</p>
                            </li>
                            <li>
                              <p> User self-signup, self-registration and self-service</p>
                            </li>
                            <li>
                              <p> Self-management of user Profile</p>
                            </li>
                            <li>
                              <p> Cloud Identity Minder for Password and account unlock</p>
                            </li>
                            <li>
                              <p> Password expiry notification </p>
                            </li>
                            <li>
                              <p> Two factor authentication for logins</p>
                            </li>
                            <li>
                              <p> Webservice interfaces for any web-based application integration</p>
                            </li>
                            <li>
                              <p> Audit and other Reports </p>
                            </li>
                            <li>
                              <p> Flexible and policy based challenge question and answer configuration</p>
                            </li>
                          </ul></td>
                      </tr>
                    </table></td>
                 
                </tr>
                <tr>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="75%" align="left" valign="top"><div align="left" style="width: 700px; padding-top:20px; margin: 0 auto 0 0;"> <img src="images/two_fact1.png" alt="" width="700px" border="0" /> </div></td>
                      </tr>
                    </table></td>
                    <td width="25%" valign="top" >
                    
                 </td>
                </tr>
                <tr>
                  <td colspan="2"><p> Cloud Identity Minder can also send alerts such as:</p>
                    <ul type="square" class="list">
                      <li>Locked Out Users</li>
                      <li>Soon To Expire Password for on-premise domain Users</li>
                      <li>Password Expired Users</li>
                    </ul>
                    <p> Cloud Identity Minder tracks all activity in an audit log that contain information such as
                      when, by whom and which passwords or accounts were modified. Users can update their
                      own personal information (as determined by policy set by system administrators).</p></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td align="center" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top">&nbsp;</td>
          </tr>
        </table></td>
      <td width="2%">&nbsp;</td>
    </tr>
  </table>
</form>
