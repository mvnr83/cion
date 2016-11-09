{literal}
<script language="javascript" type="text/javascript">
function showtrial(id,uname,pname)
{
	document.getElementById('product_id').value=id;
	document.getElementById('keyword').value='trial';
	document.getElementById('download_type').value='trial';
	document.getElementById('pname').value = pname;
	if(uname == '' || uname == null)
	{
		document.form1.action = "login.php";
		return true;
	}
	else
	{
		document.form1.action="tryitnow.php";
		return true;
	}
}
</script>
{/literal}
<form name="form1" method="post">
<input type="hidden" name="keyword" id="keyword" value="trial" />
<input type="hidden" name="pname" id="pname" />
<input type="hidden" name="product_id" id="product_id" />
<input type="hidden" name="download_type" id="download_type" />
<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td height="7" colspan="3" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle"><h2>Downloads</h2></td>
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
            <td align="left" valign="top">&nbsp;</td>
            <td align="center" valign="top" class="ver11bold"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="graystr4">
              <tr>
               <td align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
              </tr>
              <tr>
                <td height="61" align="center" valign="middle" class="ver11">
                    <strong>You  may download a 30-day trial version of our software by clicking on the &ldquo;Try It  Now&rdquo; button and entering your information on the following page. We will e-mail  you a link to download the product.</strong>             </td>
              </tr>
              <tr>
                <td align="center" valign="middle" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
              </tr>
              <tr>
                <td height="28" align="center" valign="middle" bgcolor="#F3F3F3"> <span class="black">To purchase the full version please contact our  Sales Department at  <a href="contactus.php" class="red10">sales@cionsystems.com</a></span></td>
              </tr>
              <tr>
                <td align="center" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
              </tr>
              <tr>
                <td align="center" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
              </tr>
              
            </table></td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="3" height="7" align="left" valign="top"></td>
          </tr>
          {section name=cust loop=$array}
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="83%" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="graystr4">
              <tr>
                <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
              </tr>
              {if $smarty.section.cust.rownum%2 neq 0}
			  <tr>
                <td width="21%" align="right" valign="middle"><img src="download_images/{$array[cust].download_image}" ></td>
                <td width="79%" align="center" valign="middle">
                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="center" valign="middle" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
                  </tr>
                  <tr>
                    <td height="45" align="center" valign="middle" bgcolor="#F3F3F3"><h1><a href="{$array[cust].html_file_name}">{$array[cust].product_name}</a> </h1></td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
                  </tr>
                  <tr>
                    <td height="40" align="center" valign="middle"><table width="45%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="middle"><input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/try_sm.gif" alt="Try It Now" width="97" height="26" border="0" /></td>
                          </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="25" align="center" class="black">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
			  {else}
			  <tr>
                <td width="79%" align="center" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="center" valign="middle" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
                  </tr>
                  <tr>
                    <td height="45" align="center" valign="middle" bgcolor="#F3F3F3"><h1><a href="{$array[cust].html_file_name}">{$array[cust].product_name}</a> </h1></td>
                  </tr>
                  <tr>
                    <td align="center" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
                  </tr>
                  <tr>
                    <td height="40" align="center" valign="middle"><table width="45%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="middle"><input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/try_sm.gif" alt="Try It Now" width="97" height="26" border="0"></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="25" align="center" class="black">&nbsp;</td>
                  </tr>
                </table></td>
                <td width="21%" align="center" valign="middle"><img src="download_images/{$array[cust].download_image}" ></td>
              </tr>
			  {/if}
              <tr>
                <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
              </tr>
            </table></td>
            <td width="2%" align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
            <td align="left" valign="top">&nbsp;</td>
            <td align="left" valign="top" class="ver11">&nbsp;</td>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
		 {/section}
          
           <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>
</form>