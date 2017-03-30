<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="grid">
  
  <tr>
      <td width="17%" height="35" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Transaction Id</strong></td>
    <td width="22%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Amount</strong></td>
    <td width="23%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Status</strong></td>
    <td width="28%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Transaction Date</strong></td>
    <td width="10%" align="center" bgcolor="#f2f2f2" class="grid" style="padding-right:0px !important; text-align:center !important"><strong>Invoice</strong></td> 
  </tr>
  {section name=list loop=$parray}
  <tr>
    <td height="28" align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].transaction_id}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">${$parray[list].amount}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].transaction_pending}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">{$parray[list].payment_date|date_format}</td>
    <td align="center" class="grid" style="padding-right:0px !important; text-align:center !important">
         
            {$parray[list].invoice_link}
    </td> 
  </tr>
  {/section}
</table>
