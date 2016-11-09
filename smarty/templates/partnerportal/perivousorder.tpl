<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td valign="top">
    <!--<div class="windowDataScroll">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="dataScroll">
      <thead class="fixedHeader">
      <tr>
        <th width="10%" align="center">SL.No</th>
        <th width="20%" height="25" align="center"> OrderCode</th>
        <th width="20%" align="center">Company Name</th>
        <th width="20%" align="center">Customer Name</th>
        <th width="15%" align="center">Date</th>
        <th width="15%" align="center">Status</th>
        <th class='th_extra'></th>
      </tr>
      </thead>
      {if $pervious[0].Req_OC == ''}
    <tr>
    <td colspan="6" align="center"><strong>No Records Found</strong></td>
    </tr>
   {else}
      {section name=list loop=$pervious}
      <tr bgcolor='{cycle values="#f1f1f1, #f7f7f7"}'>
        <td align="center" height="20">{$smarty.section.list.rownum}</td>
        <td align="center" class="pcode"><a href="shipping_order.php?oc={$pervious[list].Req_OC}&height=300&width=700" class="thickbox" title="Order Code : {$pervious[list].Req_OC}">{$pervious[list].Req_OC}</a></td>
        <td >{$pervious[list].company_name}</td>
        <td >{$pervious[list].customer_name}</td>
        <td align="center" >{$shipdetails[list].date|date_format:"%d-%m-%Y"}</td>
        <td align="center" >{if $shipdetails[list].status == 'Completed'}
        <span class="success"><strong>{$shipdetails[list].status}</strong></span>
        {else}
        <span class="error"><strong>{$shipdetails[list].status}</strong></span>
        {/if}</td>
      </tr>
      {/section}
      {/if}
       <TFOOT class="fixedFooter">
 <tr><th colspan="7"><div class="TFooter">{$pagination}</div></th></tr>
 </TFOOT>
    </table>
    </div>-->    </td>
  </tr>
  <tr>
    <td align="center" valign="top">
    <table width="95%" border="0" cellspacing="0" cellpadding="0" class="maingrid" style="border-collapse:collapse">
    <tr>
      <th width="5%" align="center">SL.No</th>
      <th width="16%" height="25" align="center"> OrderCode</th>
      <th width="16%" align="center">Company Name</th>
      <th width="16%" align="center">Customer Name</th>
      <th width="16%" align="center">Date</th>
      <th width="5%" align="center">Status</th>
    </tr>
 {section name=list loop=$pervious}
   <tr bgcolor='{cycle values="#f1f1f1,#f7f7f7"}'>
     <td align="center" height="25" class="grid">{$smarty.section.list.rownum}</td>
     <td align="center" class="pcode grid"><a href="shipping_order.php?oc={$pervious[list].Req_OC}&height=300&width=700" class="thickbox" title="Order Code : {$pervious[list].Req_OC}">{$pervious[list].Req_OC}</a></td>
     <td class="grid">{$pervious[list].company_name}</td>
     <td class="grid">{$pervious[list].customer_name}</td>
     <td class="grid">{$shipdetails[list].date|date_format:"%d-%m-%Y"}</td>
     <td class="grid">{if $shipdetails[list].status == 'Completed'} <span class="success"><strong>{$shipdetails[list].status}</strong></span> {else} <span class="error"><strong>{$shipdetails[list].status}</strong></span> {/if}</td>
   </tr>
      {sectionelse}
     <tr>
    <td colspan="6" height="25" align="center" class="grid"><strong>No Records Found</strong></td>
    </tr>
  {/section}
   <tr>
     <td height="20" colspan="6" align="center"><div class="TFooter">{$pagination}</div></td>
     </tr>
  

</table>
    
    </td>
  </tr>
</table>
</body>
</html>
