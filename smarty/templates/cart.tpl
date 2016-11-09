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
function login(id,pname)
{ 
	document.getElementById('product_id').value=id;
	document.getElementById('keyword').value='trial';
	document.getElementById('download_type').value='trial';
	document.getElementById('pname').value = pname;
	if(id!='')
	{
		document.form1.action = "login.php";
		document.form1.submit();
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
    <td width="96%"><table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span><span style="font-size: 17px; color: #999999"> </span>Cart<br />
        </h2></td>
        </tr>
      <tr>
        <td colspan="2" valign="top"><p>&nbsp;</p></td>
      </tr>
      <tr>
        <td width="25%" colspan="2" align="center" valign="top"><h3>&nbsp;</h3></td>
      </tr>
      </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>

</form>