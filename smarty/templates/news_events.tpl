
{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
	 DD_roundies.addRule('.compare', '10px 10px 0px 0px', true);
	 DD_roundies.addRule('.com-title', '10px 10px 0px 0px', true);
</script>
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
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="protitle"><span>News & Events</span> </h2></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      
<tr>
        <td colspan="2" valign="top"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="75%" valign="top"><div class="succeed">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><h2>Webinars</h2></td>
                </tr>
                <tr>
                  <td><ul>
                    <li><a href="http://cionsystems.com/presentation.php"><strong>Trainer5 Challenges in Active Directory Management and How to Manage Them</strong></a></li>
                    <li><a href="http://www.cionsystems.com/Webinar/" target="_blank"><strong>5 Reasons to Eliminate Password Reset & Account Unlock Calls.</strong></a></li>
                  </ul></td>
                </tr>
              </table>
              </div>
              
              </td>
            
          </tr>
        </table></td>
      </tr>      <tr>
        <td colspan="2" valign="top"><table width="100%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td width="75%" valign="top"><div class="succeed">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><h2>Press Releases</h2></td>
                </tr>
                <tr>
                  <td><ul>
                    <li><a href="http://cionsystems.com/press/index-6.html"><strong>CionSystems Wins the TiE Award as the Company 'Most Likely to be Successful'</strong></a></li>
                    <li><a href="http://cionsystems.com/press/index-5.html"><strong>CionSystems Releases New Version of its Active Directory Manager Pro</strong></a></li>
                    <li><a href="http://cionsystems.com/press/index-4.html"><strong>CionSystems Announces the Release of Active Directory Manager Pro</strong></a></li>
                    <li><a href="http://cionsystems.com/press/index-3.html"><strong>CionSystems Announces the Release of Active Directory Change Notifier 2.5</strong></a></li>
					<li><a href="http://www.microsoftstartupzone.com/Blogs/Microspark-BizSpark-Startup-of-the-Day/Lists/Posts/Post.aspx?List=7764cd7b%2Dcd2b%2D4b11%2D9e28%2De6caea1181ff&amp;ID=70" target="_blank"><strong>July 19th, 2009- Microsoft selects CionSystems Inc. as &quot; Startup of the Day</strong></a></li>
                    <li><a href="http://cionsystems.com/press/index-2.html"><strong>CionSystems releases Active Directory Change Notifier 2.0</strong></a></li>
					<li><a href="http://cionsystems.com/press/index-1.html"><strong>CionSystems releases Active Directory Manager 2.0</strong></a></li>
                  </ul></td>
                </tr>
              </table>
              </div>
              
              </td>
            
          </tr>
        </table></td>
      </tr>
      
      
      
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
    
    </td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>


</form>