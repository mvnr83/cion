<?php
// read the post from PayPal system and add 'cmd'
$req = 'cmd=_notify-validate';

foreach ($_POST as $key => $value) {
$value = urlencode(stripslashes($value));
$req .= "&$key=$value";
}

// post back to PayPal system to validate
$header .= "POST /cgi-bin/webscr HTTP/1.0\r\n";
$header .= "Content-Type: application/x-www-form-urlencoded\r\n";
$header .= "Content-Length: " . strlen($req) . "\r\n\r\n";
$fp = fsockopen ('ssl://www.paypal.com', 443, $errno, $errstr, 30);
//$fp = fsockopen ('ssl://www.sandbox.paypal.com', 443, $errno, $errstr, 30);
// assign posted variables to local variables
$item_name = $_POST['item_name'];
$item_number = $_POST['item_number'];
$payment_status = $_POST['payment_status'];
$payment_amount = $_POST['mc_gross'];
$payment_currency = $_POST['mc_currency'];
$txn_id = $_POST['txn_id'];
$receiver_email = $_POST['receiver_email'];
$payer_email = $_POST['payer_email'];

if (!$fp) {
// HTTP ERROR
} else {
fputs ($fp, $header . $req);
while (!feof($fp)) {
$res = fgets ($fp, 1024);
if (strcmp ($res, "VERIFIED") == 0) {
// check the payment_status is Completed
// check that txn_id has not been previously processed
// check that receiver_email is your Primary PayPal email
// check that payment_amount/payment_currency are correct
// process payment
mysql_connect("mysql","root","Chakri73");
mysql_select_db("cionsystems");
$update_order = mysql_query("update orders set transaction_pending='Completed',transaction_id='".$txn_id."' where order_id='".$item_number."' ");
$update_products = mysql_query("update order_items set product_download_status='1' where order_id='".$item_number."' ");

			// Product Download Mail
			$productinfo = mysql_query("select * from order_items where order_id='".$item_number."'");	
			$orderinfo = mysql_fetch_array(mysql_query("select * from orders where order_id ='".$item_number."'"));
			
			$key = uniqid(md5(rand()));
			$registerid = mysql_query("INSERT INTO downloadkey (uniqueid) VALUES(\"$key\")") or die(mysql_error());
			
			// Customer Mail Start
			
			// First mail
			
			$subject = "Payment success confirmation for CionSystems Products";
			$message = '<html>
						<head>
				</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #006699;">
  <tr>
    <td  bgcolor="#f5f5f5"><img src="http://www.cionsystems.com/images/clogo.gif" width="51" height="53" style="float:left" />
	<div style="color:#545454;font:normal 24px Arial, Helvetica, sans-serif;float:left;padding:15px 0px 0px 10px;">Cion<span style="color:#0a659a">Systems</span></div><sup style="font:normal 8px Arial, Helvetica, sans-serif;vertical-align:top;float:left;padding-top:15px;">TM</sup></td>
  </tr>
  <tr>
    <td height="27" style="padding:10px;">Dear '.ucfirst($orderinfo['billing_name']).'</td>
  </tr>
  <tr>
    <td height="86" style="padding:10px;"><p>Thank you for purchasing the CionSystems Products. To download the product(s) please click on the  \'Download\' button.</p></td>
  </tr>
  ';
  		if(mysql_num_rows($productinfo)!=0)
		{
			while($fetch_items=mysql_fetch_assoc($productinfo))
			{
				$res_product = mysql_query("select * from product_details where id=".$fetch_items['product_id']) or die(mysql_error());
				$fetch = mysql_fetch_assoc($res_product);
				$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$fetch_items['product_id']));
				
				$product=str_replace(' ','+',$get_product['product_name']);
				
				
			if($fetch['product_code'] == "adm"){
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the application, please click on the following link:</td>
				 </tr>
			<tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADM_Installation_Guide.pdf"><img src="http://www.cionsystems.com/images/install_guide.gif" alt="Installation Guide" border="0" /></a></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			}
			else if($fetch[product_code] == "adr")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADR_Quick_Start_v1.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
			
			<tr>
				<td style="padding:10px;">See the video for installation process of the '.$get_product['product_name'].' :<br />
				<a href="http://www.cionsystems.com/production/adreporter/adreporter.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>
			</tr>
			 <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			}
			else if($fetch[product_code] == "cim")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/CMT_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			}
			else if($fetch[product_code] == "bpos")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="#"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
	
			';
			}
			else if($fetch[product_code] == "adcn")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADCN_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
			
			<tr>
				<td style="padding:10px;">See the video for installation process of the '.$get_product['product_name'].':<br />
				<a href="http://www.cionsystems.com/production/adcn/adcn.htm"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			
			}
			else if($fetch[product_code] == "ads")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADS_Quick_Start.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
			
			<tr>
				<td style="padding:10px;">See the video for installation process of the '.$get_product['product_name'].':<br />
				<a href="http://www.cionsystems.com/production/adself/adselfservice.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			}
			else if($fetch[product_code] == "admpro")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADManagerPro_QuickStartGuide.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
			
			<tr>
				<td style="padding:10px;">See the video for installation process of the '.$get_product['product_name'].':<br />
				<a href="http://www.cionsystems.com/production/admpro/admpro.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>
			</tr> <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
			}
				
			else if($fetch[product_code] == "adrcy")
			{
			$message .=		
			'<tr>
				<td style="padding:10px;"><h3>'.$get_product['product_name'].'</h3></td>
			</tr> <tr>
				<td style="padding:10px;">Please review the requirements and our Quick Start guide, before installing the '.$get_product['product_name'].' application:<br />
				<a href="http://www.cionsystems.com/trial/ADRecoveryQuickStartGuide.pdf"><img src="http://www.cionsystems.com/images/quickstart.gif" alt="Quick Start Guide" border="0" /></a></td>
			</tr>
			<tr>
				<td style="padding:10px;">See the video for installation process of the '.$get_product['product_name'].':<br />
				<a href="http://www.cionsystems.com/production/adrecovery/adrecovery.html"><img src="http://www.cionsystems.com/images/video.gif" alt="video" border="0" /></a></td>
			</tr>
			 <tr>
					<td height="42" style="padding:10px;">To download the '.$get_product['product_name'].' application, please click on the following link:</td>
				 </tr>
			  <tr>
				<td height="45" style="padding:10px;"><a href="http://www.cionsystems.com/productdownload.php?order='.md5($item_number).'"><img src="http://www.cionsystems.com/images/download.gif" alt="Download" border="0" /></a></td>
			  </tr>';
				

			}

			}
		}
		
		$message .=	
			'<tr>
    <td style="padding:10px;"><p>Email:</p>
    <p>support@cionsystems.com for any technical support <br/>
	   sales@cionsystems.com for any download issues. <br/></p>
	   
    <p>Sincerely,<br />
    The CionSystems Team</p></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>';
			$from = "webmaster@cionsystems.com";
			$to = $orderinfo['billing_email'];
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			// Additional headers
			$headers .= 'To: '.$orderinfo['billing_name'].'<'.$to.'>'."\r\n";
			$headers .= 'From: '.$from. "\r\n";
			$headers .= 'Bcc: sales@cionsystems.com'."\r\n";
			$sendmail = @mail($to,$subject,$message,$headers);
			
			// Secon Mail	
