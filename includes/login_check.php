<?php 
if($_SESSION['username']!='')
{
	$session = array();
	array_push($session,$_SESSION[username]);
	array_push($session,$_SESSION[id]);
	$smarty->assign("session",$session);
}
else
{
	header("Location:login.php");
	exit(0);
}
?>

