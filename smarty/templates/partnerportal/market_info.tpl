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
    <div class="windowDataScroll">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" class="dataScroll">
      <thead class="fixedHeader">
      <tr>
        <th width="23%" align="center">SL.No</th>
        <th width="25%" height="25" align="center"> Title</th>
        <th width="25%" align="center">Files</th>
        <th width="25%" align="center">Date</th>
        <th width="2%" class='th_extra'></th>
      </tr>
      </thead>
      {section name=list loop=$fparray}
      <tr bgcolor='{cycle values="#f1f1f1, #f7f7f7"}'>
        <td align="center" height="20">{$smarty.section.list.rownum}</td>
        <td align="center" class="pcode">{$fparray[list].Title}</td>
        <td >{$fparray[list].Pfiles}</td>
        <td align="center" >{$fparray[list].Pdate|date_format:"%d-%m-%Y"}</td>
        <td></td>
      </tr>
      {/section}
       <TFOOT class="fixedFooter">
 <tr><th colspan="6"><div class="TFooter">{$pagination}</div></th>
   </tr>
 </TFOOT>
    </table>
    </div>
    </td>
  </tr>
</table>
</body>
</html>
