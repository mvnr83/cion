<?php
require_once("includes/application_start.php");
//include("includes/login_check.php");
require_once("admin/includes/db_connect.php");

if($_POST['act'] == 'add')
{
	$bid = $_POST[bid];
	$sql_ins = "insert into blog_comments(blog_id,user_id,user_type,blog_comments,posted_date) values('".$bid."','".$session[1]."','Customer',
					'".$_POST[dec]."',now())";
	$res_ins = @mysql_query($sql_ins);
	
}

// Getting blog products
$blog_sql = "SELECT p.*,count(b.id) as blog_count FROM product_details p,blogs b where b.product_id=p.id and p.status='Active' and b.status='Active' group by b.product_id";
$res = mysql_query($blog_sql) or die(mysql_error());
$blog_products = array();
while($fetch = mysql_fetch_assoc($res))
	array_push($blog_products,$fetch);
	
// Getting all product details
$products_sql = "SELECT p.* FROM product_details p where p.status='Active'";
$res_product = mysql_query($products_sql) or die(mysql_error());
$products = array();
while($fetch = mysql_fetch_assoc($res_product))
	array_push($products,$fetch);

// Recent blogs
$sql_recent = "SELECT * FROM blogs where status='Active' order by blog_posted_date desc limit 0,5";
$res_recent = mysql_query($sql_recent) or die(mysql_error());
$blog_recent = array();
while($fetch_recent = mysql_fetch_assoc($res_recent))
	array_push($blog_recent,$fetch_recent);
	
//getting all blogs
if(isset($_GET['product']))
$sql = mysql_query("SELECT * FROM blogs WHERE product_id=".$_GET['product']." AND status = 'Active' order by blog_posted_date desc");
else if(isset($_GET['id']))
$sql = mysql_query("SELECT * FROM blogs WHERE status = 'Active' AND id=".$_GET['id']);
else
$sql = mysql_query("SELECT * FROM blogs WHERE status = 'Active'");
$result = array();
while($res = mysql_fetch_assoc($sql))
{
	@array_push($result,$res);
}
for($i=0;$i<count($result);$i++)
{
	$sql = mysql_query("SELECT * FROM admin_users WHERE id = '".$result[$i][blog_author]."'");
	while($res = mysql_fetch_assoc($sql))
	{
		$result[$i][author_name] = $res[user_name];
	}
	
	$sql = mysql_query("SELECT * FROM blog_comments WHERE blog_id = '".$result[$i][id]."' AND status = 'Active' AND approved_by_admin = 'approved'");
	
	$result[$i][comments_count] = @mysql_num_rows($sql);
}
$smarty->assign("recent_blogs",$blog_recent);
$smarty->assign("blog_products",$blog_products);
$smarty->assign("products",$products);
$smarty->assign("items",$result);
$smarty->assign("blog_count",count($result));
$smarty->display("blogs.tpl");
?>