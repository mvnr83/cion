{literal}
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
    <td><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2"><h2 class="protitle"><span>Remote</span> Manager </h2></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td><p>Desktop Management is a never-ending job for administrators. Configuration requests ranging from simple drive mapping to software installation keep the administrators on their toes. With increasing requests and a growth in the number of desktops, it becomes more difficult to keep up with escalating demand on limited manpower.</p>
          <p>Remote Manager enables administrators to remotely perform mundane tasks and more. This tool has a powerful System Restore feature based on Microsoft Windows System Restore. It allows administrators to remotely restore the system to a previous state, force-create a restore point snapshot, and/or schedule restore-point creation on the network systems. It has a very simple-to-use user interface. In addition, Remote Manager Application allows administrators to install and uninstall products and system restore and shut down and wake up on the remote systems. This tool is very useful for the network administrators who are required to manage the remote computers in the Domain.</p></td>
        <td width="25%" align="center" valign="middle"><img src="images/rm.jpg" alt="Remote Manager" width="154" height="193" /></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td><div class="head-list hrline">
          <h3>Administrators can use Remote Manager Application to:</h3>
          <ul type="square">
            <li>Create a System Restore Point on the remote and local system</li>
            <li>Disable Full System Restore on the remote and local system</li>
            <li>Enable Full System Restore on the remote and local system</li>
            <li>Schedule a System Restore on the remote and local system</li>
            <li>Uninstall the product on the remote and local system</li>
            <li>Install the products (MSI only) on remote or local system</li>
            <li>Start or wake the remote system using MAC address</li>
            <li>Shut down or restart the local and remote Windows NT/2000/XP/2003 systems over the network.</li>
            </ul>
        </div></td>
        <td align="center" valign="middle"> {section name=cust loop=$array}
          {if $smarty.section.cust.rownum eq 7}
            <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now" border="0" />
            <br />
          {/if}
          {/section} </td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>

</form>