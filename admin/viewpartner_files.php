<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];
if($uid != '')
{
	$sql_sel = "select * from partner_market where Pid = '".$uid."'";
	$res_sel = @mysql_query($sql_sel);
	$array = array();
	$comp = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
		$sql_sel = "select * from partner_info where id='".$row_sel[Ppartnerid]."'";
$res_sel = @mysql_query($sql_sel);
$row_com = @mysql_fetch_assoc($res_sel);
array_push($comp,$row_com);

	}
	


}

$smarty->assign("array",$array);
$smarty->assign("company",$comp);
//$smarty->assign("name",$name);
$content=$smarty->fetch("partnerportal/view_pemp.tpl");

$smarty->assign("content",$content);

$smarty->display("partnerportal/viewpartner_files.tpl");

?>