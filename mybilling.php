<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/login_check.php");

$parray = array();
$sql = mysql_query("SELECT * FROM orders WHERE user_id = '".$_SESSION['id']."' ORDER BY order_id DESC");
while($res = mysql_fetch_assoc($sql)){
    switch($res['transaction_pending']){
        case 'Completed':
            $res['transaction_pending'] = 'Success';
            break;
        case 'pending':
            $res['transaction_pending'] = 'In-Progress';
            break;
        case 'failed':
            $res['transaction_pending'] = 'Failed';
            break;
        case 'manually':
            $res['transaction_pending'] = 'Manual';
            break;
        default:
            $res['transaction_pending'] = 'N/A';
    }
    
    if(file_exists('invoicepdfs/'.$res['payment_trans_id'].'.pdf')){
        $res['invoice_link'] = '<a href="invoicepdfs/'.$res['payment_trans_id'].'.pdf" target="_blank">Invoice</a>';
    } else {
        $res['invoice_link'] = '&dash;';
    }
    
    $parray[] = $res;
}



//$smarty->assign("name",$name);
$smarty->assign("parray",$parray);
$smarty->assign("session_username",$_SESSION['username']);
//$smarty->assign("array",$array);
$content=$smarty->fetch("mybilling.tpl");
$smarty->assign("content",$content);
$smarty->display("empty.tpl");
?>