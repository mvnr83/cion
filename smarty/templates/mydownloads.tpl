<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="grid">
  
  <tr>
    <td width="5%" height="35" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Order ID</strong></td>
    <td width="45%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Product Name</strong></td>
    <td width="20%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Plan</strong></td>
    <td width="10%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Ordered Date</strong></td>
    <td width="10%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Expiry Date</strong></td>
    <td width="10%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Download</strong></td>
  </tr>
  {section name=list loop=$parray}
  <tr>
    <td height="28" align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].order_id}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].product_name}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].plan_name}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].order_date|date_format}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].expiry_date|date_format}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{if $parray[list].is_expired eq 'no'}<a target="_blank" href="downloadfullproduct.php?dlkey={$parray[list].link_string}">Download</a>{else}&dash;{/if}</td>
  </tr>
  {/section}
</table>
