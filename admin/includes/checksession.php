<?php
	$session = array();
	array_push($session,$_SESSION['uname']);
	array_push($session,$_SESSION['utype']);
	array_push($session,$_SESSION['uid']);
	$smarty->assign("session",$session);
	if($_SESSION['uname'] == '')
	{
		header("Location: index.php");
		exit();
	}
	
	if($_SESSION['uname'] != '')
{
$fetch = array();
$sql = "select * from product_details ORDER BY order_product";
	$res = @mysql_query($sql);
	while($row = @mysql_fetch_assoc($res))
	{
	array_push($fetch,$row);
	}
}
$smarty->assign("fetch",$fetch);
?>
