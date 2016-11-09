<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="grstr1left">
          <tr>
            <td colspan="3" align="left" valign="top"><table width="100%" height="32" border="0" align="left" cellpadding="0" cellspacing="0" background="images/inner_headingbg.gif" class="whitestr">
                <tr>
                  <td width="2%">&nbsp;</td>
                  <td width="98%" align="left" valign="middle" class="hea">Pricing </td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" bgcolor="#c7c7c7"><img src="images/1pix.gif" width="1" height="1" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
          
          <tr>
            <td height="25" colspan="3" align="center" valign="middle" bgcolor="#F7F7F7" class="ver11bold">&nbsp;<p align="justify">"To order or get pricing information you will need to create an account and log in. Once logged in, please select the product you are interested in, and fill out the required information on the following page. Once you submit your information, a representative will contact you within the next business day. You can also send us an email directly by using the sales link below."</p></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadow.gif"><img src="images/inn_shadow.gif" width="1" height="9" /></td>
          </tr>
          <tr>
            <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>
          </tr>
          <tr>
            <td width="2%" align="left" valign="top">&nbsp;</td>
            <td width="82%" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="78%" align="left" valign="top"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr bgcolor="#FFFFFF">
                      <td width="100%" height="40" colspan="2" align="center" class="black1" ><table class="brdcolor" width="60%" border="0" cellspacing="2" cellpadding="0">
                        <tr>
                          <td width="100%" height="35" colspan="2" align="left" valign="middle" background="images/myaccount_bg.gif" class="blue12" style="border-bottom:1px solid #c7c7c7;">&nbsp;&nbsp;&nbsp;Products</td>
                      </tr>
                    
                    <tr bgcolor="#FFFFFF">
                      <td height="30" colspan="2" align="center" valign="middle" class="ver11"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="2" background="images/myaccount_bg.gif">
                        {section name=cust loop=$arr_products}
						<tr>
                          <td align="center" valign="middle">&nbsp;</td>
                          <td height="30" align="left" valign="middle" class="pro"><a href="order.php?pid={$arr_products[cust].id}">{$arr_products[cust].product_name}</a></td>
                        </tr>
						{/section}
                      </table></td>
                      </tr>
                    
                      </table></td>
                    </tr>
                    <tr bgcolor="#FFFFFF">
                      <td height="28" colspan="2" align="center" bgcolor="#FFFFFF" class="black1"> You can also send e-mail to <a href="contactus.php" class="red"><strong> sales@cionsystems.com</strong></a></td>
                    </tr>
                    
                  </table></td>
                  
                  </tr>
            </table></td>
            <td width="2%" align="left" valign="top">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="3" align="left" valign="top" background="images/inn_shadowtop.gif"><img src="images/inn_shadowtop.gif" width="1" height="9" /></td>
          </tr>
        </table>