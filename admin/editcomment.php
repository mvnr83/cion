<?php
include("includes/application_start.php");
include("includes/checksession.php");
$bid = $_REQUEST[bid];
$cid = $_REQUEST[cid];
$smarty->assign("bid",$bid);
$sql = "select * from blog_comments where id = '".$cid."'";
$res = @mysql_query($sql);
$array = array();
while($row = @mysql_fetch_assoc($res))
{
	array_push($array,$row);
	$bid = $row[blog_id];
}
if($_POST[act] =='edit')
{
	/*$sql_chk = "select id from resources where title = '".$_POST[title]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Resource already exists with the name";
		$smarty->assign("msg",$msg);
	}
	else
	{*/
	 $sql_ins = "update blog_comments set blog_comments = '".$_POST[desc]."' where id = '".$cid."'";
	 $res_ins = @mysql_query($sql_ins);
	 if(@mysql_affected_rows()>0)
	{
		?>
		<script language="javascript" type="text/javascript">
		window.location.reload();
		//window.close();
		</script>
	<?php
	}

}
$smarty->assign("array",$array);

$content=$smarty->fetch("editcomment.tpl");

$smarty->assign("content",$content);

$smarty->display("editcomment.tpl");

?>