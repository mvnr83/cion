<?php
   
	function get_product_name($pid){
		$get_product = mysql_fetch_array(mysql_query("select * from product_details where id='".$pid."'"));
		return $get_product['product_name'];
	}
	function get_price($pid,$users){
		
		$result=mysql_query("select * from product_details where id=$pid");
		$row=mysql_fetch_array($result);
		if($users=='250')
		{
			$price = $row['price_250users'];
			
		}elseif($users=='500')
		{
			$price = $row['price_500users'];
		}
		elseif($users=='750')
		{
			$price = $row['price_750users'];
		}
		return $price;
	}
	function remove_product($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				unset($_SESSION['cart'][$i]);
				break;
			}
		}
		$_SESSION['cart']=array_values($_SESSION['cart']);
	}
	function get_order_total(){
		$max=count($_SESSION['cart']);
		$sum=0;
		for($i=0;$i<$max;$i++){
			$pid=$_SESSION['cart'][$i]['productid'];
			$q=$_SESSION['cart'][$i]['qty'];
			$users=$_SESSION['cart'][$i]['users'];
			$price=get_price($pid,$users);
			$sum+=$price*$q;
		}
		return $sum;
	}
	function addtocart($pid,$q,$product,$users){
		if($pid<1 or $q<1) return;
		
		if(is_array($_SESSION['cart'])){
			if(product_exists($pid)) return;
			$max=count($_SESSION['cart']);
			$_SESSION['cart'][$max]['productid']=$pid;
			$_SESSION['cart'][$max]['qty']=$q;
			$_SESSION['cart'][$max]['product']=$product;			
			$_SESSION['cart'][$max]['users']=$users;						
		}
		else{
			$_SESSION['cart']=array();
			$_SESSION['cart'][0]['productid']=$pid;
			$_SESSION['cart'][0]['qty']=$q;
			$_SESSION['cart'][0]['product']=$product;		
			$_SESSION['cart'][0]['users']=$users;			
		}
	}
	function product_exists($pid){
		$pid=intval($pid);
		$max=count($_SESSION['cart']);
		$flag=0;
		for($i=0;$i<$max;$i++){
			if($pid==$_SESSION['cart'][$i]['productid']){
				$flag=1;
				break;
			}
		}
		return $flag;
	}

?>