$productinfo = mysql_query("select * from order_items where order_id='".$item_number."'");	
$orderinfo = mysql_fetch_array(mysql_query("select * from orders where order_id ='".$item_number."'"));

$subject_admin = "New Order Confirmation CionSystems";
$message_admin = '<html><head></head>
			<body>			
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #006699;">
			  <tr>
				<td  bgcolor="#f5f5f5"><img src="http://www.cionsystems.com/images/clogo.gif" width="51" height="53" style="float:left" />
				<div style="color:#545454;font:normal 24px Arial, Helvetica, sans-serif;float:left;padding:15px 0px 0px 10px;">Cion<span style="color:#0a659a">Systems</span></div><sup style="font:normal 8px Arial, Helvetica, sans-serif;vertical-align:top;float:left;padding-top:15px;">TM</sup></td>
			  </tr>
			 
			 <tr>
						<td align="left" style="font-size: 12px; font-weight:bold; padding: 0.5em 1em;padding:10px;">Order Details</td>
					</tr>
			<tr>
			<td align="left" style="padding:10px;">
				Order: <strong><span style="color:#DB3484;">'.$orderinfo['billing_company'].'</span> placed on '.$orderinfo['payment_date'].'</strong>
				<br >Payment: <strong>'.$orderinfo['transaction_pending'].'</strong>
			</td>
		</tr>
		<tr><td>
