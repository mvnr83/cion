<?php 
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$getorder = mysql_query("select * from orders where md5(order_id) = '".$_GET['oid']."' ") or die(mysql_error());

if(mysql_num_rows($getorder)==1)
{
	$userinfo = mysql_fetch_array($getorder);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cionsystems Payments</title>
</head>
<body>
<form name="form_checkout" id="form_checkout" method="post" action="https://www.paypal.com/cgi-bin/webscr">
<!--<form name="form_checkout" id="form_checkout" method="post" action="https://www.sandbox.paypal.com/cgi-bin/webscr">-->
	<input type="hidden" name="cmd" value="_xclick">
	 <input type="hidden" name="business" value="cion_systems@yahoo.com">
   <!--<input type="hidden" name="business" value="siteadminlogin@gemail.com">-->
	<input type="hidden" name="item_name" value="Cionsystems Products">
	<input type="hidden" name="item_number" value="<?php echo $userinfo['order_id'];?>">
	<input type="hidden" name="currency_code" value="USD" />
	<input type="hidden" name="lc" value="US" />
	<input type="hidden" name="no_shipping" value="0" />
	<input type="hidden" name="no_note" value="1" />
	<input type="hidden" name="bn" value="PP-BuyNowBF" />
	<input type="hidden" name="amount" value="<?php echo $userinfo['amount'];?>" />
	<input type="hidden" name="first_name" value="<?php echo $userinfo['billing_name'];?>" />
	<input type="hidden" name="last_name" value="" />
	<input type="hidden" name="address1" value="<?php echo $userinfo['billing_address1'];?>" />
	<input type="hidden" name="address2" value="<?php echo $userinfo['billing_address2'];?>" />
	<input type="hidden" name="city" value="<?php echo $userinfo['billing_city'];?>" />
	<input type="hidden" name="country" value="<?php echo $userinfo['billing_country'];?>" />
	<input type="hidden" name="state" value="<?php echo $userinfo['billing_state'];?>" />
	<input type="hidden" name="zip" value="<?php echo $userinfo['billing_postalcode'];?>" />
	<input type="hidden" name="email" value="<?php echo $userinfo['billing_email'];?>" />
	<input type="hidden" name="return" value="http://www.cionsystems.com/paymentsuccess.php" />
	<input type="hidden" name="cancel_return" value="http://www.cionsystems.com/paymentcancel.php" />	
    <input type="hidden" name="notify_url" value="http://www.cionsystems.com/pay_notify.php?oid=<?php echo $_GET['oid'];?>" />	
	<input type="hidden" name="no_shipping" value="1" />
	<input type="hidden" name="invoice" value="" />	
</form>
<script language="javascript">
document.form_checkout.submit();
</script>
</body>
</html>
<?php }?>