{literal}
<link href="css/style_sheet.css" type="text/css" rel="stylesheet"/>
<script language="javascript" type="text/javascript">
function delcom(id,bid)
{
	var frm = document.form3;
	if(confirm("Are you sure,You want to delete this comment"))
	{
		frm.cid.value = id;
		frm.bid.value = bid;
		frm.act.value = 'delcom';
		frm.action = "blogdetails.php?bid="+bid;
		frm.submit();
	}
}
function changestat(id,st)
{
	var frm = document.form3;
	frm.act.value = "change";
	frm.cid.value = id;
	frm.st.value = st;
	frm.action = "blogdetails.php";
	frm.submit();
}
function editcomment(id)
{
	var frm = document.form3;
	var op1 = window.open("editcomment.php?cid="+id, "mywin","menubar=0,resizable=1,scrollbars=yes,width=750,height=700")
	op1.focus();
}

function addcomment(id)
{
	var frm = document.form2;
	frm.bid.value = id;
	document.getElementById('addc').style.display = '';
}

function check(id)
{
	var frm = document.form2;
	if(frm.desc.value == '')
	{
		alert("Enter Comments");
		document.getElementById('addc').style.display = '';
		return false;
	}
	else
	{
		document.form1.bid.value = id;
		frm.act.value = 'add';
		document.getElementById('addc').style.display = 'none';
		return true;
	}
}

function clear()
{
	var frm = document.form2;
	frm.desc.value = '';
	document.getElementById('addc').style.display = 'none';
}

