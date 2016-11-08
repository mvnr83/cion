<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
//include("includes/login_check.php");

$from = "mohammed_firasath@yahoo.com";
$to = "zubair@cionsystems.com";
$subject = "Hi!";
$body = "Hi,\n\nHow are you?";

$host = "plus.smtp.mail.yahoo.com";
$username = "mohammed_firasath@yahoo.com";
$password = "hussain@123";

$headers = array ('From' => $from,
'To' => $to,
'Subject' => $subject);
$smtp = Mail::factory('smtp',
  array ('host' => $host,
    'auth' => true,
    'username' => $username,
    'password' => $password));

$mail = $smtp->send($to, $headers, $body);

if (PEAR::isError($mail)) {
  echo("<p>" . $mail->getMessage() . "</p>");
} else {
  echo("<p>Message successfully sent!</p>");
}
?>