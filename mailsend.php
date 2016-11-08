<?php
			

// Your subject
//$subject="Your confirmation link here";

// From
//$header="from: your name <your email>";
//
//// Your message
//$message="Your Comfirmation link \r\n";
//$message.="Click on this link to activate your account \r\n";
//$message.="http://www.d-designsdepot.freewebhosting247.com/sample/confirmation.php?passkey=$confirm_code";
//
//// send email
//$sentmail = mail($to,$subject,$message,$header);
//if(isset($_POST['down']) && $_POST['down']=="Submit")
//		{
			
			$subject = "cion Download link";
			// From
			$headers='from:webmaster@cionsystems.com'."\r\n";
			
			$to = 'patideepchand@gmail.com';
			
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			
			// Additional headers
			$headers .= 'To: <'.$to.'>'."\r\n";
			
			$message="Your Comfirmation link \r\n";
			$message.="Click on this link to activate your account \r\n";
			//$message.="<a href='http://d-designsdepot.freewebhosting247.com/traildownload/download.php?f=ActiveDirectoryManager_Trial.msi'>CLICK HERE</a>";
			$message.='<a href="http://cionsystems.com/down.php?f=ActiveDirectoryManager_Trial.msi"><img src="http://www.cionsystems.com/images/trial_download.gif" alt="Download Free Trial" border="0" /></a>';
			if(@mail($to,$subject,$message,$headers))
			//if(@mysql_num_rows($res_product)>0)
			{
				echo "A mail has been sent to you mail address";
//				header("Location: products_thankyou.php");
				exit(0);
			}
	//	}	

?>