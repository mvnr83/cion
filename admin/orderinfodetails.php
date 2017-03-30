<?php
include("includes/application_start.php");
include("includes/checksession.php");
$item_number = $_GET['uid'];
$productinfo = mysql_query("select * from order_items where order_id='".$item_number."'");

$productinfo = mysql_query("SELECT oi.*,o.payment_date,o.amount,o.payment_trans_id FROM orders_info oi 
         INNER JOIN orders o ON o.order_id = oi.order_id 
         
         WHERE o.order_id = '".$item_number."' ");


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
						<!-- <th style="width:20%; padding: 0.6em 0;">Total price</th> -->
					</tr>';
		if(mysql_num_rows($productinfo)!=0)
		{
				$totalammount = 0;
                                $transId = '';
			while($res=mysql_fetch_assoc($productinfo))
			{
                            $totalammount = $res['amount'];
                            $transId = $res['payment_trans_id'];
                            $aqry = "SELECT * FROM subscription_plans p INNER JOIN product_details pd ON pd.id = p.product_id WHERE p.sub_id = '".$res['sub_id']."' ORDER BY p.addon_id ASC";
                            $asql = mysql_query($aqry);
                            while($ares = mysql_fetch_assoc($asql)){
                                $res['subplans'] = $ares;
                                $message_admin .='<tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;'.$ares['product_name'].'</td>
             <td align="center" valign="middle">'.$ares['plan_name'].'</td>                    
                    <td align="center" valign="middle">'.$ares['price'].'</td>
					 <!-- <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td> -->
                    </tr>';
                                if($ares['addon_id'] != 0){
                                    $bqry = "SELECT * FROM subscription_addon p  WHERE p.addon_id = '".$ares['addon_id']."'";
                                    $bsql = mysql_query($bqry);
                                    while($bres = mysql_fetch_assoc($bsql)){
                                        $message_admin .='<tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;'.$bres['product_name'].'</td>
             <td align="center" valign="middle">'.$bres['plan_name'].'</td>                    
                    <td align="center" valign="middle">'.$bres['price'].'</td>
					 <!-- <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td> -->
                    </tr>';
                                        $res['addons'] = $bres;
                                    }
                                }
                            }
                            
                            
//				$res_product = mysql_query("select * from product_details where id=".$fetch_items['product_id']) or die(mysql_error());
//				$fetch = mysql_fetch_assoc($res_product);
//				$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$fetch_items['product_id']));
//				$product=str_replace(' ','+',$get_product['product_name']);
				
				
//		$message_admin .='<tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;'.$get_product['product_name'].'</td>
//             <td align="center" valign="middle">'.$fetch_items['product_no_users'].'</td>                    
//                    <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
//					 <td align="center" valign="middle">$'.$fetch_items['product_price'].'</td>
//                    </tr>';
					
					//$totalammount = $totalammount + $res['product_price'];
						
			}
                        
                        $message_admin .= '<tr style="text-align:right; font-weight:bold;">
						<td>&nbsp;</td>
						<td style="background-color:#F1AECF; padding:0.6em 0.4em;">Total Ammount</td>
						<td style="background-color:#F1AECF; padding:0.6em 0.4em;">$'.($totalammount).'</td>
					</tr>';
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
//			$message_admin .= '<tr style="text-align:right;">
//						<td>&nbsp;</td>
//						<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Tax</td>
//						<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($tax, 2, '.', '').'</td>
//					</tr>
//						<tr style="text-align:right;">
//						<td>&nbsp;</td>
//						<td colspan="2" style="background-color:#DDE2E6; padding:0.6em 0.4em;">Shipping</td>
//						<td style="background-color:#DDE2E6; padding:0.6em 0.4em;">$'.number_format($shipping, 2, '.', '').'</td>
//					</tr>
//					<tr style="text-align:right; font-weight:bold;">
//						<td>&nbsp;</td>
//						<td colspan="2" style="background-color:#F1AECF; padding:0.6em 0.4em;">Total Ammount</td>
//						<td style="background-color:#F1AECF; padding:0.6em 0.4em;">$'.($totalammount+$shipping+$tax).'</td>
//					</tr>';
					
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
		$message_admin .=	'
  <tr>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td align=center><a href="JavaScript:window.print();">Print</a>';
                if($transId != '' && file_exists('../invoicepdfs/'.$transId.'.pdf')){
                    $message_admin .= ' | <a href="http://dev.cionsystems.com/invoicepdfs/'.$transId.'.pdf" target="_blank">Invoice</a>';
                }
               $message_admin .= ' </td>
  </tr>
</table>
</body>
</html>';
echo $message_admin;
?>
