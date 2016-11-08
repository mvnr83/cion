<?php
include("includes/application_start.php");
//include("includes/login_check.php");
require_once("admin/includes/db_connect.php");
function getReplies($repid,$l,$index)
{
	$arr_temp = array();
	$sql = "SELECT count(*) as count from forum_replies a 
			INNER JOIN users b on a.user_id = b.id
			WHERE replied_to ='$repid' order by a.id desc";
	$res= mysql_query($sql);
	if(mysql_num_rows($res)>0)
	$replycount=mysql_fetch_assoc($res);
	if($replycount['count'] <= 0)
		return $arr_temp;
	$sql = "SELECT a.*,b.user_name,b.first_name,b.last_name from forum_replies a 
			INNER JOIN users b on a.user_id = b.id
			WHERE replied_to ='$repid' order by id desc";
	$res= mysql_query($sql);
	while($rows = mysql_fetch_array($res))
	{
		$ar = array();
		$arr_dim = array();
		$arr_dim['rid'] = $rows['id'];
		$arr_dim['tid'] = $rows['replied_to'];
		$arr_dim['name'] = "Reply".$rows['id'];
		$arr_dim['msg'] = $rows['description'];
		$arr_dim['date'] = $rows['posted_date'];
		$arr_dim['uname'] = $rows['user_name'];
		$arr_dim['level'] = $l."&nbsp;&nbsp;";
		$arr_dim['index'] = $index+45;
		$arr_dim['postedby'] = $rows['user_id'];
		array_push($arr_temp,$arr_dim);
		$ar = getReplies($rows['id'],$arr_dim['level'],$arr_dim['index']);	
		if(count($ar)>0)
		$arr_temp = array_merge($arr_temp,$ar);
	} // while
	return $arr_temp;
}// fun

