<?php
session_start();
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$_SESSION['present'] = 555;
if($_SESSION['username']=='')
{
	header("Location:http://cionsystems.com/5_challenges");
	exit(0);
}
else
{
	header("Location:login.php");
	exit(0);
}


?>