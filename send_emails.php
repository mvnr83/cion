<?php
$userInfoQ = mysql_query("SELECT * FROM users WHERE id = '".$_SESSION['id']."'");
while($res = mysql_fetch_assoc($userInfoQ)){
    $userInfo = $res;
}
$user_lName = $_SESSION['lname'];
if($pay_success == 'yes'){
    $subject = "Cionsystems - Payment success";
    $message = '<html><body>			
    <table width="100%" border="0" cellspacing="3" cellpadding="2">
    <tr><td >Hi '.$userInfo['first_name'].' '.$userInfo['last_name'].'</td></tr>
    <tr><td >&nbsp;</td></tr>
    <tr><td >Your payment of $'.str_replace('$','',$_POST['cart_amount']).' to Cionsystems is successful</td></tr>
        <tr><td ><a href="http://dev.cionsystems.com/'.$pdfPath.'">Click Here</a> to view/download invoice</td></tr>
    <tr><td >You will receive a seperate email with the download links to each product you purchase</td></tr>
    <tr><td >&nbsp;</td></tr>
    <tr><td>Thanks,</td></tr>

    <tr><td>Cionsystems</td></tr>
    <tr><td>www.cionsystems.com</td></tr>
    </table>
    </body>
    </html>';
    $from = "webmaster@cionsystems.com";
    $to = $userInfo['email'];
    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

     //Additional headers
    //$headers .= 'To: '.$to."\r\n";
    $headers .= 'From: '.$from. "\r\n";
    @mail($to,$subject,$message,$headers);
}

if($pay_failed == 'yes'){
    $subject = "Cionsystems - Payment failed";
    $message = '<html><body>			
    <table width="100%" border="0" cellspacing="3" cellpadding="2">
    <tr><td >Hi '.$userInfo['first_name'].' '.$userInfo['last_name'].'</td></tr>
    <tr><td >&nbsp;</td></tr>
    <tr><td >Your payment of $'.str_replace('$','',$_POST['cart_amount']).' to Cionsystems is failed</td></tr>
    
    <tr><td >&nbsp;</td></tr>
    <tr><td>Thanks,</td></tr>

    <tr><td>Cionsystems</td></tr>
    <tr><td>www.cionsystems.com</td></tr>
    </table>
    </body>
    </html>';
    $from = "webmaster@cionsystems.com";
    $to = $userInfo['email'];
    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

     //Additional headers
    //$headers .= 'To: '.$to."\r\n";
    $headers .= 'From: '.$from. "\r\n";
    @mail($to,$subject,$message,$headers);
}

if($send_downloadlink == 'yes'){
    
    
    
    if(isset($_SESSION['cart_info']) && count($_SESSION['cart_info']) > 0){
     
        $linksContent = '';
    
        foreach($_SESSION['cart_info'] as $k => $v){
            $pInfo = array();
            $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN product_details pd ON pd.id = sp.product_id  WHERE sp.sub_id = '".$k."'");
            while($res = mysql_fetch_assoc($sql)){
                $resT = $res;
                $inner_sql = mysql_query("SELECT * FROM orders_info WHERE order_id = '".$insId."' AND sub_id = '".$k."'");
                while($inner_res = mysql_fetch_assoc($inner_sql)){
                    $resT['link_string'] = $inner_res['link_string'];
                    $resT['orderinfo_id'] = $inner_res['id'];
                }
                $linksContent .= '<tr><td><strong>'.$res['product_name'].'</strong>&nbsp;('.$res['plan_name'].')</td><td><a href="http://dev.cionsystems.com/downloadfullproduct.php?dlkey='.$resT['link_string'].'">Click to download</a></td></tr>';
            }
            
            if(count($v) > 0){
                foreach($v as $key => $val){
                    $sql = mysql_query("SELECT * FROM subscription_plans sp INNER JOIN subscription_addon sa ON sp.addon_id = sa.addon_id WHERE sp.sub_id = '".$val."'");
                    while($res = mysql_fetch_assoc($sql)){
                        $resT = $res;
                        $inner_sql = mysql_query("SELECT * FROM orders_info WHERE order_id = '".$insId."' AND sub_id = '".$val."'");
                        while($inner_res = mysql_fetch_assoc($inner_sql)){
                            $resT['link_string'] = $inner_res['link_string'];
                            $resT['orderinfo_id'] = $inner_res['id'];
                        }
                        $linksContent .= '<tr><td><strong>'.$resT['addon_name'].'</strong>&nbsp;('.$res['plan_name'].')</td><td><a href="http://dev.cionsystems.com/downloadfullproduct.php?dlkey='.$resT['link_string'].'">Click to download</a></td></tr>';
                    }
                }
            }
        }
        
        
        $subject = "Cionsystems - Product download links";
        $message = '<html><body>			
        <table width="100%" border="0" cellspacing="3" cellpadding="2">
        <tr><td colspan="2">Hi '.$userInfo['first_name'].' '.$userInfo['last_name'].'</td></tr>
        <tr><td colspan="2">&nbsp;</td></tr>
        <tr><td colspan="2">Below are the download links of your pruchased products</td></tr>
        <tr><td colspan="2">These links will expire in 24 hours</td></tr>
        
        <tr><td colspan="2">&nbsp;</td></tr>
        '.$linksContent.'
        <tr><td colspan="2">&nbsp;</td></tr>
        <tr><td colspan="2">Thanks,</td></tr>

        <tr><td colspan="2">Cionsystems</td></tr>
        <tr><td colspan="2">www.cionsystems.com</td></tr>
        </table>
        </body>
        </html>';
        $from = "webmaster@cionsystems.com";
        $to = $userInfo['email'];
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

         //Additional headers
        //$headers .= 'To: '.$to."\r\n";
        $headers .= 'From: '.$from. "\r\n";
        $headers .= "Bcc: info@cionsystems.com\r\n";
        mail($to,$subject,$message,$headers);
        
        
        
    }
    
    
}




?>