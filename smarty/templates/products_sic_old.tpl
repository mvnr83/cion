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
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<link rel="stylesheet" href="lightbox/css/lightbox.css" media="screen,projection" type="text/css" />
<script type="text/javascript" src="lightbox/scripts/prototype.js"></script>
<script type="text/javascript" src="lightbox/scripts/lightbox.js"></script>
<script language="javascript">
function FormVal()
{
	document.form1.submit();
	document.form1.action='cart.php';;
}
</script>
{/literal}
<form method="post" name="form1">
<input type="hidden" name="keyword" id="keyword" />
<input type="hidden" name="product_id" id="product_id" />
<input type="hidden" name="pname" id="pname" />
<input type="hidden" name="res_id" id="res_id" />
<input type="hidden" name="download_type" id="download_type" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%">
    <table width="100%" border="0" cellspacing="3" cellpadding="0">
      <tr>
        <td colspan="2"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <a href="active-directory-tools.php" style="text-decoration:none; " title="Products">Products</a> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>System Information</span> and Comparison </h2></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><p>Have  you ever wondered why your Windows system suddenly stopped working? What  changed? Why your application works in development and won&rsquo;t run on production  system or why one of the two identically configured systems is not working?</p>
          <p>The System Information and Comparison tool will help  troubleshoot these issues quickly, thereby saving you a lot of time. Running this  application you can connect to one or more systems and capture the  configuration locally or remotely, save it as a master copy, or compare the  configurations side by side</p>
          <p>System Information Comparison is an easy-to-use application loaded with powerful features that aid an administrator in making Windows clients, servers and/or set of systems (it can be a cluster) as stable as possible. It supports Windows XP, Windows 2003, and all flavors of Windows Vista.</p></td>
          <td align="center" valign="middle">
         
				<input type="hidden" id="productid" name="productid" value="{$product_id}" >
 			  <input type="hidden" name="command" id="command" value="add" />
              <input type="hidden" name="product" id="product" value="SIC"/>
              <input type="hidden" name="noofusers" id="noofusers" value="500" />
              <input type="image" src="images/buy_now.gif" width="175" height="37" border="0" onclick="javascript: return FormVal();"  />
           <!--<a href="cart_item.php?id={$product_id}&cart=add" class="lbOn"><img src="images/buy_now.gif" width="175" height="37" border="0" /></a>--><br />
          <a href="http://www.youtube.com/results?search_query=cionsystems&search_type=&aq=f" target="_blank"><img src="images/videos.gif" height="37" width="175" border="0" /></a><br />
        <!--<a href="buyitnow.php?product=System Information"><img src="images/buy.gif" border="0" /></a>-->
                           {if $session_username != ""}
<a href="schedule_demo.php?product=SystemInformationComparison"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>                   {else}
<a href="scheduleademo.php?product=SystemInformationComparison"><img src="images/sdemo.gif" width="175" height="37" border="0" /></a>                   {/if}


        <br />
                   {if $session_username != ""}
                   <a href="download.php?id={$product_id}"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                   {else}
                   <a href="javascript:void(0);" onclick="javascript:return login('{$product_id}','{$pname}');"><img src="images/download_trail.gif" width="175" height="37" border="0" /></a>
                   {/if}
                   <br />
<!--                   <a href="buyitnow.php"><img src="images/requesta_quote.gif" width="175" height="37" border="0" /></a>
                   <br />-->
         {section name=cust loop=$array}
          {if $smarty.section.cust.rownum eq 7} 
           
<!--             <input type="image" onclick="javascript:showtrial('{$array[cust].id}','{$session_username}','{$array[cust].product_code}');" src="images/tryitnow.gif" alt="Try It Now" border="0" />-->
         
             <a href="../datasheet/SIC_Datasheet_2.2.pdf"><img src="images/downdata.gif" width="175" height="37" border="0" /></a> {/if}
          {/section} </td>
        
      </tr>
      <tr>
        <td><div class="head-list hrline">
          <h3>System Information Comparison allows you to</h3>
          <ul type="square">
            <li>Remotely connect to machines in your network</li>
            <li>Capture and Audit system configuration locally or remotely without  having to install any agents</li>
            <li>Browse by domain or by groups</li>
            <li>Set your preferences so that you collect only those configurations</li>
            <li>Save the system configuration as Master for later use</li>
            <li>Compare system configuration canonically between multiple systems side by  side or&nbsp; against the saved Master  configuration</li>
            <li>Compare saved system configurations of multiples workstations side by  side</li>
            <li>Save the comparison information for later use</li>
            <li>System information comparison uses WMI extensively, so you don&rsquo;t have to  worry about deploying agents or paying expensive per-node license</li>
            <li>&hellip;and much more</li>
          </ul>
        </div></td>
        <td width="25%" align="center" valign="middle"><img src="images/sic.jpg" width="154" height="193" alt="System Information and Comparison" title="System Information and Comparison"/></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>

</form>