function getReplyCount($threadid)
{
	$sql = "select count(*) as replycount from forum_replies where replied_to='$threadid'";
	$res= mysql_query($sql);
	$rows = mysql_fetch_array($res);
	if($rows['replycount'] == "")
		$repcount = 0;
	else
		$repcount = $rows['replycount'];
	return $repcount;
}
if($_POST['keyword']=='reply')
{
	$parentid = $_POST['pid'];
	$threadid =$_POST['tid'];
	$replyid = $_POST['rid'];
	$content = $_POST["topic_text".$replyid."r".$threadid."t".$parentid."m"];
	if($parentid != 0 && $threadid != 0 && $replyid != 0)
	{
		$sql = mysql_query("INSERT INTO forum_replies 
					  SET
					  user_id='$user_id', 
					  description = '$content',replied_to='$threadid',posted_date=now()") or die(mysql_error());
		$last_reply_id = mysql_insert_id();
		$cname = "Reply".$last_reply_id;
		$up = "update forums set count_replies=count_replies+1 where id = '$parentid'";
		mysql_query($up) or die(mysql_error());
	}
	elseif($parentid != 0 && $threadid != 0 && $replyid == 0)
	{
	  $sql = mysql_query("INSERT INTO forum_replies 
						  SET 
						  description='$content',replied_to='$threadid',posted_date=now(),user_id='".$_SESSION['id']."'") or die(mysql_error());
		 $last_reply_id = mysql_insert_id();
		 $cname = "Reply".$last_reply_id;
		 $up = "update forums set count_replies = count_replies+1 where id = '$parentid'";
		 mysql_query($up) or die(mysql_error());
		 header("location: forums.php");
		exit(0);
	}
	elseif($parentid!=0 && $threadid==0 && $replyid==0)
	{
	  $sql = mysql_query("INSERT INTO forums 
						SET 
						user_id='$user_id',
						description = '$content',
						reply_id='$parentid',
						posted_date=now()");
		$last_reply_id = mysql_insert_id();
		$cname = "Thread".$last_reply_id;
		$up = "update forums set count_replies = count_replies+1 where id = '$parentid'";
		mysql_query($up) or die(mysql_error());
		header("location: forums.php");
		exit(0);
	}  
}
if($_POST['keyword']=="create_topic")
{
	$title = $_POST['title'];
	$content = $_POST['topic_text'];
	$product = $_POST['product'];
	$create_sql = mysql_query("INSERT INTO forums 
						SET 
						user_id='$user_id',
						title = '$title',
						description = '$content',
						category = '$product',
						posted_date=now()") or die(mysql_error());
	//mysql_query($create_sql) or die(mysql_error());
	//$last_reply_id = mysql_insert_id();
	header("Location: forums.php");
	exit(0);
}
if($_POST['keyword'] == 'edit')
{
	$parentid = $_POST['pid'];
	$threadid = $_POST['tid'];
	$replyid = $_POST['rid'];
	$content = $HTTP_POST_VARS['topic'];
	
	if($parentid != 0 && $threadid != 0 && $replyid != 0)
		$upsql = mysql_query("update forum_replies set description = '$content' where id='$replyid' and replied_to ='$threadid'") or die(mysql_error());
	elseif($parentid != 0 && $threadid != 0 && $replyid == 0)
		$upsql = mysql_query("update forums set description = '$content' where id='$threadid' ");
	elseif($parentid != 0 && $threadid == 0 && $replyid == 0)
		$upsql = mysql_query("update forums set description = '$content' where id='$parentid'") or die(mysql_error());
}	

$maxsql = "SELECT max(id) as maxfrmid FROM forums WHERE status = 'Active' AND reply_id = '0'";
$maxres= mysql_query($maxsql);
$maxrows=mysql_fetch_array($maxres);
$maxid = $maxrows['maxfrmid'];
//to get all forums
$sql = "SELECT a.*,b.user_name,b.first_name,C.product_name FROM 
		forums a INNER JOIN users b ON a.user_id = b.id INNER JOIN product_details C ON a.category = C.product_code
		where a.status = 'Active' and a.reply_id='0' ";
if($_POST['searchmailon']!='')
	$sql.= " and a.description like '%".$_POST['searchmailon']."%' or a.title like '%".$_POST['searchmailon']."%'";	
	
$sql.= " ORDER BY a.posted_date desc";	
$res = mysql_query($sql) or die(mysql_error());
$arrayForums = array();
$forum_count=0;
while($menu=mysql_fetch_assoc($res))
{
	$array_replies = array();
	$frm_id = $menu['id'];
	$menu['rid'] = 0;
	$menu['tid'] = 0;
	$menu['pid'] = $frm_id;
	$menu['name'] = "Parent".$menu['id'];
	$menu['title'] = $menu['title'];
	$menu['msg'] = $menu['description'];
	$menu['uname'] = $menu['user_name'];
	$menu['date']= $menu['posted_date'];
	$menu['postedby'] = $menu['user_id'];
	$menu['level'] = '';
	$menu['index']=10;
	$frm_id=$menu['id'];
	$sql_thread = "SELECT a.*,b.user_name,b.first_name FROM 
				forums a INNER JOIN users b ON a.user_id = b.id 
				WHERE a.reply_id = '$frm_id' AND a.status='Active'
				ORDER BY a.id desc";
	$thread = mysql_query($sql_thread) or die(mysql_error());
	$thread_count = 0;
	$j=0;
	while($res_thread = mysql_fetch_array($thread))
	{
		$j = $j+1;
		$arr_dim['rid'] = 0;
		$arr_dim['tid'] = $res_thread['id'];
		$arr_dim['pid'] = $frm_id;
		$arr_dim['name'] = "Thread".$res_thread['id'];
		$arr_dim['msg'] = $res_thread['description'];
		$arr_dim['date'] = $res_thread['posted_date'];
		$arr_dim['uname'] = $res_thread['user_name'];
		$arr_dim['postedby'] = $res_thread['user_id'];
		$arr_dim['level'] = '&nbsp;';
		$arr_dim['index']=35;
		array_push($array_replies,$arr_dim);
		$k=0;		
		$qry_rep = mysql_query("select a.*,b.user_name,b.first_name,b.last_name from forum_replies a 
								INNER JOIN users b on a.user_id = b.id
								where replied_to = $res_thread[id] ORDER BY id desc");
		while($res_rep = mysql_fetch_array($qry_rep))
		{
			$ar = array();
			$arr_dim = array();
			$k++;
			$arr_dim['rid'] = $res_rep['id'];
			$arr_dim['tid'] = $res_rep['replied_to'];
			$arr_dim['pid'] = $frm_id;
			$arr_dim['name'] = "Reply".$res_rep['id'];
			$arr_dim['msg'] = $res_rep['description'];
			$arr_dim['date'] = $res_rep['posted_date'];
			$arr_dim['uname'] = $res_rep['user_name'];
			$arr_dim['postedby'] = $res_rep['user_id'];
			$arr_dim['level'] = '&nbsp;&nbsp;&nbsp;';
			$arr_dim['index']=45;
			array_push($array_replies,$arr_dim);
			$ar = getReplies($res_rep['id'],$arr_dim['level'],$arr_dim['index']);
			if(count($ar)>0)
				$array_replies = array_merge($array_replies,$ar);
		}
		$j=$j+$k;	
		$thread_count++;
	}		
	$menu['cnt'] = $j;
	$menu['threads'] = $array_replies;
	array_push($arrayForums,$menu);
	$forum_count++;
}

//end	
 if($forum_count == 0)
{
	$forum_count = 0;
	$nrTotalUser = 0;
}
else
{
	$forum_count = $forum_count;
	$nrTotalUser = $forum_count;
}
//end
$sql = "select product_name,product_code from product_details where status ='Active'";
$res = mysql_query($sql) or die(mysql_error());
$products = array();
while($fetch = mysql_fetch_assoc($res))
{
	$code = $fetch['product_code'];
	$products[$code] = $fetch['product_name'];
}
$normal_colour = "#FFFFFF";
$alternate_colour = "#efefef";
$smarty->assign('normal_colour', $normal_colour);
$smarty->assign('alternate_colour', $alternate_colour);
$smarty->assign("arrayForums",$arrayForums);
$smarty->assign("products",$products);
$smarty->assign("user_id",$_SESSION['id']);
$smarty->assign('reply_limit',16);
$smarty->display("forum.tpl");
?>