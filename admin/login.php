<?php
include("includes/application_start.php");
include("includes/checksession.php");

$content=$smarty->fetch("welcome.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>