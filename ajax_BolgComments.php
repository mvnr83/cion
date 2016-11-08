<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");

$bid = $_GET['bid'];
$smarty->assign("bid",$bid);
$sql = mysql_query("SELECT * FROM blog_comments WHERE status = 'Active' AND blog_id = '$bid' AND approved_by_admin = 'approved'");
$result = array();
while($res = mysql_fetch_assoc($sql))
{
	@array_push($result,$res);
}
for($i=0;$i<count($result);$i++)
{
	if($result[$i][user_type] != 'Customer')
	{
		$sql = mysql_query("SELECT * FROM admin_users WHERE id = '".$result[$i][user_id]."'");
		while($res = mysql_fetch_assoc($sql))
		{
			$result[$i][com_author_name] = $res[user_name];
		}
	}
	else
	{
		$sql = mysql_query("SELECT * FROM users WHERE id = '".$result[$i][user_id]."'");
		while($res = mysql_fetch_assoc($sql))
		{
			$result[$i][com_author_name] = $res[user_name];
		}
	}
}

$smarty->assign("items",$result);
$smarty->display('ajax_BolgComments.tpl');
?>