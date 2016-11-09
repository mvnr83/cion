<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="grid">
  
  <tr>
    <td width="17%" height="35" align="center" bgcolor="#f2f2f2" class="grid"><strong>Order ID</strong></td>
    <td width="32%" align="center" bgcolor="#f2f2f2" class="grid"><strong>Product Name</strong></td>
    <td width="23%" align="center" bgcolor="#f2f2f2" class="grid"><strong>Status</strong></td>
    <td width="28%" align="center" bgcolor="#f2f2f2" class="grid"><strong>Posted Date</strong></td>
  </tr>
  {section name=list loop=$parray}
  <tr>
    <td height="28" align="center" class="grid">{$parray[list].id}</td>
    <td align="center" class="grid">{$name[list]}</td>
    <td align="center" class="grid">{$parray[list].status}</td>
    <td align="center" class="grid">{$parray[list].date|date_format}</td>
  </tr>
  {/section}
</table>
