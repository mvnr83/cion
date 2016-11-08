<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");
$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='".$_GET['id']."' and status='Active'"));
if($_GET['id']==5)
{
	$productname = 'Active Directory Manager / Active Directory Manager Pro';
}else
{
	$productname = $get_product['product_name'];
}
?>
<link rel="stylesheet" href="lightbox/css/default.css" media="screen,projection" type="text/css" />
<form id="cartitemsfrm" name="cartitemsfrm" method="post" action="cart.php">
	<input type="hidden" id="productid" name="productid" value="<?php echo $_GET['id'];?>" >
    <input type="hidden" name="command" id="command" value="add" />
  <h2><?php echo $productname;?></h2>
  <table width="90%" border="0" align="center" cellpadding="4" cellspacing="4">
 
   <tr>
    <td width="28%">&nbsp;</td>
    <td width="72%">&nbsp;</td>
  </tr>
   <?php
  if($_GET['id']==5){ 
  $get_product_pro = mysql_fetch_array(mysql_query("select * from product_details where id='11' and status='Active'"));
  ?> 
  <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="ADM" checked="checked" onclick="javascript: ProVal('adm');"/>
      <strong>Active Directory Manager</strong></td>
    </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked"/>
      Up to 250 Users  -- $<?php echo $get_product['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
Up to 500 Users -- $<?php echo $get_product['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500  or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request A Quote</a></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="PRO" onclick="javascript: ProVal('pro');"/>
      <strong>Active Directory Manager Pro</strong></td>
  </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250"/>
      Up to 250 Users -- $<?php echo $get_product_pro['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
      Up to 500 Users -- $<?php echo $get_product_pro['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500  or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request
        A Quote</a></td>
  </tr>
  <?php }else if($_GET['id']==12){  ?>
   <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="ADRC" checked="checked"/>
      <strong><?php echo $get_product['product_name'];?></strong></td>
  </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked"/>
      Up to 250 Users  -- $<?php echo $get_product['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
Up to 500 Users -- $<?php echo $get_product['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500 or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request A Quote</a></td>
  </tr>
  <?php }else if($_GET['id']==1){  ?>
   <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="ADRP" checked="checked"/>
      <strong><?php echo $get_product['product_name'];?></strong></td>
  </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked"/>
      Up to 250 Users  -- $<?php echo $get_product['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
Up to 500 Users -- $<?php echo $get_product['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500 or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request A Quote</a></td>
  </tr>
 <?php }else if($_GET['id']==6){  ?>
 <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="ADCN" checked="checked"/>
      <strong><?php echo $get_product['product_name'];?></strong></td>
  </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked"/>
      Up to 250 Users  -- $<?php echo $get_product['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
Up to 500 Users -- $<?php echo $get_product['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500 or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request A Quote</a></td>
  </tr>
 <?php }else if($_GET['id']==4){  ?>
  <tr>
    <td colspan="2"><input type="radio" name="product" id="product" value="SIC" checked="checked"/>
      <strong><?php echo $get_product['product_name'];?></strong></td>
  </tr>
  <tr>
    <td><label>Number of Users</label></td>
    <td><input type="radio" name="noofusers" id="noofusers" value="250" checked="checked"/>
      Up to 250 Users  -- $<?php echo $get_product['price_250users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="radio" name="noofusers" id="noofusers" value="500" />
Up to 500 Users -- $<?php echo $get_product['price_500users'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>500 or more Users <a href="buyitnow.php" target="_blank" style="text-decoration:underline;">Request
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
</form>
<script language="javascript">
function CartVal()
{
	if(document.cartitemsfrm.numberof_domains.value=='')
	{
		alert("Please enter Number of Domains");
		document.cartitemsfrm.numberof_domains.focus();
		return false;
	}
	if(document.cartitemsfrm.numberof_computers.value=='')
	{
		alert("Please enter Numer of Computers");
		document.cartitemsfrm.numberof_computers.focus();
		return false;
	}
}
function ProVal(ptype)
{
	if(ptype=='adm')
	{
		document.cartitemsfrm.noofusers[0].checked = true;			
	}
	if(ptype=='pro')
	{
		document.cartitemsfrm.noofusers[2].checked = true;		
	}
}
</script>