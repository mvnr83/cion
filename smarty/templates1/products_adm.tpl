{literal}
<script language="javascript" type="text/javascript">
function showtrial(id,uname,pname)
{
	if(uname == '')
	{
		document.form1.action = "login.php";
		document.form1.submit();
	}
	else if(uname != '')
	{
		document.getElementById('product_id').value=id;
		document.getElementById('keyword').value='trial';
		document.getElementById('pname').value = pname;
		document.form1.action="products_adm.php";
		document.form1.submit();
	}
}
</script>
{/literal}
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td height="29" colspan="3" align="center" valign="middle"><table width="98%" height="29" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle" bgcolor="#E9E9E9" 	class="ver11blnormal"><a href="products_adm.php" class="black">Active Direcroty Reporter </a></td><br />
                  <td align="center" valign="middle" class="black1">|</td>
                  <td align="center" valign="middle"  class="ver11blnormal"><a href="products_sic.php" class="black">System Information &amp; Comparison </a></td>
                  <td align="center" valign="middle" class="black1">|</td>
                  <td align="center" valign="middle" class="ver11blnormal"><a href="products_rm.php" class="black">Remote Manager </a></td>
                  <td align="center" valign="middle" class="black1">|</td>
                  <td align="center" valign="middle" class="ver11blnormal"><a href="products_comingsoon.php" class="black">Coming Soon! </a></td>
                  <td align="center" valign="middle" class="black1">|</td>
                  
                  <td align="center" valign="middle" class="ver11blnormal"><a href="products_aboutbeta.php" class="black">About Beta</a> </td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle" class="hea">Products/{$array[0].product_name} </td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="84%" align="left" valign="top">
			<form method="post" action="" name="form1">
				<input type="hidden" name="keyword" id="keyword" />
				<input type="hidden" name="product_id" id="product_id" />
				<input type="hidden" name="pname" id="pname" />
			<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="24%" rowspan="2" align="left" valign="top"><img src="product_images/{$array[0].product_image}" width="164" height="156" /></td>
                  <td width="1%" align="left" valign="middle" class="ver11">&nbsp;</td>
                  <td width="75%" align="left" valign="middle" class="ver11"><div align="justify">{$array[0].short_description}</div></td>
                </tr>
                <tr>
                  <td align="center" valign="middle">&nbsp;</td>
                  <td align="center" valign="middle"><table width="50%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="center" valign="middle"><img src="images/try_sm.gif" width="97" height="26" border="0" onclick="javascript:showtrial('{$array[0].id}','{$session_username}','{$array[0].product_name}')" style="cursor:hand"></td>
                      <td align="center" valign="middle"><a href="buy.php?pid={$array[0].id}"><img src="images/buynow.gif" width="97" height="27" border="0" style="cursor:hand"></a></td>
                      <td align="center" valign="middle" class="black"><strong>$29.95</strong></td>
                    </tr>
                  </table>                    </td>
                </tr>
            </table>
				</form>
			</td>
            <td width="14%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top" bgcolor="#F7F7F7">&nbsp;</td>
            <td height="30" align="center" valign="middle" bgcolor="#F7F7F7" class="black">For corporate license and agreement details contact <a href="mailto:support@cionsystems.com" class="red10">support@cionsystems.com</a></td>
            <td align="left" valign="top" bgcolor="#F7F7F7">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top" class="ver11"><div align="justify">System Information Comparison is an easy-to-use application loaded with powerful features that aid an administrator in making Windows clients, servers and/or set of systems (it can be a cluster) as stable as possible. It supports Windows XP, Windows 2003, and all flavors of Windows Vista. </div></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top" class="ver11"><div align="justify">This application highlights differences in system configuration between n and n+1 state or a baseline configuration of a system (all resources of the system), between the systems and/or a set of systems. The user can save the working configuration as the master copy, and later when a problem occurs the user can take another snapshot of the system configuration and compare it against the master copy. </div></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top" bgcolor="#F1F1F1">&nbsp;</td>
            <td height="25" align="left" valign="middle" background="images/inne_sideheadingbg.gif" class="ver11bold">System Information Comparison allows you to </td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="3%" height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td width="97%" align="left" valign="middle" class="ver11">Remotely connect to machines in your network </td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Capture and Audit system configuration locally or remotely without having to install any agents </td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11"> Browse domain or by groups </td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11"> Set preferences so that you collect only the configuration that you need </td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Save the system configuration as master configuration for later use</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Compare system configuration canonically between multiple systems side by side</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11"> Compare system configuration against saved master configuration side by side</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Compare saved system configurations of multiples side by side</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Save the comparison information for later use</td>
                </tr>
                <tr>
                  <td height="16" align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="16" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                      </tr>
                  </table></td>
                  <td align="left" valign="middle" class="ver11">System information comparison uses WMI extensively, so you don&rsquo;t have to worry about deploying agents or paying expensive per-node lice</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">&hellip;and much more </td>
                </tr>
            </table></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>