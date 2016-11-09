{literal}
<script type="text/javascript">
function delemp(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'view_employee.php';

		frm.submit();

	}

}
</script>
{/literal}
<form id="form1" name="form1" method="post" action="">
	<input type="hidden" name="act" />
    <input type="hidden" name="uid" />
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td align="center" height="30"><strong>Files Uploaded to Partner</strong></td>
  </tr>
  <tr>
    <td align="center">
    
     <table width="95%" border="0" cellspacing="0" cellpadding="0" class="maingrid" style="border-collapse:collapse">
  <tr>
    <th height="25" align="center"  width="5%">SL</th>
    <th width="16%" align="center" >Title</th>
    <th width="16%" align="center" >Files</th>
    <th width="16%" align="center" >File Type</th>
    <th width="16%" align="center" >Date</th>
    <th width="5%" align="center" >Status</th>
    </tr>
    {if $array[0].Ppartnerid == ''}
    <tr>
    <td colspan="6" align="center" class="grid" height="25"><strong>No Records Found</strong></td>
    </tr>
   {else}
    
    
  {section name=list loop=$array}
  <tr bgcolor='{cycle values="#f1f1f1,#f7f7f7"}'>
    <td height="25" align="center" class="grid">{$smarty.section.list.rownum}</td>
    <td align="center" class="grid"><strong>{$array[list].Title}</strong></td>
    <td align="center" class="grid"><a href="download.php?filename={$array[list].Pfiles}">Download</a></td>
    <td align="center" class="grid">{$array[list].filetype}</td>
    <td align="center" class="grid">{$array[list].Pdate|date_format:"%d-%m-%Y"}</td>
    <td align="center" class="grid">{if $array[list].Pstatus == 'Active'}<img src="../partnerportal/images/active.gif">
    {else}
    <img src="../partnerportal/images/inactive.gif">
    {/if}    </td>
    </tr>
  {/section}
  {/if}
</table>    </td>
  </tr>
</table>
</form>