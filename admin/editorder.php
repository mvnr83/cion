<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($_POST[act] == 'edit')
{
	if($_POST[status] == 'Completed')
	{
		$sql_ord = "select * from order_request where order_code = '".$uid."'";
		$res_ord = @mysql_query($sql_ord);
		$row_ord = @mysql_fetch_assoc($res_ord);
		$sql_emps = "select * from partners_emps where emp_id = '".$row_ord[emp_id]."'";
		$res_emps = @mysql_query($sql_emps);
		$row_emps = @mysql_fetch_assoc($res_emps);
		$sql_prd = "select * from product_details where id = '".$row_ord[product_id]."'";
		$res_prd = @mysql_query($sql_prd)or die(mysql_error());
		//$row_prd = @mysql_fetch_assoc($res_prd);
		//$org_code = md5($row_email[first_name]."-".$row_email[last_name]."-original");
		$subject = "Download link for CionSystems".$row_prds[product_name]." !";
	$message='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
		<table width="100%" border="0" cellspacing="5" cellpadding="0">
		<tr>
    <td align="center"><strong>Order For Products Apporved</strong></td>
  </tr>
  <tr>
    <td><strong>Order Code</strong> :'.$uid.'</td>
  </tr>
  <tr>
    <td align="left">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><table width="70%" border="0" cellspacing="5" cellpadding="0">
      <tr>
        <td height="30" colspan="2" bgcolor="#d4ddec" style="padding-left:10px;"><strong>Product Details</strong></td>
      </tr>
      <tr>
        <td width="70%" align="center" bgcolor="#e8e8e8">Product</td>
        <td height="25" align="center" bgcolor="#e8e8e8">No.of License</td>
      </tr>';
      while($row_prd = @mysql_fetch_assoc($res_prd))
      {
  $message.='<tr>
    <td align="left" style="padding-left:5px;">'.$row_prd[product_name].'</td>
    <td align="center"><strong>'.$row_ord[no_of_license].'</strong></td>
  </tr>';
      }
    $message.='</table></td>
  </tr>
</table>
</body>
</html>';
	
		$from = "webmaster@cionsystems.com";
		$to = $row_emps[email];
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		
		// Additional headers
		$headers .= 'To: webmaster<'.$to.'>'."\r\n";
		$headers .= 'From: '.$from. "\r\n";
		//$headers .= 'Bcc: patideepchand@gmail.com'."\r\n";
		@mail($to,$subject,$message,$headers);
		//if($res_prd){
//			echo $message;
//			echo $row_emps[email];
//		}
	}//$_POST[status]
	$sql_up = "update order_request set status = '".$_POST[status]."' where order_code = '".$uid."'";
	$res_up = @mysql_query($sql_up);
	if($res_up)
		$msg = "Order Details Updated Successfully";
}//$_POST[act]
if($uid!='')
{
$order = array();
$ship_add = array();
$pro_name = array();
$sql = "select * from shipping_address where Req_OC = '".$uid."'"  ;
$res = @mysql_query($sql);
while($row = @mysql_fetch_assoc($res))
{
	array_push($ship_add,$row);
	$sql_ship = "select * from order_request where order_code='".$uid."'";
	$res_ship = @mysql_query($sql_ship);
	while($row_ship = @mysql_fetch_assoc($res_ship))
	{
	array_push($order,$row_ship);
	$sql_pro = "select * from product_details where id='".$row_ship[product_id]."'";
	$res_pro = @mysql_query($sql_pro);
	while($row_pro = @mysql_fetch_assoc($res_pro)){
		array_push($pro_name,$row_pro);	
	}
	
	}
	
}

$smarty->assign("order",$order);
$smarty->assign("shipadd",$ship_add );
$smarty->assign("proname",$pro_name );
}
$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);

$content=$smarty->fetch("partnerportal/editorder.tpl");

$smarty->assign("content",$content);

$smarty->display("partnerportal/index.tpl");

?>