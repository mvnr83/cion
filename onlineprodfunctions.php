<?php
include("includes/constantdefine.php");
	
	function get_product_price($pid,$users){
		
		$result=getproductdetails($pid);
		
		if($users=='250')
		{
			$price = $result['u250'];
			
		}elseif($users=='500')
		{
			$price = $result['u500'];
		}
		elseif($users=='750')
		{
			$price = $result['u750'];
		}
		return $price;
	}
	function getproductdetails($proid){
	$retr_arr = array();
	if($proid==15)
	{
	$retr_arr["productname"] = cimtool_prod_name;
    $retr_arr["u250"] = cim_tool_u250;
    $retr_arr["u500"] = cim_tool_u500;
    $retr_arr["u750"] = cim_tool_u750;
	}
	elseif($proid==11)
	{
	$retr_arr["productname"] = admpro_prod_name;
    $retr_arr["u250"] = admpro_prod_u250;
    $retr_arr["u500"] = admpro_prod_u500;
    $retr_arr["u750"] = admpro_prod_u750;
	}
	elseif($proid==16)
	{
	$retr_arr["productname"] = ess_prod_name;
    $retr_arr["u250"] = ess_u250;
    $retr_arr["u500"] = ess_u500;
    $retr_arr["u750"] = ess_u750;
	}
	elseif($proid==19)
	{
	$retr_arr["productname"] = cim_prod_name;
    $retr_arr["u250"] = cim_u250;
    $retr_arr["u500"] = cim_u500;
    $retr_arr["u750"] = cim_u750;
	}
	elseif($proid==18)
	{
	$retr_arr["productname"] = gpo_prod_name;
    $retr_arr["u250"] = gpo_u250;
    $retr_arr["u500"] = gpo_u500;
    $retr_arr["u750"] = gpo_u750;
	}
	elseif($proid==12)
	{
	$retr_arr["productname"] = adrcry_prod_name;
    $retr_arr["u250"] = adrcry_u250;
    $retr_arr["u500"] = adrcry_u500;
    $retr_arr["u750"] = adrcry_u750;
	}
	elseif($proid==1)
	{
	$retr_arr["productname"] = adreprt_prod_name;
    $retr_arr["u250"] = adreprt_u250;
    $retr_arr["u500"] = adreprt_u500;
    $retr_arr["u750"] = adreprt_u750;
	}
	elseif($proid==6)
	{
	$retr_arr["productname"] = adchgnotfr_prod_name;
    $retr_arr["u250"] = adchgnotfr_u250;
    $retr_arr["u500"] = adchgnotfr_u500;
    $retr_arr["u750"] = adchgnotfr_u750;
	}
	elseif($proid==4)
	{
	$retr_arr["productname"] = sysinfcompr_prod_name;
    $retr_arr["u250"] = adchgnotfr_u250;
    $retr_arr["u500"] = sysinfcompr_sys10;
    $retr_arr["u750"] = sysinfcompr_sys20;
	}
    return $retr_arr;
}

	
?>