function showcomments(id)
{
	document.getElementById('com').style.display = '';
}
</script>
{/literal}
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="600" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
				<input type="hidden" name="act" />
				<input type="hidden" name="cid" />
				<input type="hidden" name="bid" value="{$bid}" />
                  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">
					  <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
					  <tr>
						<td align="center" class="Sub_menu">{$msg}</td>
					</tr>
                        <tr>
                          <td align="left" valign="top">
						  <table width="700" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite"> Blog Details </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top">
						  <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
                               <tr>
								<td align="left" valign="middle">&nbsp;</td>
								<td align="center" valign="middle">&nbsp;</td>
								<td align="center" valign="middle">&nbsp;</td>
							  </tr>
                              <tr>
                                <td align="left" valign="middle" class="Sub_menu" width="25%">Blog Author </td>
                                <td height="25" align="left" valign="middle" class="aril">{$uname}</td>
                                <td align="left" valign="middle" class="Sub_menu">Posted On</td>
                                <td align="left" valign="middle" class="aril">{$array[0].blog_posted_date}</td>
							  </tr>
                              <tr>
                                <td align="left" valign="middle" class="Sub_menu" width="25%">Blog Title   </td>
                                <td align="left" valign="middle" class="aril">{$array[0].blog_title}</td>
								<td align="left" valign="middle" class="Sub_menu">Product name</td>
                                <td align="left" valign="middle" class="aril">{$array[0].product_name}</td>

                              </tr>
							   <tr>
								<td align="left" valign="middle">&nbsp;</td>
								<td align="center" valign="middle">&nbsp;</td>
								<td align="center" valign="middle" colspan="2">&nbsp;</td>
							  </tr>
							  <tr>
                                <td height="25" align="left" valign="bottom" class="aril" colspan="4">{$array[0].blog_description}</td>
                              </tr>
							  <tr>
								<td align="left" valign="middle">&nbsp;</td>
								<td align="center" valign="middle">&nbsp;</td>
								<td align="center" valign="middle" colspan="2">&nbsp;</td>
							  </tr>
							  <tr>
								<td align="right" valign="middle" colspan="2"><a href="javascript:showcomments({$array[0].id})" class="Sub_menu">Comments({$cnt})</a></td>
								<td align="left" valign="middle" colspan="2">&nbsp;&nbsp;<a href="javascript:addcomment({$array[0].id})" class="Sub_menu">Add Comments</a></td>
							  </tr>

				  			  <tr>
								<td align="right" valign="middle">&nbsp;</td>
								<td align="center" valign="middle">&nbsp;</td>
								<td align="center" valign="middle" colspan="2">&nbsp;</td>
							  </tr>
							 <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="23" align="center" valign="middle" colspan="">
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="114" align="left" valign="top" colspan="2"><input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" />&nbsp;&nbsp;</td>
                                      </tr>
                                    </table>
                                	</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
							   <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
				</form>
                </td>
                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
			  <form id="form2" name="form2" method="post" action="">
			  <input type="hidden" name="act" />
				<input type="hidden" name="bid" value="{$bid}" />
			<tr id="addc" style="display:none">
			<td>&nbsp;</td>
			<td width="600" align="left" valign="top">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	              <tr>
                <td width="232" align="left" valign="top">&nbsp;</td>
                <td width="427" align="left" valign="top">
				  <table width="417" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle">
					  <table width="408" border="0" align="center" cellpadding="0" cellspacing="0">
					  <tr>
						<td align="center" class="Sub_menu">{$msg}</td>
					</tr>
                        <tr>
                          <td align="left" valign="top">
						  <table width="600" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite"> Add Comment </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="144" align="right" valign="middle">&nbsp;</td>
                                <td width="10" align="center" valign="middle">&nbsp;</td>
                                <td width="201" align="center" valign="middle">&nbsp;</td>
                                <td width="55" align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Post Comment :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle" class="aril"><textarea rows="5" cols="50" name="desc" id="desc"></textarea></td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="23" align="center" valign="middle">
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Submit"  onclick="javscript:check({$bid});" /></td>
										 <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Cancel"  onclick="javscript:clear();" /></td>
                                      </tr>
                                    </table>
                                  </td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>

                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>

                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
                </td>
                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>
			</td>
			</tr>
			 </form>
			 <form id="form3" name="form3" method="post" action="">
				<input type="hidden" name="bid" value="{$bid}" />
				<input type="hidden" name="act"  />
				<input type="hidden" name="cid" />
				<input type="hidden" name="st" />
			 <tr id="com" style="display:none">
			 	<td align="left">&nbsp;</td>
				<td width="100%">
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle">&nbsp;</td>
                              </tr>
	              <tr>
                <td width="427" align="left" valign="top">
                  <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">
                    <tr>
                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle"><table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
					  <tr>
						<td align="center" class="Sub_menu">{$msg}</td>
					</tr>
                        <tr>
                          <td align="left" valign="top"><table width="800" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite"> Comment Details </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
							  	<td align="center" valign="middle" class="Sub_menu"><input type="checkbox"/></td>
                                <td align="center" valign="middle" class="Sub_menu">S.No </td>
								<td align="center" valign="middle" class="Sub_menu">Author </td>
								<td align="left" valign="middle" class="Sub_menu">Comment</td>
								<td align="center" valign="middle" class="Sub_menu">Status</td>
								<td align="center" valign="middle" class="Sub_menu">View/Edit</td>
								<td align="center" valign="middle" class="Sub_menu">Delete</td>
                              </tr>
                             {section name=list loop=$array1}
									<tr>
										<td align="center" valign="middle" class="Sub_menu"><input type="checkbox" name="id" value="{$array[list].id}" /></td>
										<td class="aril" align="center">{$smarty.section.list.rownum}</td>
										<td class="aril" align="center">{$name[list]}</td>
										<td class="aril" align="left">{$array1[list].blog_comments|truncate:30}</td>
										<td class="aril" align="center">{if $array1[list].status == 'Active'}<a href="javascript:changestat('{$array1[list].id}','Inactive');" class="Sub_menu">Make In Active</a>{else}<a href="javascript:changestat('{$array1[list].id}','Active');" class="Sub_menu">Make Active</a>{/if}</td>
										<td class="aril" align="center"><img src="images/b_view.png"  width="16"/ onclick="javascript:showcomment('{$array1[list].id}')"> / <img src="images/b_edit.png" width="20" onclick="javascript:editcomment('{$array1[list].id}')"/></td>
										<td class="aril" align="center"><img src="images/b_drop.png" onclick="javascript:delcom('{$array1[list].id}','{$array1[list].blog_id}')" /></td>
									</tr>
							 {/section}
                            <tr>
                                <td align="right" valign="middle" colspan="8">&nbsp;</td>
                              </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
                </td>
                <td width="129" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>
				</td>
			 </tr>
			   </form>
			</table>