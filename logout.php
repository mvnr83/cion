<?php
include("includes/application_start.php");
$_SESSION['username'] = '';
$_SESSION['id'] = '';
$uname = '';
$smarty->assign("session_username",$uname);
session_destroy();
header("Location: index.php");
exit();

?>