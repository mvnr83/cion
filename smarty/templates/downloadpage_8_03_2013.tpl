{literal}
<script type="text/javascript">

function redirect(URL)
     {
       document.location=URL;
       return false;
}
</script>
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
  DD_roundies.addRule('.succeed', '10px 10px 10px 10px', true);
    DD_roundies.addRule('.system', '10px 10px 10px 10px', true);
</script>
{/literal}
<form name="frm">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td><h2 class="protitle"><span>Trial</span> Download</h2></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><table width="90%" border="0" cellspacing="3" cellpadding="0">
          <tr>
            <td height="30" align="center" bgcolor="#ECE9D8"><h4>You may download a 30-day trial version of our software by clicking on the "Trial Download" button.</h4></td>
          </tr>
          
          {section name=list loop=$row}
          <tr>
            <td height="100">
            <div class="succeed">
            <table width="100%" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td width="25%" align="center" valign="middle"><img src="images/{$row[list].download_image}" /></td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="45" align="center" bgcolor="#F3F3F3"><h1><a href="{$row[list].html_file_name}">{$row[list].product_name}</a> </h1></td>
      </tr>
      <tr>
        <td height="20" align="center">&nbsp;</td>
      </tr>
      {if $row[list].product_code == 'admpro'}
      <!--<tr>
        <td height="45" align="center"><img src="images/trialdownload.gif" onclick="return redirect('http://www.cionsystems.com/trial/{$row[list].trial_file_path}');" onmouseover="this.src='images/trialdownload_o.gif'" onmouseout="this.src='images/trialdownload.gif'" border="0" style="cursor:pointer;" /></td>
      </tr>-->
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left"><img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADMPro_32bit_Trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" /></div>
      <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADMPro_64bit_Trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
     {elseif $row[list].product_code == 'adrcy'}
	 <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left">
      <img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADRecovery_32bit_trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" /></div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADRecovery_64bit_trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
      
      {elseif $row[list].product_code == 'adcn'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left">
      
      <img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADCN_ADReporter_32bit_Trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" />
      
      </div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADCN_ADReporter_64bit_Trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
            {elseif $row[list].product_code == 'adr'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left">
      
      <img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADCN_ADReporter_32bit_Trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" />
      
      </div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/ADCN_ADReporter_64bit_Trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
       {elseif $row[list].product_code == 'cim'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left">
      
      <img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/CMT_32bit_trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" />
      
      </div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/CMT_64bit_trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
             {elseif $row[list].product_code == 'bpos'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left">
      
      <img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/AD_Office365_Self_32bit_trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" />
      
      </div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/AD_Office365_Self_64bit_trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
      {elseif $row[list].product_code == 'sic'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left"><img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/SystemInfo_32bit_trial.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" /></div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/SystemInfo_64bit_trial.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
       {elseif $row[list].product_code == 'adgpo'}
      <tr>
      <td align="center">
      <div style="width:400px">
      <div style="margin:5px;float:left"><img src="images/32bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/GPOManager_32bit.zip');" onmouseover="this.src='images/32bittrial_hover.gif'" onmouseout="this.src='images/32bittrial.gif'" border="0" style="cursor:pointer;" /></div>
     <div style="margin:5px;float:right">
      <img src="images/64bittrial.gif" onclick="return redirect('http://www.cionsystems.com/trial/GPOManager_64bit.zip');" onmouseover="this.src='images/64bittrial_hover.gif'" onmouseout="this.src='images/64bittrial.gif'" border="0" style="cursor:pointer;" />
      </div>
      </div>
      </td>
      </tr>
      
       {else}
        <tr>
        <td height="45" align="center"><img src="images/trialdownload.gif" onclick="return redirect('http://www.cionsystems.com/trial/{$row[list].trial_file_path}');" onmouseover="this.src='images/trialdownload_o.gif'" onmouseout="this.src='images/trialdownload.gif'" border="0" style="cursor:pointer;" /></td>
      </tr>
       {/if}
    </table></td>
  </tr>
</table>
</div></td>
          </tr>
          {sectionelse}
          <tr>
            <td align="center" height="180" style="color:#CC3333;font-size:14px;">{$msg}</td>
          </tr>
          {/section}
          <tr>
            <td height="30" align="center" bgcolor="#F3F3F3" class="olink">To purchase the full version please contact our  Sales Department at <a href="contactus.php" class="red10">sales@cionsystems.com</a></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
      </tr>
      
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>

</form>