<tr>
<td align="left">
	<table style="width:100%; font-family:Verdana,sans-serif; font-size:11px; color:#374953;">					
		<tr style="background-color:#B9BABE; text-align:center;">
			<th style="width:35%; padding: 0.6em 0;">Products</th>
			<th style="width:10%; padding: 0.6em 0;">Number of Users</th>
			<th style="width:15%; padding: 0.6em 0;">Price</th>						
			<th style="width:20%; padding: 0.6em 0;">Total price</th>
		</tr>';
if(mysql_num_rows($productinfo)!=0)
{
	$totalammount = 0;
while($fetch_items=mysql_fetch_assoc($productinfo))
{
	$res_product = mysql_query("select * from product_details where id=".$fetch_items['product_id']) or die(mysql_error());
	$fetch = mysql_fetch_assoc($res_product);
	$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$fetch_items['product_id']));
	$product=str_replace(' ','+',$get_product['product_name']);
	
	
$message_admin .='<tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;'.$get_product['product_name'].'</td>
 <td align="center" valign="middle">'.$fetch_items['product_no_users'].'</td>                    
		<td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
		 <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
		</tr>';
		
		$totalammount = $totalammount + $fetch_items['product_price'];
			
}
	if(isset($orderinfo['shipping_cd']) && ($orderinfo['shipping_cd']=='on'))
	{
		
		if($orderinfo['ship_country']=='US')
		{
			$shipping = '20';
		}else
		{
			$shipping = '40';	
		}
	}else
	{
		$shipping = '0';
	}
	
		if($orderinfo['billing_state']=='Washington'){
			$tax = number_format(($totalammount*(9.5/100)), 2, '.', '');
		}else
		{
			$tax = '0';
		}
$message_admin .= '<tr style="text-align:right;">
			<td>&nbsp;</td>
			<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Tax</td>
			<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($tax, 2, '.', '').'</td>
		</tr>
			<tr style="text-align:right;">
			<td>&nbsp;</td>
			<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Shipping</td>
			<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($shipping, 2, '.', '').'</td>
		</tr>
		<tr style="text-align:right; font-weight:bold;">
			<td>&nbsp;</td>
			<td colspan="2" style="background-color:#F1AECF; padding:0.6em 0.4em;">Total Ammount</td>
			<td style="background-color:#F1AECF; padding:0.6em 0.4em;">$'.($totalammount+$shipping+$tax).'</td>
		</tr>';
		
}
$countryname = mysql_fetch_array(mysql_query("select * from country where iso='".$orderinfo['billing_country']."'"));
if(!empty($orderinfo['ship_country']))
{
$countryname_shipinng = mysql_fetch_array(mysql_query("select * from country where iso='".$orderinfo['ship_country']."'"));
$countryname_ship = $countryname_shipinng['name'];
}else
{
$countryname_ship ='';	
}
		$message_admin .= '
	</table>
</td>
</tr>
<tr><td><table style="width:100%; font-family:Verdana,sans-serif; font-size:11px; color:#374953;">
		<tr style="background-color:#B9BABE; text-transform:uppercase;">
			<th style="text-align:left; padding: 0.3em 1em;">Billing address</th>
			<th style="text-align:left; padding: 0.3em 1em;">Delivery address</th>
		</tr>
		<tr>
			<td style="padding:0.5em 0 0.5em 0.5em; background-color:#EBECEE;">							
				<br><span style="color:#DB3484; font-weight:bold;">'.$orderinfo['billing_name'].'</span>
				<br>'.$orderinfo['billing_company'].',
				<br>'.$orderinfo['billing_jobtitle'].',
				<br>'.$orderinfo['billing_industry'].',
				<br>'.$orderinfo['billing_address1'].',';
				if(!empty($orderinfo['billing_address2'])) $message_admin .= '<br>'.$orderinfo['billing_address2'].',';
				$message_admin .= '<br>'.$orderinfo['billing_city'].' '.$orderinfo['billing_state'].', 
				<br>'.ucfirst(strtolower($countryname['name'])).' '.$orderinfo['billing_postalcode'].'
				<br>Email ID : '.$orderinfo['billing_email'].'
				<br>Phone Number : '.$orderinfo['billing_phone'].'
				
			</td>
			<td style="padding:0.5em 0 0.5em 0.5em; background-color:#EBECEE;">';
				if(!empty($orderinfo['ship_name'])) $message_admin .=	'<br><span style="color:#DB3484; font-weight:bold;">'.$orderinfo['ship_name'].'</span>';
				if(!empty($orderinfo['ship_company'])) $message_admin .=	'<br>'.$orderinfo['ship_company'].',';
				if(!empty($orderinfo['ship_address1'])) $message_admin .=	'<br>'.$orderinfo['ship_address1'].',';
				if(!empty($orderinfo['ship_address2'])) $message_admin .=	'<br>'.$orderinfo['ship_address2'].',';
				if(!empty($orderinfo['ship_city'])) $message_admin .=	'<br>'.$orderinfo['ship_city'].' '.$orderinfo['ship_state'].',';
				if(!empty($orderinfo['ship_pincode'])) $message_admin .=	'<br>'.ucfirst(strtolower($countryname_ship)).' '.$orderinfo['ship_pincode'];
				
			$message_admin .= '</td>
		</tr>
	</table></td></tr>
