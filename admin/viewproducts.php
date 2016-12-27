<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST['order_hid'] != "" && $_POST['ordder'] != "")
{
	$res = mysql_query("UPDATE product_details SET order_product = '".$_POST['ordder']."' WHERE id = '".$_POST['order_hid']."'");
}
if($_POST['act'] == 'del')
{
	$sql_del = "delete from product_details where id = '".$_POST[uid]."'";
	$res_del = @mysql_query($sql_del);
	if(@mysql_affected_rows()>0)
		$msg = "Product Deleted Successfully";
		
}
if($_POST[act] == 'change')
{
	$sql_up = "update product_details set status = '".$_POST[st]."' where id = '".$_POST[uid]."'";
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Status changed Successfully";
		
}
if($_POST[act] == 'make_premium')
{
    
    $sql_sel = "select display_home_page from product_details where id = '".$_POST[uid]."'";
    $res_sel = @mysql_query($sql_sel);
    $ar= array();
    while($row_sel = @mysql_fetch_assoc($res_sel))
    {
            array_push($ar,$row_sel);
    }
    
    $sql_up = "update product_details set";
    if($ar[0]['display_home_page'] == 1)
        $sql_up .= " display_home_page = 0 ";
    else
        $sql_up .= " display_home_page = 1 ";
    $sql_up .= " where id = '".$_POST[uid]."'";
    
    //echo $sql_up; exit();
	$res_up = @mysql_query($sql_up);
	if(@mysql_affected_rows()>0)
		$msg = "Changes updated Successfully";
		
}

$sql_sel = "select * from product_details";
$res_sel = @mysql_query($sql_sel);
$array= array();
while($row_sel = @mysql_fetch_assoc($res_sel))
{
	array_push($array,$row_sel);
}
$smarty->assign("msg",$msg);
$smarty->assign("array",$array);
for($i=1;$i<=count($array);$i++)
{
	$count[] = $i; 
}
$smarty->assign("count",$count);
$content=$smarty->fetch("viewproducts.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>