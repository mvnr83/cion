<?php
include("includes/application_start.php");
include("includes/checksession.php");
if($_POST[act] =='add')
{
	$sql_chk = "select id from product_details where product_code = '".$_POST[pcode]."'";
	$res_chk = @mysql_query($sql_chk);
	if(@mysql_num_rows($res_chk)>0)
	{
		$msg = "A Product already exists with this code";
		$smarty->assign("msg",$msg);
	}
	else
	{
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
			}
		}
		$file3 = $_FILES['downlaod_img']['tmp_name'];
		$filename3 = $_FILES['download_img']['name'];
		$path3 = "../download_images/".$filename3;
		if($file3 != '')
		{
			if(is_uploaded_file($file3))
			{
				move_uploaded_file($file3,$path3);
			}
		}
                $file4 = $_FILES['home_slider_image']['tmp_name'];
		$filename4 = $_FILES['home_slider_image']['name'];
		$path4 = "../product_images/".$filename4;
		if($file4 != '')
		{
			if(is_uploaded_file($file4))
			{
				move_uploaded_file($file4,$path4);
			}
		}
		$sql_ins = "insert into product_details(product_type,product_name,product_code,product_image,download_image,home_slider_image,short_description,html_file_name,trial_file_path,
					original_file_path,posted_on,status,subscription_plan_name,subscription_addon_name_1,subscription_addon_name_2) values('".$_POST['product_type']."', '".$_POST[pname]."','".$_POST[pcode]."','".$filename2."','".$filename3."','".$filename4."','".addslashes($_POST[sdec])."',
					'".$_POST[hfname]."','".$filename."','".$filename1."',now(),'".$_POST[status]."','".$_POST['subscription_plan_name']."','".$_POST['subscription_addon_name_1']."','".$_POST['subscription_addon_name_2']."')";
                
		$res_ins = @mysql_query($sql_ins);
                
                //*************** start update add-on names ********/
//                $insId = mysql_insert_id($res_ins);
//                if($insId > 0){
//                    if($_POST['subscription_addon_name_1'] != ''){
//                        $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$insId."','".$_POST['subscription_addon_name_1']."',1) ");
//                    }
//                    if($_POST['subscription_addon_name_2'] != ''){
//                        $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$insId."','".$_POST['subscription_addon_name_2']."',2) ");
//                    }
//                    if($_POST['subscription_addon_name_3'] != ''){
//                        $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$insId."','".$_POST['subscription_addon_name_3']."',3) ");
//                    }
//                    if($_POST['subscription_addon_name_4'] != ''){
//                        $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$insId."','".$_POST['subscription_addon_name_4']."',4) ");
//                    }
//                    if($_POST['subscription_addon_name_5'] != ''){
//                        $ins = mysql_query("INSERT INTO subscription_addon (product_id,addon_name,addon_order) VALUES ('".$insId."','".$_POST['subscription_addon_name_5']."',5) ");
//                    }
//                }
                //*************** end update add-on names ********/
                
		if(@mysql_affected_rows()>0)
		{
			$msg = "New Product added Successfully";
			$smarty->assign("msg",$msg);
			header("Location: viewproducts.php");
			exit();
		}
	}
}



$content=$smarty->fetch("addproduct.tpl");

$smarty->assign("content",$content);

$smarty->display("index.tpl");

?>