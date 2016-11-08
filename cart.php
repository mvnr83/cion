<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");
if($_REQUEST['command']=='add' && $_REQUEST['productid']>0)
{
extract($_REQUEST);	
$pid=$_REQUEST['productid'];
$noofusers=$_REQUEST['totusers'];
$admpro_adcn=$_REQUEST['admpro_adcn'];
if($product=='ADM')
{
	$pid='5';
}
if($product=='PRO')
{
	$pid='11';
}

if($pid=='1')
{
	if(product_exists('6')=='1'){ header("location:add_cart.php?msg=Active Directory Reporter and Active Directory Change Notifier both same products. Active Directory Reporter has already been added to cart.");exit(); }
	
}
if($pid=='6')
{
	if(product_exists('1')=='1'){ header("location:add_cart.php?msg=Active Directory Reporter and Active Directory Change Notifier both same products. Active Directory Change Notifier has already been added to cart.");exit(); }	
}
//$noofusers = str_replace(array('_A','_P'),array('',''),$_REQUEST['noofusers']);
addtocart($pid,1,$product,$noofusers);
//admpro with adcn
if($admpro_adcn=='yes')
{     
    $nousers= $_REQUEST['totusers_AdmproAdcn'];
	addtocart('6',1,$product,$nousers);
}
header("location:add_cart.php");
exit();
}
?>