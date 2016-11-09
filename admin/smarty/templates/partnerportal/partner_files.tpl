{literal}

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.uname.value == '')

	{

		alert("Enter User Name");

		frm.uname.focus();

		return false;

	}

	else if(frm.pwd.value == '')

	{

		alert("Enter Password");

		frm.pwd.focus();

		return false;

	}

	else if(frm.fname.value == '')

	{

		alert("Enter First Name");

		frm.fname.focus();

		return false;

	}

	else if(frm.lname.value == '')

	{

		alert("Enter Last Name");

		frm.lname.focus();

		return false;

	}

	else if(frm.email.value == '')

	{

		alert("Enter Email");

		frm.email.focus();

		return false;

	}

	else if(frm.utype.value == '')

	{

		alert("Select User Type");

		frm.utype.focus();

		return false;

	}

	else

		return true;

}

function clear()

{

	var frm = document.form1;

	frm.uname.value = '';

	frm.pwd.value = '';

	frm.fname.value = '';

	frm.lname.value = '';

	frm.email.value = '';

	frm.utype.value = '';

}

function showuser(id)

{

	var op = window.open("viewpartner_files.php?uid="+id, "mywin","menubar=0,resizable=1,width=480,height=400")

	op.focus();

}

function edituser(id)

{

	var frm = document.form1;

	frm.action = "editemp.php?eid="+id;

	frm.submit();

}

function deluser(id)

{

	var frm = document.form1;

	if(confirm("Are you sure,Do you want to delete this User"))

	{

		frm.act.value = 'del';

		frm.uid.value = id;

		frm.action = 'partner_files.php';

		frm.submit();

	}

}

function changestat(id,st)

{

	var frm = document.form1;

	frm.uid.value = id;

	frm.st.value = st;

	frm.act.value = 'change';

	frm.action = 'partner_files.php';

	frm.submit();

}

</script>

{/literal}

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">


<!--<tr>

	<td align="left" class="aril" colspan="2">Logged In as:<span class="Sub_menu">{$session}</span></td>

</tr>

--><tr>

	<td colspan="3">&nbsp;</td>

</tr>

<tr>

	<td align="center" class="Sub_menu" colspan="3">{$msg}</td>
</tr>

	              <tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="100%" align="left" valign="top"><form id="form1" name="form1" method="post" action="">

				<input type="hidden" name="act" />

				<input type="hidden" name="uid" />

				<input type="hidden" name="st"  />

                  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="2" class="stroke">

                    <tr>

                      <td align="left" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

					  

                        <tr>

                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite">Files Uploaded for Partners</td>
                              </tr>

                          </table></td>
                        </tr>

                        <tr>

                          <td align="left" valign="top">
                          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                          <tr bgcolor="#f2f2f2">

                                <th align="center" valign="middle" class="Sub_menu">S.No </th>

								<th height="25" align="center" valign="middle" class="Sub_menu">Partner Name</th>
							<th align="center" valign="middle" class="Sub_menu">Title</th>

								<th align="center" valign="middle" class="Sub_menu">File Type</th>

							    <th align="center" valign="middle" class="Sub_menu">Date</th>
							    <th align="center" valign="middle" class="Sub_menu">Status</th>

								<th align="center" valign="middle" class="Sub_menu">View</th>

								<th align="center" valign="middle" class="Sub_menu">Delete</th>
                              </tr>

                             {section name=list loop=$array}
{if $array[list].status == 'Inactive'}
							<tr>
        {/if}								
        <td height="25" align="center" class="aril">{$smarty.section.list.rownum}</td>

										<td class="aril" align="left">{$comp[list].company}</td>
							  <td class="aril" align="left">{$array[list].Title}</td>

							  <td class="aril" align="center">{if $array[list].filetype == 'image'}
                                          <a href="upload_file/{$array[list].Pfiles}" target="_blank">View Image</a> 
                                          {else}
                              			<a href="doc_download.php?filename={$array[list].Pfiles}">Download</a>    
                              			{/if}                              			</td>
                                        
							  <td class="aril" align="center">{$array[list].Pdate|date_format:"%D"}</td>
										<td class="aril" align="center">
                                        {if $array[list].Pstatus == 'Active'}<a href="javascript:changestat('{$array[list].Pid}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array[list].Pid}','Active');" class="Sub_menu">Make Active</a>{/if}
                                        </td>

										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showuser('{$array[list].Pid}')" style="cursor:pointer"  title="View User Details"> </td>

										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:deluser('{$array[list].Pid}')" style="cursor:pointer" title="Delete User" /></td>
									</tr>

							 {/section}



                              

                              <tr>

                                <td colspan="8" align="center" valign="middle">{$pagination}</td>
                            </tr>
                          </table></td>
                        </tr>

                      </table></td>
                    </tr>
                  </table>

                                </form>                </td>

                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>