</td></tr>';
$message_admin .=	'<tr>
    <td style="padding:10px;"><p>Email:</p>
    <p>support@cionsystems.com for any technical support <br/>
	   sales@cionsystems.com for any download issues. <br/></p>
	   
    <p>Sincerely,<br />
    The CionSystems Team</p></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>';
$subject = 'Payment/Invoice Report  - Cionsystems.com';
$from = "webmaster@cionsystems.com";
$to = $orderinfo['billing_email'];
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
// Additional headers
$headers .= 'To: '.$orderinfo['billing_name'].'<'.$to.'>'."\r\n";
$headers .= 'From: '.$from. "\r\n";
$headers .= 'Bcc: sales@cionsystems.com'."\r\n";
$sendmail = @mail($to,$subject,$message_admin,$headers);
			
			// Customer Mail End
						
			$productinfo = mysql_query("select * from order_items where order_id='".$item_number."'");	
			$orderinfo = mysql_fetch_array(mysql_query("select * from orders where order_id ='".$item_number."'"));
			
			$subject_admin = "New Order Confirmation CionSystems";
			$message_admin = '<html><head></head>
						<body>			
						<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #006699;">
						  <tr>
							<td  bgcolor="#f5f5f5"><img src="http://www.cionsystems.com/images/clogo.gif" width="51" height="53" style="float:left" />
							<div style="color:#545454;font:normal 24px Arial, Helvetica, sans-serif;float:left;padding:15px 0px 0px 10px;">Cion<span style="color:#0a659a">Systems</span></div><sup style="font:normal 8px Arial, Helvetica, sans-serif;vertical-align:top;float:left;padding-top:15px;">TM</sup></td>
						  </tr>
						  <tr>
							<td height="27" style="padding:10px;">Dear Admin</td>
						  </tr>
						 <tr>
									<td align="left" style="font-size: 12px; font-weight:bold; padding: 0.5em 1em;">Order Details</td>
								</tr>
						<tr>
						<td align="left">
							Order: <strong><span style="color:#DB3484;">'.$orderinfo['billing_company'].'</span> placed on '.$orderinfo['payment_date'].'</strong>
							<br >Payment: <strong>'.$orderinfo['transaction_pending'].'</strong>
						</td>
					</tr>
					<tr><td>
			<tr>
			<td align="left">
				<table style="width:100%; font-family:Verdana,sans-serif; font-size:11px; color:#374953;">					
					<tr style="background-color:#B9BABE; text-align:center;">
						<th style="width:15%; padding: 0.6em 0;">Products</th>
						<th style="width:35%; padding: 0.6em 0;">Number of Users</th>
						<th style="width:15%; padding: 0.6em 0;">Price</th>						
						<th style="width:20%; padding: 0.6em 0;">Total price</th>
					</tr>';
		if(mysql_num_rows($productinfo)!=0)
		{
				$totalammount = 0;
			while($fetch_items=mysql_fetch_assoc($productinfo))
			{
				$res_product = mysql_query("select * from product_details where id=".$fetch_items['product_id']) or die(mysql_error());
				$fetch = mysql_fetch_assoc($res_product);
				$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$fetch_items['product_id']));
				$product=str_replace(' ','+',$get_product['product_name']);
				
				
		$message_admin .='<tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;'.$get_product['product_name'].'</td>
             <td align="center" valign="middle">'.$fetch_items['product_no_users'].'</td>                    
                    <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
					 <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
                    </tr>';
					
					$totalammount = $totalammount + $fetch_items['product_price'];
						
			}
				if(isset($orderinfo['shipping_cd']) && ($orderinfo['shipping_cd']=='on'))
				{
					
					if($orderinfo['ship_country']=='US')
					{
						$shipping = '20';
					}else
					{
						$shipping = '40';	
					}
				}else
				{
					$shipping = '0';
				}
				
					if($orderinfo['billing_state']=='Washington'){
						$tax = number_format(($totalammount*(9.5/100)), 2, '.', '');
					}else
					{
						$tax = '0';
					}
			$message_admin .= '<tr style="text-align:right;">
						<td>&nbsp;</td>
						<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Tax</td>
						<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($tax, 2, '.', '').'</td>
					</tr>
						<tr style="text-align:right;">
						<td>&nbsp;</td>
						<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Shipping</td>
						<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($shipping, 2, '.', '').'</td>
					</tr>
					<tr style="text-align:right; font-weight:bold;">
						<td>&nbsp;</td>
						<td colspan="2" style="background-color:#F1AECF; padding:0.6em 0.4em;">Total Ammount</td>
						<td style="background-color:#F1AECF; padding:0.6em 0.4em;">$'.($totalammount+$shipping+$tax).'</td>
					</tr>';
					
		}
		$countryname = mysql_fetch_array(mysql_query("select * from country where iso='".$orderinfo['billing_country']."'"));
		if(!empty($orderinfo['ship_country']))
		{
		$countryname_shipinng = mysql_fetch_array(mysql_query("select * from country where iso='".$orderinfo['ship_country']."'"));
		$countryname_ship = $countryname_shipinng['name'];
		}else
		{
			$countryname_ship ='';	
		}
					$message_admin .= '
				</table>
			</td>
		</tr>
		<tr><td><table style="width:100%; font-family:Verdana,sans-serif; font-size:11px; color:#374953;">
					<tr style="background-color:#B9BABE; text-transform:uppercase;">
						<th style="text-align:left; padding: 0.3em 1em;">Billing address</th>
						<th style="text-align:left; padding: 0.3em 1em;">Delivery address</th>
					</tr>
					<tr>
						<td style="padding:0.5em 0 0.5em 0.5em; background-color:#EBECEE;">							
							<br><span style="color:#DB3484; font-weight:bold;">'.$orderinfo['billing_company'].'</span>
							<br>'.$orderinfo['billing_name'].',
							<br>'.$orderinfo['billing_jobtitle'].',
							<br>'.$orderinfo['billing_industry'].',
							<br>'.$orderinfo['billing_address1'].',
							<br>'.$orderinfo['billing_address2'].',
							<br>'.$orderinfo['billing_city'].' '.$orderinfo['billing_state'].', 
							<br>'.ucfirst(strtolower($countryname['name'])).' '.$orderinfo['billing_postalcode'].',
							
						</td>
						<td style="padding:0.5em 0 0.5em 0.5em; background-color:#EBECEE;">
							'.$orderinfo['ship_company'].'
							<br>'.$orderinfo['ship_name'].',							
							<br>'.$orderinfo['ship_address1'].',
							<br>'.$orderinfo['ship_address2'].',
							<br>'.$orderinfo['ship_city'].' '.$orderinfo['ship_state'].', 
							<br>'.ucfirst(strtolower($countryname_ship)).' '.$orderinfo['ship_pincode'].',
						</td>
					</tr>
				</table></td></tr>
		</td></tr>';
		$message_admin .=	'<tr>
    <td style="padding:10px;"><p>Send email to : '.$orderinfo['billing_email'].'<br/></p>
	   
    <p>Sincerely,<br />
    The CionSystems Team</p></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>';
			$from = "webmaster@cionsystems.com";
			$to = 'sales@cionsystems.com';
			//$to = 'chakri_vc@yahoo.co.in';
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			// Additional headers
			//$headers .= 'To: sales@cionsystems.com <Admin>'."\r\n";
			$headers .= 'From: '.$orderinfo['billing_email']. "\r\n";
			//$headers .= 'Bcc: sales@cionsystems.com'."\r\n";
			$sendmail = @mail($to,$subject_admin,$message_admin,$headers);
			
			
}
else if (strcmp ($res, "INVALID") == 0) {
// log for manual investigation
}
}
fclose ($fp);
}
?>
