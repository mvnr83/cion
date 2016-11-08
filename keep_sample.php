<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form  name="form" method="post" action="mailsend.php">
  <table width="400" border="0" cellspacing="5" cellpadding="0">
    <tr>
      <td>Name</td>
      <td><input type="text" name="name" id="name" /></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="text" name="email" id="email" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="down" id="button" value="Submit" /></td>
    </tr>
  </table>
</form>
</body>
</html>

<?php

/**
 * @author deepchand
 * @copyright 2008
 */

echo "<a href='http://cionsystems.com/down.php?f=ActiveDirectoryManager_Trial.msi'>Download</a>"; 
echo "<br>";
echo "<a href='http://cionsystems.com/mailsend.php'>Click here</a> ";
?>