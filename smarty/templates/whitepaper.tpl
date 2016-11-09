{literal}
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.box', '10px 10px 10px 10px', true);
</script>
{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> Downloads <span style="font-size:17px; color:#999999;">&raquo;</span> <span>White</span> Papers </h2></td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">
    <div class="box" style="border:2px solid #CCCCCC;width:350px;padding:5px;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2>Whitepapers</h2></td>
  </tr>
  
  <tr>
    <td align="center">
    <div id="list" style="padding:0px 60px 0px 60px;">
                <ul>
                {section name=list loop=$array}
                  <li> <a href="pdfdownload.php?filename={$array[list].wp_path}"><img src="images/bullet1.gif" border="0" />{$array[list].wp_name}</a></li>
                   {/section}
                  </ul>
   </div>
    
   </td>
  </tr>
 
</table>
    </div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center">You can also send e-mail to <a href="contactus.php" class="red"><strong> sales@cionsystems.com</strong></a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
