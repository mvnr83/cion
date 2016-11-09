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
    <td align="center">
    
     <table width="95%" border="0" cellspacing="0" cellpadding="0" class="maingrid" style="border-collapse:collapse">
  <tr>
    <th height="25" align="center"  width="5%">SL</th>
    <th width="16%" align="center" >First Name</th>
    <th width="16%" align="center" >Last Name</th>
    <th width="16%" align="center" >Email</th>
    <th width="16%" align="center" >Username</th>
    <th width="16%" align="center" >Password</th>
    <th width="5%" align="center" >Status</th>
    <th width="5%" align="center" >View</th>
    <th width="5%" align="center" >Delete</th>
  </tr>
  {section name=list loop=$array}
  <tr bgcolor='{cycle values="#f1f1f1, #f7f7f7"}'>
    <td height="25" align="center" class="grid">{$smarty.section.list.rownum}</td>
    <td align="left" class="grid">{$array[list].first_name}</td>
    <td align="left" class="grid">{$array[list].last_name}</td>
    <td align="left" class="grid">{$array[list].email}</td>
    <td align="left" class="grid">{$array[list].username}</td>
    <td align="left" class="grid">{$array[list].password}</td>
    <td align="center" class="grid">{if $array[list].status == 'Active'}<img src="images/active.gif">
    {else}
    <img src="images/inactive.gif">
    {/if}
    </td>
    <td align="center" class="grid"><a href="view_empdetails.php?id={$array[list].emp_id}&height=300&width=700" class="thickbox" title="Employee Details"><img src="images/info.gif" width="16" height="16" border="0"></a></td>
    <td align="center" class="grid"><a href="javascript:delemp('{$array[list].emp_id}')"><img src="images/delete.gif" width="16" height="16" border="0"></a></td>
  </tr>
  {/section}
</table>
    </td>
  </tr>
</table>
   </form>