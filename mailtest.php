<?php
  $message = "PHP is working";
  if(mail('webmaster@cionsystems.com', 'Test Email', $message)) {
     echo 'It worked! Email will arrive shortly.';
  }
  else {
     echo 'Error! Email not sent';
  }
?>