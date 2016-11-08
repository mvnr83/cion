<?php 

require_once("includes/application_start.php");

require_once("admin/includes/db_connect.php");

include("includes/functions.php");
include("includes/onlineprodfunctions.php");


$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='".$_GET['id']."' and status='Active'"));



if($_GET['id']==11)

{

	$productname = 'Active Directory Manager / Active Directory Manager Pro';

}else

{

	$productname = $get_product['product_name'];

}

?>

<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />

<form id="cartitemsfrm" name="cartitemsfrm" method="post"  action="cart.php">

	<input type="hidden" id="productid" name="productid" value="<?php echo $_GET['id'];?>" >

    <input type="hidden" name="command" id="command" value="add" />
    
    <input type="hidden" name="totusers" id="totusers"  />
    
    <input type="hidden" name="admpro_adcn" id="admpro_adcn"  />
    <input type="hidden" name="totusers_AdmproAdcn" id="totusers_AdmproAdcn"  />

  <h2><?php echo $productname;?></h2>
<div style="width: 500px; height: 330px; overflow-y: scroll;">
  <table width="90%" border="0" align="center" cellpadding="4" cellspacing="4">

 

   <tr>

    <td width="28%">&nbsp;</td>

    <td width="72%">&nbsp;</td>

  </tr>

  <?php if($_GET['id']==16){  
  
$get_product_ess = getESSProductDetails();
  
   ?>

   <tr>

    <td colspan="2"><input type="radio" name="productess" id="productess" value="ess" checked="checked"/>

      <strong><?php echo $get_product['product_name'];?> - Annual Subscription</strong></td>

  </tr>

  <tr>

    <td><label>Number of Users</label></td>

    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked" onclick="javascript: getuserno('250');"/>

      Up to 250 Users  -- $<?php echo $get_product["price_250users"];?></td>

  </tr>
  

  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusers" id="noofusers" value="500" onclick="javascript: getuserno('500');" />

Up to 500 Users -- $<?php echo $get_product["price_500users"];?></td>

  </tr>
   <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusers" id="noofusers" value="750"  onclick="javascript: getuserno('750');"/>

Up to 750 Users -- $<?php echo $get_product["price_750users"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td>750 or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request A Quote</a></td>

  </tr>
  <tr>

    <td colspan="2">
	<input type="checkbox" name="product" id="product" value="chnntfr" onclick="javascript: checkadmpro_adcn();"/>
	

      <strong><?php echo $get_product_ess['passsync_name'];?></strong></td>

  </tr>
  <tr>

    <td><label>Number of Users</label></td>

    <td><input type="radio" name="noofusersps" id="noofusersps" value="250" onclick="checkadmpro_adcn('250')" checked="checked"/>

      Up to 250 Users -- $<?php echo $get_product_ess["passsync250"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersps" id="noofusersps" value="500" onclick="checkadmpro_adcn('500')" />

      Up to 500 Users -- $<?php echo $get_product_ess["passsync500"];?></td>

  </tr>
  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersps" id="noofusersps" value="750" onclick="checkadmpro_adcn('750')" />

      Up to 750 Users -- $<?php echo $get_product_ess["passsync750"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td>750  or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request

        A Quote</a></td>

  </tr>
 
  <tr>

    <td colspan="2">
	<input type="checkbox" name="product" id="product" value="chnntfr" onclick="javascript: checkadmpro_adcn();"/>
	

      <strong><?php echo $get_product_ess['resetpwdwin_name'];?></strong></td>

  </tr>
  <tr>

    <td><label>Number of Users</label></td>

    <td><input type="radio" name="noofusersrp" id="noofusersrp" value="250" onclick="checkadmpro_adcn('250')" checked="checked"/>

      Up to 250 Users -- $<?php echo $get_product_ess["resetpwdwin250"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersrp" id="noofusersrp" value="500" onclick="checkadmpro_adcn('500')" />

      Up to 500 Users -- $<?php echo $get_product_ess["resetpwdwin500"];?></td>

  </tr>
  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersrp" id="noofusersrp" value="750" onclick="checkadmpro_adcn('750')" />

      Up to 750 Users -- $<?php echo $get_product_ess["resetpwdwin750"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td>750  or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request

        A Quote</a></td>

  </tr>
  
  <tr>

    <td colspan="2">
	<input type="checkbox" name="product" id="product" value="chnntfr" onclick="javascript: checkadmpro_adcn();"/>
	

      <strong><?php echo $get_product_ess['mfa_win_name'];?></strong></td>

  </tr>
  <tr>

    <td><label>Number of Users</label></td>

    <td><input type="radio" name="noofusersmf" id="noofusersmf" value="250" onclick="checkadmpro_adcn('250')" checked="checked"/>

      Up to 250 Users -- $<?php echo $get_product_ess["mfa_win250"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersmf" id="noofusersmf" value="500" onclick="checkadmpro_adcn('500')" />

      Up to 500 Users -- $<?php echo $get_product_ess["mfa_win500"];?></td>

  </tr>
  <tr>

    <td>&nbsp;</td>

    <td><input type="radio" name="noofusersmf" id="noofusersmf" value="750" onclick="checkadmpro_adcn('750')" />

      Up to 750 Users -- $<?php echo $get_product_ess["mfa_win750"];?></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td>750  or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request

        A Quote</a></td>

  </tr>
  
  
  <?php 

  }?>

  <tr>

    <td>&nbsp;</td>

    <td>&nbsp;</td>

  </tr>



  <tr>

    <td>&nbsp;</td>

    <td align="left"><ul style="margin:0; padding:0;">	

		<li style="list-style:none;">

			<!--<a href="#" class="lbAction" rel="insert"><button class="buy"> Buy Now </button></a>-->

            <input type="submit" name="buynow" id="buynow" value=" Buy Now " class="buy" onclick="javascript: return CartVal();" /> &nbsp; 

			<a href="#" class="lbAction" rel="deactivate"><button class="cancel"> Cancel </button></a>

		</li>

  </ul></td>

  </tr>

  <tr>

    <td>&nbsp;</td>

    <td>&nbsp;</td>

  </tr>

  </table>	
</div>
</form>

<script language="javascript">

    function CartVal() {

        if (document.cartitemsfrm.numberof_domains.value == '') {

            alert("Please enter Number of Domains");

            document.cartitemsfrm.numberof_domains.focus();

            return false;

        }

        if (document.cartitemsfrm.numberof_computers.value == '') {

            alert("Please enter Numer of Computers");

            document.cartitemsfrm.numberof_computers.focus();

            return false;

        }

    }

    function ProVal(ptype) {

        if (ptype == 'adm') {

            document.cartitemsfrm.noofusers[0].checked = true;

        }

        if (ptype == 'pro') {

            document.cartitemsfrm.noofusers[2].checked = true;

        }

    }
	
	function test()
	{
		alert("test");
		
	}
	
	function checkadmpro_adcn(nousradmadcn)
	{
		document.getElementById("admpro_adcn").value = "yes";
		if(nousradmadcn==250)
		{
		document.getElementById("totusers_AdmproAdcn").value = "250";
		}
		if(nousradmadcn==500)
		{
		document.getElementById("totusers_AdmproAdcn").value = "500";
		}
		if(nousradmadcn==750)
		{
		document.getElementById("totusers_AdmproAdcn").value = "750";
		}
	}
	
	function getuserno(nousrss)
	{
		if(nousrss==250)
		{
		document.getElementById("totusers").value = "250";
		}
		if(nousrss==500)
		{
		document.getElementById("totusers").value = "500";
		}
		if(nousrss==750)
		{
		document.getElementById("totusers").value = "750";
		}
	}
		
	function func1() {
  document.getElementById("totusers").value = "250";
  document.getElementById("totusers_AdmproAdcn").value = "250";
}
window.onload=func1();

</script>