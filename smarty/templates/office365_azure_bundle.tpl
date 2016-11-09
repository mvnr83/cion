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
                                                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                                <td align="center">
                                    
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
								    <p><b>Office365 and Azure Bundle</b></p>
                                    <p>
                                        CionSystems’ office365/azure enterprise self-service and cloud identity management simplifies 
										and speeds up on boarding, migration, compliance reporting and management for cloud and hybrid 
										environments.</p>
                                    <p>
                                       CionSystems’ cloud based Identity and Access Management (IAM) Solution, CIMT, is a centralized 
									   on premise enterprise to Microsoft OFFICE 365 cloud identity integration, access, data migration 
									   and archiving for one drive and management solution. It automates user de-provisioning, provisioning,
									   collects auditing data for compliances from AD| Openldap  to Office365. Additionally, the enterprise 
									   self-service option for group management, profile management, white pages, password resets, 
									   account unlock for both premise and OFFICE 365 cloud. Keep the passwords in sync between on premise 
									   domain to OFFICE 365 cloud and other targets. It also provides option to reset passwords from windows 
									   login.</p>
									    <div align="center" >
										<img src="images/bundleproducts.png" width="400" height="150" border="0" />
										</div>
										
                                </td>
                                <td width="25%" align="center" valign="middle">
                                    <a href="buyitnow.php">
                                        <img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                                    <br />
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
                                        src="images/download_trail.gif" width="175" height="37" border="0" /></a>{/if}
                                    <br />
											{/if}
                                    {/section}
                                </td>
                            </tr>
                           
                           
                            <tr>
                                <td align="left">
                                    <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left" valign="top">
                                                
                                                <div align="center" style="width: 600px; margin: 0 auto 0 0;">
                                                    <img src="images/mfaflow.png" alt="" width="500" border="0" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                 <td align="center" valign="top">
                                   
                                </td>
                            </tr>
							<tr>
							 <td width="75%" valign="top">
							 <p>Get multifactor authentication for windows login and web applications that 
							 supports the following unique scenarios ( <a target="_blank" style="color:blue;" href="https://www.cionmfa.com/mFASelfservice/frmuserlogin.aspx">Its Free</a> for non-commercial user )</p>
							 </td>
							 <td width="25%" align="center" valign="middle">
							 
							 </td>
							</tr>
							
							
							<tr>
							<td width="75%" align="left" valign="top">
                                                <div class="head-list hrline" style="background:none">
                                                    <ul type="square">
                                                        <li>Don’t need to purchase specialize hardware (you can use regular USB Disk)
                                                        </li>
                                                        <li>Supports workgroup, domain and liveID based systems<br />
                                                        </li>
                                                        <li>Supported factors are regular USB, challenge questions, sms over email, sms over mobile<br />
                                                        </li>
														</ul>
                                                </div>
							 </td>
							 <td width="25%" align="center" valign="middle">
							 
							 </td>
							</tr>
							
							  <tr>
                                <td align="left">
                                    <table width="100%" border="0" cellspacing="3" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left" valign="top">
                                                
                                                <div align="center" style="width: 600px; margin: 0 auto 0 0;">
												<a target="_blank" style="color:blue;" href="https://www.cionmfa.com/mFASelfservice/frmuserlogin.aspx">
                                                    <img src="images/trymulti.png" alt="" width="500" border="0" />
													</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                 <td align="center" valign="top">
                                   
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
