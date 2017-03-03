<?php
include("includes/application_start.php");
include("includes/checksession.php");
$uid = $_GET['uid'];

if($_POST[act] == 'edit')
{

	$sql_up = "update product_details set product_name = '".$_POST[pname]."',short_description = '".$_POST[sdec]."',html_file_name = '".$_POST[hfname]."',status = '".$_POST[status]."'";
	$file = $_FILES['tfpath']['tmp_name'];
		$filename = $_FILES['tfpath']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path = "../trial/".$filename;
		if($file != '')
		{
			if(is_uploaded_file($file))
			{
				move_uploaded_file($file,$path);
				$sql_up .= ",trial_file_path = '".$filename."'";
			}
		}
		$file1 = $_FILES['ofpath']['tmp_name'];
		$filename1 = $_FILES['ofpath']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path1 = "../original/".$filename1;
		if($file1 != '')
		{
			if(is_uploaded_file($file1))
			{
				move_uploaded_file($file1,$path1);
				$sql_up .= ",original_file_path = '".$filename1."'";
			}
		}
		$file2 = $_FILES['home_img']['tmp_name'];
		$filename2 = $_FILES['home_img']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path2 = "../product_images/".$filename2;
		if($file2 != '')
		{
			if(is_uploaded_file($file2))
			{
				move_uploaded_file($file2,$path2);
				$sql_up .= ",product_image = '".$filename2."'";
			}
		}
		$file3 = $_FILES['download_img']['tmp_name'];
		$filename3 = $_FILES['download_img']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path3 = "../download_images/".$filename3;
		if($file3 != '')
		{
			if(is_uploaded_file($file3))
			{
				move_uploaded_file($file3,$path3);
				$sql_up .= ",download_image = '".$filename3."'";
			}
		}
                
                $file4 = $_FILES['home_slider_image']['tmp_name'];
		$filename4 = $_FILES['home_slider_image']['name'];
		//$name = explode(".",$filename);
		//$fname = $_POST[aname];
		//$file_name = $fname.".".$name[1];
		$path4 = "../product_images/".$filename4;
		if($file4 != '')
		{
                    if(is_uploaded_file($file4))
                    {
                            move_uploaded_file($file4,$path4);
                            $sql_up .= ",home_slider_image = '".$filename4."'";
                    }
		}
                
                
	$sql_up .= " where id = '".$uid."'";
        
	$res_up = @mysql_query($sql_up) or die(mysql_error());
        
        //*************** start update add-on names ********/
        if($_POST['subscription_addon_name_1'] != ''){
            $selAddons1 = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 1");
            
            if(mysql_num_rows($selAddons1) > 0){
                $upd = mysql_query("UPDATE subscription_addon SET addon_name = '".$_POST['subscription_addon_name_1']."' WHERE product_id = '".$uid."' AND addon_order = 1");
            } else {
                $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$uid."','".$_POST['subscription_addon_name_1']."',1) ");
            }
        } else {
            $del = mysql_query("DELETE FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 1");
        }
        
        //2
        if($_POST['subscription_addon_name_2'] != ''){
            $selAddons2 = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 2");
            if(mysql_num_rows($selAddons2) > 0){
                $upd = mysql_query("UPDATE subscription_addon SET addon_name = '".$_POST['subscription_addon_name_2']."' WHERE product_id = '".$uid."' AND addon_order = 2");
            } else {
                $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$uid."','".$_POST['subscription_addon_name_2']."',2) ");
            }
        } else {
            $del = mysql_query("DELETE FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 2");
        }
        
        //3
        if($_POST['subscription_addon_name_3'] != ''){
            $selAddons3 = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 3");
            
            if(mysql_num_rows($selAddons3) > 0){
                $upd = mysql_query("UPDATE subscription_addon SET addon_name = '".$_POST['subscription_addon_name_3']."' WHERE product_id = '".$uid."' AND addon_order = 3");
            } else {
                $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$uid."','".$_POST['subscription_addon_name_3']."',3) ");
            }
        } else {
            $del = mysql_query("DELETE FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 3");
        }
        
        //4
        if($_POST['subscription_addon_name_4'] != ''){
            $selAddons4 = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 4");
            if(mysql_num_rows($selAddons4) > 0){
                $upd = mysql_query("UPDATE subscription_addon SET addon_name = '".$_POST['subscription_addon_name_4']."' WHERE product_id = '".$uid."' AND addon_order = 4");
            } else {
                $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$uid."','".$_POST['subscription_addon_name_4']."',4) ");
            }
        } else {
            $del = mysql_query("DELETE FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 4");
        }
        
        //5
        if($_POST['subscription_addon_name_5'] != ''){
            $selAddons5 = mysql_query("SELECT * FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 5");
            if(mysql_num_rows($selAddons5) > 0){
                $upd = mysql_query("UPDATE subscription_addon SET addon_name = '".$_POST['subscription_addon_name_5']."' WHERE product_id = '".$uid."' AND addon_order = 5");
            } else {
                $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$uid."','".$_POST['subscription_addon_name_2']."',5) ");
            }
        } else {
            $del = mysql_query("DELETE FROM subscription_addon WHERE product_id = '".$uid."' AND addon_order = 5");
        }
        
        //*************** end update add-on names ********/
        
        
        
        
        
	
	if($res_up)
		$msg = "Product Details Updated Successfully";
}
if($uid!='')
{
	$sql_sel = "select * from product_details where id = '".$uid."'";
	$res_sel = @mysql_query($sql_sel) or die(mysql_error());
	$array = array();
	while($row_sel = @mysql_fetch_assoc($res_sel))
	{
		array_push($array,$row_sel);
	}
        
        //get addproduct names
        $sql_sel2 = "select * from subscription_addon where product_id = '".$uid."' ORDER BY addon_order ASC";
	$res_sel2 = @mysql_query($sql_sel2) or die(mysql_error());
	$array2 = array();
	while($row_sel = @mysql_fetch_assoc($res_sel2))
	{
		array_push($array2,$row_sel);
	}
}

$smarty->assign("msg",$msg);
$smarty->assign("uid",$uid);
$smarty->assign("array",$array);
$smarty->assign("array2",$array2);
$content=$smarty->fetch("editproduct.tpl");
$smarty->assign("content",$content);
$smarty->display("index.tpl");
?>