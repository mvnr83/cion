<?php
include("includes/application_start.php");
$_SESSION['uname'] = '';
$_SESSION['utype'] = '';
$_SESSION['uid'] = '';

$content=$smarty->fetch("login.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>