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
		document.form1.action="products_rm.php";
		document.form1.submit();
	}
}
</script>
{/literal}
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td height="29" colspan="3" align="left" valign="middle"><table width="98%" height="29" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" valign="middle" class="ver11blnormal"><a href="products_adm.php" class="black">Active Direcroty Reporter </a></td><br />
                <td align="center" valign="middle" class="black1">|</td>
                <td align="center" valign="middle" class="ver11blnormal"><a href="products_sic.php" class="black">System Information &amp; Comparison </a></td>
                <td align="center" valign="middle" class="black1">|</td>
                <td align="center" valign="middle" bgcolor="#E9E9E9" class="ver11blnormal"><a href="products_rm.php" class="black">Remote Manager </a></td>
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
                  <td width="98%" align="left" valign="middle" class="hea">Products/ {$array[0].product_name}</td>
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
			<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="graystr4">
                <tr>
                  <td width="21%" rowspan="5" align="right" valign="top"><img src="product_images/{$array[0].product_image}" width="164" height="156" /></td>
                  <td height="40" align="center" valign="bottom" class="hea">Remote Manager is a powerful and easy-to-use tool</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" background="images/inn_shadowtop.gif" class="ver11"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
                </tr>
                <tr>
                  <td height="30" align="center" valign="middle" bgcolor="#F8F8F8" class="black">For corporate license and agreement details contact <a href="mailto:sales@cionsystems.com" class="red10">sales@cionsystems.com</a> </td>
                </tr>
                <tr>
                  <td width="79%" align="center" valign="top" background="images/inn_shadow.gif" class="ver11blnormal"><img src="images/inn_shadow.gif" width="1" height="9"></td>
                </tr>
                <tr>
                  <td align="center" valign="middle"><table width="50%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="center" valign="middle"><img src="images/try_sm.gif" width="97" height="26" border="0" onclick="javascript:showtrial('{$array[0].id}','{$session_username}','{$array[0].product_name}')" style="cursor:hand"></td>
                      <td align="center" valign="middle"><a href="buy.php?pid={$array[0].id}"><img src="images/buynow.gif" width="97" height="27" border="0" style="cursor:hand"></a></td>
                      <td align="center" valign="middle" class="black"><strong>$14.95</strong></td>
                    </tr>
                  </table>
				  </td>
                </tr>
            </table>
			</form>
			</td>
            <td width="14%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top" class="ver11"><div align="justify">{$array[0].short_description} </div></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top" class="ver11"><div align="justify">Remote Manager enables administrators to remotely perform mundane tasks and more. This tool has a powerful System Restore feature based on Microsoft Windows System Restore. It allows administrators to remotely restore the system to a previous state, force-create a restore point snapshot, and/or schedule restore-point creation on the network systems. It has a very simple-to-use user interface. In addition, Remote Manager Application allows administrators to install and uninstall products and system restore and shut down and wake up on the remote systems. This tool is very useful for the network administrators who are required to manage the remote computers in the Domain.</div></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td align="left" valign="top" bgcolor="#F1F1F1">&nbsp;</td>
            <td height="25" align="left" valign="middle" background="images/inne_sideheadingbg.gif" class="ver11bold">Administrators can use Remote Manager Application to:</td>
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
                  <td width="97%" align="left" valign="middle" class="ver11">Create a System Restore Point on the remote and local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Disable Full System Restore on the remote and local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Enable Full System Restore on the remote and local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11"> Schedule a System Restore on the remote and local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Uninstall the product on the remote and local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Install the products (MSI only) on remote or local system</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11"> Start or wake the remote system using MAC address</td>
                </tr>
                <tr>
                  <td height="20" align="center" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>
                  <td align="left" valign="middle" class="ver11">Shut down or restart the local and remote Windows NT/2000/XP/2003 systems over the network. </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" valign="middle"><img src="images/7pix.gif" width="1" height="7" /></td>
                </tr>
            </table></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>