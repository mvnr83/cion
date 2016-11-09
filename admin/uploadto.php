<?php
include ("includes/application_start.php");
include ("includes/checksession.php");
include ("multiupload.php");

Ini_set("upload_max_filesize", "100M");

//turn on file uploads
Ini_set("file_uploads", "1");

//set your temp dir
Ini_set("upload_tmp_dir", "/tmp");

//set post size large enough to accomidate
//3 100meg files and some overhead
Ini_set("post_max_size", "180M");

//define a maxim size for the uploaded images in Kb
define("MAX_SIZE", "10000");


$earray = array();
$parray = array();

$sql_sel = "select * from partners_emps where status='Active'";
$res_sel = mysql_query($sql_sel);
while ($row_sel = mysql_fetch_assoc($res_sel)) {
    array_push($earray, $row_sel);
}

$sql_p = "select * from partner_info where status='Active'";
$res_p = mysql_query($sql_p);
while ($row_p = mysql_fetch_assoc($res_p)) {
    array_push($parray, $row_p);
}

if (isset($_POST[action])) {

    if ($_POST[sel] == 'su') {
        list($file, $error) = upload('image', 'upload_file',
            'jpeg,gif,png,jpg,doc,xsl,ppt,pdf');
        if ($file != "") {
            $sql_ins = "insert into user_market(Uemp_id,Title,Ufiles,filetype,Udate)values(
		'" . $_POST[userselect] ."',
		'" . $_POST[title] . "',
		'" . $file . "',
		'" . $_POST[ftype] . "',
		now())";
            $res_ins = mysql_query($sql_ins);
            if (mysql_affected_rows() > 0) {
                $msg = "File Uploaded to User";
            }

        } else {

            $msg = $error;
        }

    } elseif ($_POST[upto] == 'sp') {
        list($file, $error) = upload('image', 'upload_file',
            'jpeg,gif,png,jpg,doc,xsl,ppt,pdf');
        if ($file != "") {
            $sql_ins = "insert into partner_market(Ppartnerid,Title,Pfiles,filetype,Pdate)values(
	'" . $_POST[partnerselect] . "',
	'" . $_POST[title] . "',
	'" . $file . "',
	'" . $_POST[ftype] . "',
	now())";
            $res_ins = mysql_query($sql_ins);
            if (mysql_affected_rows() > 0) {
                $msg = "File Uploaded to Partner";
            }
        } else {

            $msg = $error;
        }
    } else {
        list($file, $error) = upload('image', 'upload_file',
            'jpeg,gif,png,jpg,doc,xsl,ppt,pdf');
        if ($error)
            $msg = $error;
        $i = 0;
        $array = array();
        $sql_pa = "select * from partner_info where status = 'Active'";
        $res_pa = mysql_query($sql_pa);
        while ($row_pa = mysql_fetch_assoc($res_pa)) {
            $array[] = $row_pa[id];
        }
        foreach ($array as $v) {
            $sql_ins = "insert into partner_market(Ppartnerid,Title,Pfiles,filetype,Pdate)values(
	'" .$v . "',
	'" . $_POST[title] . "',
	'" . $file . "',
	'" . $_POST[ftype] . "',
	now())";
            $res_ins = mysql_query($sql_ins);
            if (mysql_affected_rows() > 0) {
                $msg = "File Uploaded to All Partner";
            }
        }
    }

}
$smarty->assign("earray", $earray);
$smarty->assign("parray", $parray);
$smarty->assign("msg", $msg);
//$smarty->assign("name",$name);
$content = $smarty->fetch("partnerportal/uploadfiles.tpl");

$smarty->assign("content", $content);

$smarty->display("partnerportal/index.tpl");

?>


