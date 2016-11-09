{literal}

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.pname.value == '')

	{

		alert("Enter Product Name");

		frm.pname.focus();

		return false;

	}

	else if(frm.uname.value == '')

	{

		alert("Enter User Name");

		frm.uname.focus();

		return false;

	}

	else if(frm.nusers.value == '')

	{

		alert("Enter No of Users");

		frm.nusers.focus();

		return false;

	}

	else if(frm.nservers.value == '')

	{

		alert("Enter No of Servers");

		frm.nservers.focus();

		return false;

	}

	else if(frm.nworkstations.value == '')

	{

		alert("Enter No of Workstations");

		frm.nworkstations.focus();

		return false;

	}

	else if(frm.date.value == '')

	{

		alert("Enter Date");

		frm.date.focus();

		return false;

	}

	else if(frm.status.value == '')

	{

		alert("Select Status");

		frm.status.focus();

		return false;

	}

	else

	{

		frm.act.value = 'edit';

		return true;

	}

}

function clear()

{

	var frm = document.form1;

	frm.pname.value = '';

	frm.uname.value = '';

	frm.nusers.value = '';

	frm.nservers.value = '';

	frm.nworkstations.value = '';

	frm.date.value = '';

	frm.status.value = '';

}

	

</script>

{/literal}

<form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
  <input type="hidden" name="act" value="edit" />
  <table width="100%" border="0" cellspacing="5" cellpadding="0">
    <tr>
      <td colspan="2" align="center"><span class="Sub_menu">{$msg}</span></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><h2>Status : {$order[0].status}</h2></td>
    </tr>
    <tr>
      <td valign="top" style="border:1px solid #d4ddec" width="400"><table width="100%" border="0" cellspacing="5" cellpadding="0" >
        <tr>
          <td height="30" colspan="2" bgcolor="#d4ddec" style="padding-left:10px;"><strong>Shipping Details</strong></td>
        </tr>
        <tr>
          <td width="50%" align="right"><strong>Company Name :</strong></td>
          <td width="50%" align="left">{$shipadd[0].company_name}</td>
        </tr>
        <tr>
          <td align="right"><strong>Customer Name :</strong></td>
          <td align="left">{$shipadd[0].customer_name}</td>
        </tr>
        <tr>
          <td align="right"><strong>Address :</strong></td>
          <td align="left">{$shipadd[0].address}</td>
        </tr>
        <tr>
          <td align="right"><strong>Telephone :</strong></td>
          <td align="left">{$shipadd[0].telephone}</td>
        </tr>
        <tr>
          <td align="right"><strong>Initials :</strong></td>
          <td align="left">{$shipadd[0].initials}</td>
        </tr>
        <tr>
          <td align="right" valign="top"><strong>Notes :</strong></td>
          <td align="left"><p align="justify">{$shipadd[0].notes}</p></td>
        </tr>
        <tr>
          <td align="right"><strong>Status :</strong></td>
          <td align="left"><select name="status">
            <option value="" >Select</option>
            <option value="Pending" {if $order[0].status == "Pending"} selected{/if}>Pending</option>
            <option value="Completed" {if $order[0].status == "Completed"} selected{/if}>Completed</option>
            <option value="Incompleted" {if $order[0].status == "Incompleted"} selected{/if}>Incompleted</option>
            <option value="Rejected" {if $order[0].status == "Rejected"} selected{/if}>Rejected</option>
          </select></td>
        </tr>
      </table></td>
      <td valign="top" width="300" style="border:1px solid #d4ddec"><table width="100%" border="0" cellspacing="5" cellpadding="0">
        <tr>
          <td height="30" colspan="2" bgcolor="#d4ddec" style="padding-left:10px;"><strong>Product Details</strong></td>
        </tr>
        <tr>
          <td width="70%" align="center" bgcolor="#e8e8e8">Product</td>
          <td height="25" align="center" bgcolor="#e8e8e8">No.of License</td>
        </tr>
        {section name=plist loop=$order}
        <tr>
          <td align="left" style="padding-left:5px;">{$proname[plist].product_name}</td>
          <td align="center"><strong>{$order[plist].no_of_license}</strong></td>
        </tr>
        {/section}
      </table></td>
    </tr>
    <tr>
      <td valign="top" >&nbsp;</td>
      <td valign="top" ><input name="submit3" type="submit" class="formbutton" value="Submit" onclick="javascript:return check();"/></td>
    </tr>
  </table>
</form>
