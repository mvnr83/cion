<table width="965" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="blstr2">

	<tr>

        <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>

        </tr>

      <tr>

        <td width="1%">&nbsp;</td>

        <td width="98%" class="body"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">

          <tr>

            <td width="209" align="left" valign="top"><table width="216" border="0" align="left" cellpadding="0" cellspacing="0">

              <tr>

                <td align="left" valign="top" background="im"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">

                    <tr>

                      <td width="13">&nbsp;</td>

                      <td width="192" align="left" valign="middle" class="hea">Customers &amp; Partners </td>

                      <td width="11">&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1">

				<table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">

                    <tr>

                      <td width="10">&nbsp;</td>

                      <td width="200">&nbsp;</td>

                      <td width="10">&nbsp;</td>

                    </tr>

                   {section name=cust loop=$arr_company}

                    <tr>

                      <td colspan="3" align="center" class="ver11">

				<a href="{$arr_company[cust].company_url}" class="ver11">

					  {if $arr_company[cust].company_logo ne ''}

				  <img src="company_logo/{$arr_company[cust].company_logo}" width="200" border="0" alt="{$arr_company[cust].company_name}" />

				  <br />

					  {/if}

					  {$arr_company[cust].company_name}

					  </a>

					  </td>

                    </tr>

					{/section}

                    <tr>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>

              </tr>

              <tr>

                <td align="left" valign="top"><img src="images/1pix.gif" width="1" height="1" /></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">

                    <tr>

                      <td width="13">&nbsp;</td>

                      <td width="192" align="left" valign="middle" class="hea">Resources</td>

                      <td width="11">&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1">

				<table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">

                    <tr>

                      <td width="10">&nbsp;</td>

                      <td width="200">&nbsp;</td>

                      <td width="10">&nbsp;</td>

                    </tr>

					{section name=cust loop=$arr_resources}

                    <tr>

                      <td colspan="3" align="center" class="ver11">

					  <a href="javascript: access({$arr_resources[cust].id});" class="ver11">{$arr_resources[cust].title}</a>

					  </td>

                    </tr>

                   {/section}

				   <tr>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>

              </tr>

            </table></td>

            <td width="9">&nbsp;</td>

            <td width="518" align="left" valign="top">

			<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">

              {section name=cust loop=$arr_products}

			  <tr>

                <td align="left" valign="top">

				<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" class="str4">

                  <tr>

                    <td colspan="3" align="left" valign="top">

					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                        <tr>

                          <td width="326" height="26" align="left" valign="middle" background="images/products_bg.gif">

						  <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">

                              <tr>

                                <td width="4%">&nbsp;</td>

                                <td width="96%" class="hea">{$arr_products[cust].product_name}</td>

                              </tr>

                          </table></td>

                          <td align="left" valign="top"><a href="adr_registration.html">

						  <img src="images/{cycle values="down_free.gif,signupforbeta.gif"}" width="156" height="21" border="0" /></a></td>

                        </tr>

                    </table></td>

                  </tr>

                  <tr>

                    <td colspan="3" align="center" valign="top"><img src="images/5pix.gif" width="1" height="5" /></td>

                  </tr>

                  <tr>

                    <td width="20%" align="center" valign="middle">

					<img src="product_images/{$arr_products[cust].product_image}" width="39" height="66" /></td>

                    <td width="78%" align="left" valign="top" class="ver11">

					<div align="justify">{$arr_products[cust].short_description}</div></td>

                    <td width="2%">&nbsp;</td>

                  </tr>

                  <tr>

                    <td>&nbsp;</td>

                    <td align="right" valign="middle"><table width="18%" border="0" align="right" cellpadding="0" cellspacing="0">

                        <tr>

                          <td width="54%" align="right" valign="middle"><img src="images/bullet_more.gif" width="4" height="6" /></td>

                          <td width="46%" align="right" valign="middle" class="more"><a href="ad_reporter.html" class="more">More</a></td>

                        </tr>

                    </table></td>

                    <td>&nbsp;</td>

                  </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top"><img src="images/5pix.gif" width="1" height="5" /></td>

              </tr>

			  {/section}

            </table></td>

            <td width="10">&nbsp;</td>

            <td width="211" align="right" valign="top"><table width="216" border="0" align="left" cellpadding="0" cellspacing="0">

              <tr>

                <td align="left" valign="top" background="im"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">

                    <tr>

                      <td width="13">&nbsp;</td>

                      <td width="192" align="left" valign="middle" class="hea">Login</td>

                      <td width="11">&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><form id="form1" name="form1" method="post" action="">

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4" class="str2">

                    <tr>

                      <td width="37%" align="right" valign="middle" class="ver11">User Name : </td>

                      <td width="63%"><input name="textfield" type="text" class="loginfield" /></td>

                    </tr>

                    <tr>

                      <td align="right" valign="middle" class="ver11">Password&nbsp;:</td>

                      <td><input name="textfield2" type="password" class="loginfield" /></td>

                    </tr>

                    <tr>

                      <td>&nbsp;</td>

                      <td align="left" valign="middle"><input type="submit" name="Submit" value="Login" /></td>

                    </tr>

                    <tr>

                      <td colspan="2" align="center" valign="middle"><a href="#"><span class="ver11">Forget your ID or password?</span></a></td>

                      </tr>

                    <tr>

                      <td colspan="2" align="center" valign="middle" class="ver11"><a href="signup_registratio.html" class="ver11">Sign Up</a></td>

                      </tr>

                  </table>

               </form>

                </td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>

              </tr>

              <tr>

                <td align="left" valign="top"><img src="images/1pix.gif" width="1" height="1" /></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" height="25" border="0" cellpadding="0" cellspacing="0" background="images/coustomer_part_bg.gif">

                    <tr>

                      <td width="13">&nbsp;</td>

                      <td width="192" align="left" valign="middle" class="hea">Awards</td>

                      <td width="11">&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top" bgcolor="#F1F1F1"><table width="216" border="0" align="center" cellpadding="0" cellspacing="0" class="str2">

                    <tr>

                      <td width="10">&nbsp;</td>

                      <td width="200">&nbsp;</td>

                      <td width="10">&nbsp;</td>

                    </tr>

                    {section name=cust loop=$arr_awards}

					<tr>

                      <td colspan="3" align="center" class="ver11">

					  <a href="{$arr_awards[cust].site_url}" class="ver11">

					  {if $arr_awards[cust].image_path ne ''}

					  <img src="awards/{$arr_awards[cust].image_path}" alt="{$arr_awards[cust].name}" border="0" />

					  <br />

					  {/if}

					  {$arr_awards[cust].name}

					  </a>

					  </td>

                    </tr>

					{/section}

                    <tr>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td align="left" valign="top"><img src="images/coustomer_part_bottom.gif" width="216" height="11" /></td>

              </tr>

            </table></td>

          </tr>

        </table></td>

        <td width="1%">&nbsp;</td>

      </tr>

      

      

      <tr>

        <td colspan="3" align="left" valign="top"><img src="images/7pix.gif" width="1" height="7" /></td>

        </tr>

      

    </table>