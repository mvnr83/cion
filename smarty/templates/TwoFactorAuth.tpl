{literal} 
<script type="text/javascript">

    /* varying radii, "all" browsers */

    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.compare', '10px 10px 0px 0px', true);
    DD_roundies.addRule('.com-title', '10px 10px 0px 0px', true);
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
<style type="text/css">

#popup a  
{
    color:#fb6e40;
    font-weight:bold;
    text-decoration:none;
}

/* the IE correction rule */

#popup a:hover	{
	color: white; 
	font-weight:bold; 
	background-color:#fb6e40;
	text-indent: 0; /* added the default value */
}

</style>
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
      <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span>  <span>Multi-</span><em>Factor</em></h2></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
                <tr>
                  <td colspan="2" style="font-size:15px" align="left" class="highlite"><h3>Multi-Factor, Strong Authentication for All</h3></td>
                </tr>
                <tr>
                  <td colspan="2" valign="top"><p align="justify">Passwords security has always been a concern.  That is why passwords need to be complex, frequently changed, and not reused.  However, today, the environment is such that strong passwords are just not enough.  Passwords can be stolen, broken or misused, and are not the most secure way to protect your data and accounts.</p>
                    <p align="justify">Two-factor authentication is a simple feature that asks for more than just your password. It requires both "something you know" (like a password) and "something you have" (like your phone or something that you only know). For example, using your phone or pager – any phone that can receive texts – you sign in with your password and a secret code sent via a text message.  Only you have the code, and you only use this code once.</p>
					                <!--      {section name=cust loop=$array}
           			{if $smarty.section.cust.rownum eq 1}
                   	<input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow_pro.gif" alt="Try It Now"  border="0" />
                	{/if}
                	{/section}-->
    				</td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
								
                
				
				<tr>
                  <td align="center" class="olink"><object width="480" height="385">
                      <param name="movie" value="https://www.youtube.com/v/N1SNpRL0FFg?fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US">
                      </param>
                      <param name="allowFullScreen" value="true">
                      </param>
                      <param name="allowscriptaccess" value="always">
                      </param>
                      <embed src="https://www.youtube.com/v/N1SNpRL0FFg?fs=1&rel=0&modestbranding=1&enablejsapi=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed>
                    </object>
                    &nbsp;&nbsp; <a href="http://www.youtube.com/watch?v=N1SNpRL0FFg" target="_blank">&raquo; More viedos</a></td>
                  <td width="25%" align="center" valign="middle">
				  
				  <div style="border:1px solid #ccc; padding:20px 0 10px 0"> <b>
				        Multifactor Auth for Windows Desktop Login free for Non Commercial use</b>
                      <a href="http://www.cionmfa.com/MFASelfservice/frmUserLogin.aspx"><img src="images/signup.jpg" border="0"/></a>
                    </div>
				  </td>
                </tr>
				
				<tr>
                  <td width="75%" valign="top">
				  </td>
				  <td width="25%"></td>
                    </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                </tr>
                    
                <tr>
                  <td colspan="2" valign="top">&nbsp;</td>
                </tr>
              </table></td>
          </tr>
        </table></td>
      <td width="2%">&nbsp;</td>
    </tr>
  </table>
</form>
