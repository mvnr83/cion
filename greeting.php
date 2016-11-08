<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");

	$sql = "select user_name,id,first_name,last_name,email from users where user_name = '".$_SESSION['username']."' and status='Active'";
	$res = @mysql_query($sql);
	$row = @mysql_fetch_assoc($res);
	if(@mysql_num_rows($res)>0)
	{  
		$in = "UPDATE users SET last_login = now() WHERE id = {$row[id]}";
		$result = @mysql_query($in);	
		$_SESSION['username'] = $row[user_name];
		$_SESSION['id'] = $row[id];
		if($_SESSION['type']!="")
		{	
		header("Location: buynow.php");
		exit(0);
		}
/*		if($_SESSION['pcode']!="")
		{	
		header("Location:".$_SESSION['fullurl']);
		exit(0);
		}
*/			
			$key = uniqid(md5(rand()));
			$registerid = mysql_query("INSERT INTO downloadkey (uniqueid) VALUES(\"$key\")") or die(mysql_error());
			$res_product = mysql_query("select * from product_details where id=".$_GET['id']) or die(mysql_error());
			$get_product = mysql_fetch_array(mysql_query("select * from product_details where id=".$_GET['id']));
			
			$product=str_replace(' ','+',$get_product['product_name']);
			$fetch = mysql_fetch_assoc($res_product);
			$subject = "Seasons Greeting";
			$message = '<html>
						<head>
				</head>

<body>
<table width="60%" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #006699;">
  <tr>
    <td  bgcolor="#f5f5f5" align="center"><img src="http://www.cionsystems.com/images/greet12.jpg" style="float:left" />
    </td>
  </tr>
</table>
</body>
</html>';
			$from = "zeya.badar@cionsystems.com";
			$to = $row['email'];
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			// Additional headers
			$headers .= 'To: '.$row['first_name'].' '.$row['last_name'].'<'.$to.'>'."\r\n";
			$headers .= 'From: '.$from. "\r\n";
			//$headers .= 'Bcc: sales@cionsystems.com'."\r\n";
			$sendmail = @mail($to,$subject,$message,$headers);
			if($sendmail)
			{
				//echo $message;
				header("Location: products_thankyou.php");
				exit(0);
			}
			
		}

?>


