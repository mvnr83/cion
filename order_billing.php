<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");
if(isset($_POST['checkout']) && ($_POST['checkout']=="done"))
{
	$amount = $_POST['amount'];
	
	$insert_order = "INSERT INTO orders (amount,payment_date,
										 billing_company,
										 billing_name,
										 billing_jobtitle,
										 billing_industry,
										 billing_email,
										 billing_address1,
										 billing_address2,
										 billing_country,
										 billing_city,
										 billing_state,
										 billing_postalcode,
										 billing_phone,
										 shipping_cd,
										 ship_company,
										 ship_name,
										 ship_address1,
										 ship_address2,
										 ship_country,
										 ship_state,
										 ship_city,
										 ship_pincode,
										 ship_phone) values ('".$amount."',now(),'".$_SESSION['billing']['company']."',
										 						   '".$_SESSION['billing']['contactname']."',
																   '".$_SESSION['billing']['jobtitle']."',
																   '".$_SESSION['billing']['industry']."',
																   '".$_SESSION['billing']['email']."',
																   '".$_SESSION['billing']['address1']."',
																   '".$_SESSION['billing']['address2']."',
																   '".$_SESSION['billing']['country']."',
																   '".$_SESSION['billing']['city']."',
																   '".$_SESSION['billing']['state']."',
																   '".$_SESSION['billing']['postalcode']."',
																   '".$_SESSION['billing']['phone']."',
																   '".$_SESSION['billing']['receivecd']."',
																   '".$_SESSION['billing']['shipping_company']."',
																   '".$_SESSION['billing']['shipping_name']."',
																   '".$_SESSION['billing']['shipping_address1']."',
																   '".$_SESSION['billing']['shipping_address2']."',
																   '".$_SESSION['billing']['shipping_country']."',
																   '".$_SESSION['billing']['shipping_state']."',
																   '".$_SESSION['billing']['shipping_city']."',
																   '".$_SESSION['billing']['shipping_postalcode']."',
																   '".$_SESSION['billing']['shipping_phone']."')";
		$sql_query = mysql_query($insert_order) or die(mysql_error());
		$order_id = mysql_insert_id();
	//Order Items
	
		 $max=count($_SESSION['cart']);
			  if($max!=0){
				for($i=0;$i<$max;$i++){
					$pid=$_SESSION['cart'][$i]['productid'];
					$q=$_SESSION['cart'][$i]['qty'];
					$users=$_SESSION['cart'][$i]['users'];
					$pname=get_product_name($pid);
					$prprice = get_price($pid,$users);
					$insert_items = mysql_query("insert into order_items (order_id,product_id,product_name,product_no_users,product_price) 
																		  values ('".$order_id."','".$pid."','".$pname."','".$users."','".$prprice."' )");
				}
			  }
	unset($_SESSION['cart']);
	unset($_SESSION['billing']);
	header("location:payment_processing.php?oid=".md5($order_id));exit;

}
if(isset($_REQUEST['command']))
{
	if($_REQUEST['command']=='delete' && $_REQUEST['pid']>0){
		
		remove_product($_REQUEST['pid']);
		
	}
	else if($_REQUEST['command']=='clear'){
		
		unset($_SESSION['cart']);
		
	}
}
//if(!isset($_SESSION['billing'])){header("location:order_billing.php?action=billing");exit;}

if( (isset($_POST['act'])) && ($_POST['act'] == 'add'))
{
	
		/*$sql_ins = "insert into  orders(amount,payment_date,billing_company,billing_name,billing_jobtitle,billing_industry,billing_email,billing_address1,billing_address2,billing_country,billing_city,billing_state,billing_postalcode,shipping_cd,ship_company,ship_name,ship_address1,ship_address2,ship_country,ship_state,ship_city,ship_pincode,ship_phone)values('','','".$_POST[company]."','".$_POST[contactname]."','".$_POST[jobtitle]."','".$_POST[industry]."','".$_POST[email]."','".$_POST[country]."','".$_POST[company]."','".$_POST[jtitle]."','".$_POST[industry]."','".$_POST[address1]."','".$_POST[address2]."','".$_POST[city]."','".$_POST[state]."','".$_POST[pcode]."','".$_POST[phone]."','$dates',now())";*/
					
		$_SESSION['billing'] = $_POST;		
		header("location:order_billing.php");exit;
	
}
$pro_name = "<title>Buy It Now | CionSystems</title>";
$products_sql = "select * from product_details where status='Active' ORDER BY order_product";

$res_product = mysql_query($products_sql) or die(mysql_error());

$products = array();

while($fetch = mysql_fetch_assoc($res_product))
	array_push($products,$fetch);
	

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Active Directory delegation | active directory tool | cionsystems | seattle</title>

<meta name='keywords' content='windows active directory, exchange, sharepoint,  white paper,permissions,management,tools, backup,users, Microsoft Exchange, recovery, reports'>

<meta name='description' content='CionSystems offers easy to use web-based, Active-Directory management solutions that exceed expectations and help IT organizations manage passwords, account unlocks, provisioning and deprovisioning, group management, Exchange, auditing, delegation, compliance.'>


<meta name="google-site-verification" content="Cr-BsllHBafWdF6eFS1YuGQ7qc20z0e5SUOzYUAEKVg" />
<link rel="shortcut icon" href="fav.ico" />
<link href="style/style.css" rel="stylesheet" media="all" />
<link rel="stylesheet" type="text/css" href="ajaxtabs.css" />

<script src="Scripts/ajaxtabs.js" type="text/javascript"></script>
<script type="text/javascript" src="Script/p7exp.js"></script>
<script src="Script/roundies.js" type="text/javascript"></script>
<script src="Script/messages.js" type="text/javascript"></script>
<script src="Scripts/validator.js" type="text/javascript"></script>
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.copyright', '0px 0px 10px 10px', true);

 
</script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
 <script language="javascript">
	function del(pid){
		if(confirm('Do you really mean to delete this item')){
			document.form1.pid.value=pid;
			document.form1.command.value='delete';
			document.form1.submit();
		}
	}
	function clear_cart(){
		if(confirm('This will empty your shopping cart, continue?')){
			document.form1.command.value='clear';
			document.form1.submit();
		}
	}
	function update_cart(){
		document.form1.command.value='update';
		document.form1.submit();
	}
</script>
<script type="text/javascript">  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
	DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);
</script>
</head>

<body>
<table width="900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="85" valign="bottom">
    <?php include_once("header.php");?>
    </td>
  </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td>  <?php include_once("topmenu.php"); ?></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="28" align="right" valign="top" class="titlebg">
            <table width="250" border="0" align="right" cellpadding="0" cellspacing="0" bgcolor="#cccccc">
              <tr>

                <td width="10" align="left"><img src="images/loginlf.gif" width="4" height="32" /></td>
                <td width="279" align="center">
                                <div style="float:left"><a href="register.php" title="Signup">Not a Member ? Signup Here </a></div>
                <div style="float:right"><a href="login.php" title="Login"><img src="images/loginbtn.gif" alt="login" width="75" height="17" border="0" /></a></div>
                                </td>
                <td width="11" align="right"><img src="images/loginrt.gif" width="4" height="32" /></td>
              </tr>
            </table></td>

          </tr>
          <tr>

            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              
              <tr>
                <td align="left" valign="top">
<script type="text/javascript">
  
  /* varying radii, "all" browsers */
	DD_roundies.addRule('.box', '10px 10px 10px 10px', true);
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> Check Out </td>

  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><table width="90%" border="0" align="right" cellpadding="0" cellspacing="0">
                 <tr>
                    <td align="center"><span class="error"><?php if(isset($msg)){ echo $msg;}?></span></td>
                  </tr>
                  <tr>
                    <td style="padding:15px 0 10px 0;">
                    <?php					
					
						if(isset($_REQUEST['action']) && ($_REQUEST['action']=='billing')){
							?>
                            <form name="Userbilling" id="Userbilling" method="post">
		 <input type="hidden" name="act" value="add">
                <div class="login" style="width:500px;">
<h2>Billing & Shipping</h2>
<div class="innerlogin">



		 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">          
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Billing Information
               : </h3></td>
           </tr>
           <tr>
             <td width="45%" align="right" valign="middle"><span class="error">*</span> Company
               : </td>
             <td width="55%" align="left" valign="middle"><input name="company" id="company" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['company'])) ? $_SESSION['billing']['company'] : ""; ?>" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span>Contact
               Name:</td>
             <td align="left" valign="middle"><input name="contactname" id="contactname" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['contactname'])) ? $_SESSION['billing']['contactname'] : ""; ?>" />
             </td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Job
               Title : </td>
             <td align="left" valign="middle"><select name="jobtitle" id="jobtitle" class="selfield">
               <option  value="" selected="selected">---Select---</option>
               <option value="Application Developer">Application Developer</option>
               <option value="C-Level (CEO,CFO,CIO,CMO,CSO,CTO)">C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
               <option value="Database Administrator">Database Administrator</option>
               <option value="DBA Manager">DBA Manager</option>
               <option value="Developer">Developer</option>
               <option value="eCommerce/eBusiness Manager">eCommerce/eBusiness Manager</option>
               <option value="Exchange/Mail Administrator">Exchange/Mail Administrator</option>
               <option value="Help Desk Staff/Manager">Help Desk Staff/Manager</option>
               <option value="Infrastructure Architect/Manager">Infrastructure Architect/Manager</option>
               <option value="IT Applications Manager">IT Applications Manager</option>
               <option value="IT Architect">IT Architect</option>
               <option value="IT Consultant">IT Consultant</option>
               <option value="IT Director/VP">IT Director/VP</option>
               <option value="IT Manager">IT Manager</option>
               <option value="IT Security Director">IT Security Director</option>
               <option value="Java Developer/Administrator">Java Developer/Administrator</option>
               <option value="Network Administrator">Network Administrator</option>
               <option value="Network Manager">Network Manager</option>
               <option value="Non IT Director/VP">Non IT Director/VP</option>
               <option value="Project Manager">Project Manager</option>
               <option value="Software Engineer">Software Engineer</option>
               <option value="Student">Student</option>
               <option value="Systems Administrator">Systems Administrator</option>
               <option value="Systems Analyst/Architect">Systems Analyst/Architect</option>
               <option value="Systems Engineer">Systems Engineer</option>
               </select>
               <script language="javascript">
			  document.getElementById('jobtitle').value = "<?php echo $_SESSION['billing']['jobtitle'];?>";			  
			 </script>
               </td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Industry
               : </td>
             <td align="left" valign="middle"><select name="industry" id="industry" class="selfield">
               <option  value="" selected="selected">---Select---</option>
               <option value="Banking&#160;&amp; Financing">Banking&#160;&amp; Financing</option>
               <option value="Charities/Non-profit">Charities/Non-profit</option>
               <option value="Chemicals">Chemicals</option>
               <option value="Construction &amp; Cement">Construction &amp; Cement</option>
               <option value="Federal &amp; Central Government">Federal &amp; Central Government</option>
               <option value="Insurance">Insurance</option>
               <option value="Integrator/Consultancy">Integrator/Consultancy</option>
               <option value="Legal">Legal</option>
               <option value="Leisure">Leisure</option>
               <option value="Local Government">Local Government</option>
               <option value="Manufacturing">Manufacturing</option>
               <option value="Media">Media</option>
               <option value="Other Government">Other Government</option>
               <option value="Petrochemical &amp; Mining">Petrochemical &amp; Mining</option>
               <option value="Pharmaceuticals &amp; Healthcare">Pharmaceuticals &amp; Healthcare</option>
               <option value="Real Estate/Property Management">Real Estate/Property Management</option>
               <option value="Recruiting/Training">Recruiting/Training</option>
               <option value="Retail">Retail</option>
               <option value="Software &amp; Services">Software &amp; Services</option>
               <option value="Telecommunications">Telecommunications</option>
               <option value="Training Organization">Training Organization</option>
               <option value="Transportation &amp; Logistics">Transportation &amp; Logistics</option>
               <option value="Utilities">Utilities</option>
             </select><script language="javascript">
			  document.getElementById('industry').value = "<?php echo $_SESSION['billing']['industry'];?>";			  
			 </script></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">* </span>Email
               Address:</td>
             <td align="left" valign="middle"><input name="email" id="email" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['email'])) ? $_SESSION['billing']['email'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address
               1 : </td>
             <td align="left" valign="middle"><input name="address1" id="address1" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['address1'])) ? $_SESSION['billing']['address1'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="address2" id="address2" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['address2'])) ? $_SESSION['billing']['address2'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country:</td>
             <td align="left" valign="middle"><select name="country" id="country" class="selfield" onchange="javascript: ShowUSStates(this.value);">
               <option  value="" selected="selected">---Select---</option>
               <option value="AF">AFGHANISTAN</option>
               <option value="AL">ALBANIA</option>
               <option value="DZ">ALGERIA</option>
               <option value="AS">AMERICAN SAMOA</option>
               <option value="AD">ANDORRA</option>
               <option value="AO">ANGOLA</option>
               <option value="AI">ANGUILLA</option>
               <option value="AQ">ANTARTICA</option>
               <option value="AG">ANTIGUA AND BARBUDA</option>
               <option value="AR">ARGENTINA</option>
               <option value="AM">ARMENIA</option>
               <option value="AW">ARUBA</option>
               <option value="AU">AUSTRALIA</option>
               <option value="AT">AUSTRIA</option>
               <option value="AZ">AZERBAIJAN</option>
               <option value="BH">BAHRAIN</option>
               <option value="BD">BANGLADESH</option>
               <option value="BB">BARBADOS</option>
               <option value="BY">BELARUS</option>
               <option value="BE">BELGIUM</option>
               <option value="BZ">BELIZE</option>
               <option value="BJ">BENIN</option>
               <option value="BM">BERMUDA</option>
               <option value="BT">BHUTAN</option>
               <option value="BO">BOLIVIA</option>
               <option value="BA">BOSNIA AND HERZOGOVINA</option>
               <option value="BW">BOTSWANA</option>
               <option value="BV">BOUVET ISLAND</option>
               <option value="BR">BRAZIL</option>
               <option value="IO">BRITISH OCEAN TERRITORY</option>
               <option value="BN">BRUNEI</option>
               <option value="BG">BULGARIA</option>
               <option value="BF">BURKINO</option>
               <option value="BI">BURUNDI</option>
               <option value="KH">CAMBODIA</option>
               <option value="CM">CAMEROON</option>
               <option value="CA">CANADA</option>
               <option value="CV">CAPE-VERDE</option>
               <option value="KY">CAYMAN ISLANDS</option>
               <option value="CF">CENTRAL AFRICAN REP.</option>
               <option value="TD">CHAD</option>
               <option value="CL">CHILE</option>
               <option value="CN">CHINA</option>
               <option value="CX">CHRISTMAS ISLAND</option>
               <option value="CC">COCOS (KEELING) ISLANDS</option>
               <option value="CO">COLOMBIA</option>
               <option value="KM">COMOROS</option>
               <option value="CG">CONGO</option>
               <option value="CK">COOK ISLANDS</option>
               <option value="CR">COSTA RICA</option>
               <option value="HR">CROATIA</option>
               <option value="CY">CYPRUS</option>
               <option value="CZ">CZECH REPUBLIC</option>
               <option value="CD">DEMOCRATIC REPUBLIC OF CONGO</option>
               <option value="DK">DENMARK</option>
               <option value="DJ">DJIBOUTI</option>
               <option value="DM">DOMINICA</option>
               <option value="DO">DOMINICAN REPUBLIC</option>
               <option value="TP">EAST TIMOR</option>
               <option value="EC">ECUADOR</option>
               <option value="EG">EGYPT</option>
               <option value="SV">EL SALVADOR</option>
               <option value="GQ">EQUATORIAL GUINEA</option>
               <option value="ER">ERITREA</option>
               <option value="EE">ESTONIA</option>
               <option value="ET">ETHIOPIA</option>
               <option value="FK">FALKLAND ISLANDS (MALVINAS)</option>
               <option value="FO">FAROE ISLANDS</option>
               <option value="FJ">FIJI</option>
               <option value="FI">FINLAND</option>
               <option value="FR">FRANCE</option>
               <option value="GF">FRENCH GUIANA</option>
               <option value="PF">FRENCH POLYNESIA</option>
               <option value="GA">GABON</option>
               <option value="GE">GEORGIA</option>
               <option value="DE">GERMANY</option>
               <option value="GH">GHANA</option>
               <option value="GI">GIBRALTAR</option>
               <option value="GR">GREECE</option>
               <option value="GL">GREENLAND</option>
               <option value="GD">GRENADA</option>
               <option value="GP">GUADELOUPE</option>
               <option value="GU">GUAM</option>
               <option value="GT">GUATEMALA</option>
               <option value="GN">GUINEA</option>
               <option value="GW">GUINEA-BISSAU</option>
               <option value="GY">GUYANA</option>
               <option value="HT">HAITI</option>
               <option value="HM">HEARD AND McDONALD ISLANDS</option>
               <option value="VA">HOLY SEE (VATICAN)</option>
               <option value="HN">HONDURAS</option>
               <option value="HK">HONG KONG</option>
               <option value="HU">HUNGARY</option>
               <option value="IS">ICELAND</option>
               <option value="IN">INDIA</option>
               <option value="ID">INDONESIA</option>
               <option value="IQ">IRAQ</option>
               <option value="IE">IRELAND</option>
               <option value="IL">ISRAEL</option>
               <option value="IT">ITALY</option>
               <option value="CI">IVORY COAST</option>
               <option value="JM">JAMAICA</option>
               <option value="JP">JAPAN</option>
               <option value="JO">JORDAN</option>
               <option value="KZ">KAZAKHSTAN</option>
               <option value="KE">KENYA</option>
               <option value="KI">KIRIBATI</option>
               <option value="KR">KOREA, SOUTH</option>
               <option value="KW">KUWAIT</option>
               <option value="KG">KYRGYZSTAN</option>
               <option value="LA">LAOS</option>
               <option value="LV">LATVIA</option>
               <option value="LB">LEBANON</option>
               <option value="LS">LESOTHO</option>
               <option value="LR">LIBERIA</option>
               <option value="LY">LIBYA</option>
               <option value="LI">LIECHTENSTEIN</option>
               <option value="LX">LITHUANIA</option>
               <option value="LU">LUXEMBOURG</option>
               <option value="MO">MACAU</option>
               <option value="MK">MACEDONIA</option>
               <option value="MG">MADAGASCAR</option>
               <option value="MW">MALAWI</option>
               <option value="MY">MALAYSIA</option>
               <option value="MV">MALDIVES</option>
               <option value="ML">MALI</option>
               <option value="MT">MALTA</option>
               <option value="MH">MARSHALL ISLANDS</option>
               <option value="MQ">MARTINIQUE</option>
               <option value="MR">MAURITANIA</option>
               <option value="MU">MAURITIUS</option>
               <option value="YT">MAYOTTE</option>
               <option value="MX">MEXICO</option>
               <option value="FM">MICRONESIA</option>
               <option value="MD">MOLDOVA</option>
               <option value="MC">MONACO</option>
               <option value="MN">MONGOLIA</option>
               <option value="MS">MONTSERRAT</option>
               <option value="MA">MOROCCO</option>
               <option value="MZ">MOZAMBIQUE</option>
               <option value="BU">MYANMAR</option>
               <option value="NA">NAMIBIA</option>
               <option value="NR">NAURU</option>
               <option value="NP">NEPAL</option>
               <option value="NL">NETHERLANDS</option>
               <option value="AN">NETHERLANDS ANTILLES</option>
               <option value="NZ">NEW ZEALAND</option>
               <option value="NI">NICARAGUA</option>
               <option value="NE">NIGER</option>
               <option value="NG">NIGERIA</option>
               <option value="NU">NIUE</option>
               <option value="NF">NORFOLK ISLAND</option>
               <option value="MP">NORTHERN MARIANA ISLANDS</option>
               <option value="NO">NORWAY</option>
               <option value="OM">OMAN</option>
               <option value="PK">PAKISTAN</option>
               <option value="PW">PALAU</option>
               <option value="PS">PALESTINE</option>
               <option value="PA">PANAMA</option>
               <option value="PG">PAPUA NEW GUINEA</option>
               <option value="PY">PARAGUAY</option>
               <option value="PE">PERU</option>
               <option value="PH">PHILIPPINES</option>
               <option value="PN">PITCAIRN</option>
               <option value="PL">POLAND</option>
               <option value="PT">PORTUGAL</option>
               <option value="PR">PUERTO RICO</option>
               <option value="QA">QATAR</option>
               <option value="RE">REUNION</option>
               <option value="RO">ROMANIA</option>
               <option value="RU">RUSSIA</option>
               <option value="RW">RWANDA</option>
               <option value="GS">S. GEORGIA AND S. SANDWICH ISLANDS</option>
               <option value="SH">SAINT HELENA</option>
               <option value="KN">SAINT KITTS AND NEVIS</option>
               <option value="LC">SAINT LUCIA</option>
               <option value="PM">SAINT PIERRE AND MIQUELON</option>
               <option value="VC">SAINT VINCENT AND GRENADINES</option>
               <option value="SM">SAN MARINO</option>
               <option value="ST">SAO TOME AND PRINCIPE</option>
               <option value="SA">SAUDI ARABIA</option>
               <option value="SN">SENEGAL</option>
               <option value="YU">Serbia &amp; Montenegro </option>
               <option value="SC">SEYCHELLES</option>
               <option value="SL">SIERRA LEONE</option>
               <option value="SG">SINGAPORE</option>
               <option value="SK">SLOVAKIA</option>
               <option value="SI">SLOVENIA</option>
               <option value="SB">SOLOMAN ISLANDS</option>
               <option value="SO">SOMALIA</option>
               <option value="ZA">SOUTH AFRICA</option>
               <option value="ES">SPAIN</option>
               <option value="LK">SRI LANKA</option>
               <option value="SR">SURINAME</option>
               <option value="SJ">SVALBARD AND JAN MAYEN</option>
               <option value="WZ">SWAZILAND</option>
               <option value="SE">SWEDEN</option>
               <option value="SZ">SWITZERLAND</option>
               <option value="TW">TAIWAN</option>
               <option value="TJ">TAJIKSTAN</option>
               <option value="TZ">TANZANIA</option>
               <option value="TH">THAILAND</option>
               <option value="BS">THE BAHAMAS</option>
               <option value="GM">THE GAMBIA</option>
               <option value="TG">TOGO</option>
               <option value="TK">TOKELAU</option>
               <option value="TO">TONGA</option>
               <option value="TT">TRINIDAD AND TOBAGO</option>
               <option value="TN">TUNISIA</option>
               <option value="TR">TURKEY</option>
               <option value="TM">TURKMENISTAN</option>
               <option value="TC">TURKS AND CAICOS ISLANDS</option>
               <option value="TV">TUVALU</option>
               <option value="UG">UGANDA</option>
               <option value="UA">UKRAINE</option>
               <option value="AE">UNITED ARAB EMIRATES</option>
               <option value="GB">UNITED KINGDOM</option>
               <option value="US">UNITED STATES</option>
               <option value="UY">URUGUAY</option>
               <option value="UZ">UZBEKISTAN</option>
               <option value="VU">VANUATU</option>
               <option value="VE">VENEZUELA</option>
               <option value="VN">VIETNAM</option>
               <option value="VG">VIRGIN ISLANDS, BRITISH</option>
               <option value="VI">VIRGIN ISLANDS, US</option>
               <option value="WF">WALLIS AND FUTUNA ISLANDS</option>
               <option value="EH">WESTERN SAHARA</option>
               <option value="WS">WESTERN SAMOA</option>
               <option value="YE">YEMEN</option>
               <option value="ZR">ZAIRE</option>
               <option value="ZM">ZAMBIA</option>
               <option value="ZW">ZIMBABWE</option>
             </select><script language="javascript">
			  document.getElementById('country').value = "<?php echo $_SESSION['billing']['country'];?>";
			  
			 </script></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City
               : </td>
             <td align="left" valign="middle"><input name="city" id="city" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['city'])) ? $_SESSION['billing']['city'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> County/State/Province/Territory: </td>
             <td align="left" valign="middle"><div id="txtHint">
               <input name="state" id="state" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['state'])) ? $_SESSION['billing']['state'] : ""; ?>"/>
               </div></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Postal
               Code:</td>
             <td align="left" valign="middle"><input name="postalcode" id="postalcode" type="text" maxlength="10" class="txtfield" value="<?php echo (isset($_SESSION['billing']['postalcode'])) ? $_SESSION['billing']['postalcode'] : ""; ?>"/>
             <script language="javascript">
			 <?php 
			  if( $_SESSION['billing']['country']=="US")
			  {
				  ?>
				  window.onload = ShowUSStates('<?php echo $_SESSION['billing']['country'];?>','<?php echo $_SESSION['billing']['state'];?>');
				
				  <?php
				}
			  ?>
			 </script>
             </td>
           </tr>
           
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="phone" id="phone" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['phone'])) ? $_SESSION['billing']['phone'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><input type="checkbox" name="receivecd" id="receivecd"  onclick="javascript: ReceviedCD();" <?php  if(isset($_SESSION['billing']['receivecd']) && ($_SESSION['billing']['receivecd']=='on')){ ?> checked="checked"<?php }?> />
               Yes, I would like to receive product CD <?php if(isset($_SESSION['billing']['receivecd']) && ($_SESSION['billing']['receivecd']=='on')){ echo $_SESSION['billing']['receivecd'];?>  <script language="javascript"> window.onload = ReceviedCD();</script><?php }?></td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
            <tr>
             <td align="right" valign="middle" colspan="2"  id="ShippingDiv" style="display:none;">
             
          
           
             
             <table width="100%" border="0" cellspacing="4" cellpadding="0">
              <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Shipping Information </h3>
               </td>
           </tr>
  <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company
               : </td>
             <td align="left" valign="middle"><input name="shipping_company" id="shipping_company" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_company'])) ? $_SESSION['billing']['shipping_company'] : ""; ?>" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span>Contact
               Name :</td>
             <td align="left" valign="middle"><input name="shipping_name" id="shipping_name" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_name'])) ? $_SESSION['billing']['shipping_name'] : ""; ?>"/>
              </td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address
               1 : </td>
             <td align="left" valign="middle"><input name="shipping_address1" id="shipping_address1" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_address1'])) ? $_SESSION['billing']['shipping_address1'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="shipping_address2" id="shipping_address2" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_address2'])) ? $_SESSION['billing']['shipping_address2'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country
               :</td>
             <td align="left" valign="middle"><select name="shipping_country" id="shipping_country" class="selfield" onchange="javascript: ShowUSStates2(this.value);">
               <option  value="" selected="selected">---Select---</option>
               <option value="AF">AFGHANISTAN</option>
               <option value="AL">ALBANIA</option>
               <option value="DZ">ALGERIA</option>
               <option value="AS">AMERICAN SAMOA</option>
               <option value="AD">ANDORRA</option>
               <option value="AO">ANGOLA</option>
               <option value="AI">ANGUILLA</option>
               <option value="AQ">ANTARTICA</option>
               <option value="AG">ANTIGUA AND BARBUDA</option>
               <option value="AR">ARGENTINA</option>
               <option value="AM">ARMENIA</option>
               <option value="AW">ARUBA</option>
               <option value="AU">AUSTRALIA</option>
               <option value="AT">AUSTRIA</option>
               <option value="AZ">AZERBAIJAN</option>
               <option value="BH">BAHRAIN</option>
               <option value="BD">BANGLADESH</option>
               <option value="BB">BARBADOS</option>
               <option value="BY">BELARUS</option>
               <option value="BE">BELGIUM</option>
               <option value="BZ">BELIZE</option>
               <option value="BJ">BENIN</option>
               <option value="BM">BERMUDA</option>
               <option value="BT">BHUTAN</option>
               <option value="BO">BOLIVIA</option>
               <option value="BA">BOSNIA AND HERZOGOVINA</option>
               <option value="BW">BOTSWANA</option>
               <option value="BV">BOUVET ISLAND</option>
               <option value="BR">BRAZIL</option>
               <option value="IO">BRITISH OCEAN TERRITORY</option>
               <option value="BN">BRUNEI</option>
               <option value="BG">BULGARIA</option>
               <option value="BF">BURKINO</option>
               <option value="BI">BURUNDI</option>
               <option value="KH">CAMBODIA</option>
               <option value="CM">CAMEROON</option>
               <option value="CA">CANADA</option>
               <option value="CV">CAPE-VERDE</option>
               <option value="KY">CAYMAN ISLANDS</option>
               <option value="CF">CENTRAL AFRICAN REP.</option>
               <option value="TD">CHAD</option>
               <option value="CL">CHILE</option>
               <option value="CN">CHINA</option>
               <option value="CX">CHRISTMAS ISLAND</option>
               <option value="CC">COCOS (KEELING) ISLANDS</option>
               <option value="CO">COLOMBIA</option>
               <option value="KM">COMOROS</option>
               <option value="CG">CONGO</option>
               <option value="CK">COOK ISLANDS</option>
               <option value="CR">COSTA RICA</option>
               <option value="HR">CROATIA</option>
               <option value="CY">CYPRUS</option>
               <option value="CZ">CZECH REPUBLIC</option>
               <option value="CD">DEMOCRATIC REPUBLIC OF CONGO</option>
               <option value="DK">DENMARK</option>
               <option value="DJ">DJIBOUTI</option>
               <option value="DM">DOMINICA</option>
               <option value="DO">DOMINICAN REPUBLIC</option>
               <option value="TP">EAST TIMOR</option>
               <option value="EC">ECUADOR</option>
               <option value="EG">EGYPT</option>
               <option value="SV">EL SALVADOR</option>
               <option value="GQ">EQUATORIAL GUINEA</option>
               <option value="ER">ERITREA</option>
               <option value="EE">ESTONIA</option>
               <option value="ET">ETHIOPIA</option>
               <option value="FK">FALKLAND ISLANDS (MALVINAS)</option>
               <option value="FO">FAROE ISLANDS</option>
               <option value="FJ">FIJI</option>
               <option value="FI">FINLAND</option>
               <option value="FR">FRANCE</option>
               <option value="GF">FRENCH GUIANA</option>
               <option value="PF">FRENCH POLYNESIA</option>
               <option value="GA">GABON</option>
               <option value="GE">GEORGIA</option>
               <option value="DE">GERMANY</option>
               <option value="GH">GHANA</option>
               <option value="GI">GIBRALTAR</option>
               <option value="GR">GREECE</option>
               <option value="GL">GREENLAND</option>
               <option value="GD">GRENADA</option>
               <option value="GP">GUADELOUPE</option>
               <option value="GU">GUAM</option>
               <option value="GT">GUATEMALA</option>
               <option value="GN">GUINEA</option>
               <option value="GW">GUINEA-BISSAU</option>
               <option value="GY">GUYANA</option>
               <option value="HT">HAITI</option>
               <option value="HM">HEARD AND McDONALD ISLANDS</option>
               <option value="VA">HOLY SEE (VATICAN)</option>
               <option value="HN">HONDURAS</option>
               <option value="HK">HONG KONG</option>
               <option value="HU">HUNGARY</option>
               <option value="IS">ICELAND</option>
               <option value="IN">INDIA</option>
               <option value="ID">INDONESIA</option>
               <option value="IQ">IRAQ</option>
               <option value="IE">IRELAND</option>
               <option value="IL">ISRAEL</option>
               <option value="IT">ITALY</option>
               <option value="CI">IVORY COAST</option>
               <option value="JM">JAMAICA</option>
               <option value="JP">JAPAN</option>
               <option value="JO">JORDAN</option>
               <option value="KZ">KAZAKHSTAN</option>
               <option value="KE">KENYA</option>
               <option value="KI">KIRIBATI</option>
               <option value="KR">KOREA, SOUTH</option>
               <option value="KW">KUWAIT</option>
               <option value="KG">KYRGYZSTAN</option>
               <option value="LA">LAOS</option>
               <option value="LV">LATVIA</option>
               <option value="LB">LEBANON</option>
               <option value="LS">LESOTHO</option>
               <option value="LR">LIBERIA</option>
               <option value="LY">LIBYA</option>
               <option value="LI">LIECHTENSTEIN</option>
               <option value="LX">LITHUANIA</option>
               <option value="LU">LUXEMBOURG</option>
               <option value="MO">MACAU</option>
               <option value="MK">MACEDONIA</option>
               <option value="MG">MADAGASCAR</option>
               <option value="MW">MALAWI</option>
               <option value="MY">MALAYSIA</option>
               <option value="MV">MALDIVES</option>
               <option value="ML">MALI</option>
               <option value="MT">MALTA</option>
               <option value="MH">MARSHALL ISLANDS</option>
               <option value="MQ">MARTINIQUE</option>
               <option value="MR">MAURITANIA</option>
               <option value="MU">MAURITIUS</option>
               <option value="YT">MAYOTTE</option>
               <option value="MX">MEXICO</option>
               <option value="FM">MICRONESIA</option>
               <option value="MD">MOLDOVA</option>
               <option value="MC">MONACO</option>
               <option value="MN">MONGOLIA</option>
               <option value="MS">MONTSERRAT</option>
               <option value="MA">MOROCCO</option>
               <option value="MZ">MOZAMBIQUE</option>
               <option value="BU">MYANMAR</option>
               <option value="NA">NAMIBIA</option>
               <option value="NR">NAURU</option>
               <option value="NP">NEPAL</option>
               <option value="NL">NETHERLANDS</option>
               <option value="AN">NETHERLANDS ANTILLES</option>
               <option value="NZ">NEW ZEALAND</option>
               <option value="NI">NICARAGUA</option>
               <option value="NE">NIGER</option>
               <option value="NG">NIGERIA</option>
               <option value="NU">NIUE</option>
               <option value="NF">NORFOLK ISLAND</option>
               <option value="MP">NORTHERN MARIANA ISLANDS</option>
               <option value="NO">NORWAY</option>
               <option value="OM">OMAN</option>
               <option value="PK">PAKISTAN</option>
               <option value="PW">PALAU</option>
               <option value="PS">PALESTINE</option>
               <option value="PA">PANAMA</option>
               <option value="PG">PAPUA NEW GUINEA</option>
               <option value="PY">PARAGUAY</option>
               <option value="PE">PERU</option>
               <option value="PH">PHILIPPINES</option>
               <option value="PN">PITCAIRN</option>
               <option value="PL">POLAND</option>
               <option value="PT">PORTUGAL</option>
               <option value="PR">PUERTO RICO</option>
               <option value="QA">QATAR</option>
               <option value="RE">REUNION</option>
               <option value="RO">ROMANIA</option>
               <option value="RU">RUSSIA</option>
               <option value="RW">RWANDA</option>
               <option value="GS">S. GEORGIA AND S. SANDWICH ISLANDS</option>
               <option value="SH">SAINT HELENA</option>
               <option value="KN">SAINT KITTS AND NEVIS</option>
               <option value="LC">SAINT LUCIA</option>
               <option value="PM">SAINT PIERRE AND MIQUELON</option>
               <option value="VC">SAINT VINCENT AND GRENADINES</option>
               <option value="SM">SAN MARINO</option>
               <option value="ST">SAO TOME AND PRINCIPE</option>
               <option value="SA">SAUDI ARABIA</option>
               <option value="SN">SENEGAL</option>
               <option value="YU">Serbia &amp; Montenegro </option>
               <option value="SC">SEYCHELLES</option>
               <option value="SL">SIERRA LEONE</option>
               <option value="SG">SINGAPORE</option>
               <option value="SK">SLOVAKIA</option>
               <option value="SI">SLOVENIA</option>
               <option value="SB">SOLOMAN ISLANDS</option>
               <option value="SO">SOMALIA</option>
               <option value="ZA">SOUTH AFRICA</option>
               <option value="ES">SPAIN</option>
               <option value="LK">SRI LANKA</option>
               <option value="SR">SURINAME</option>
               <option value="SJ">SVALBARD AND JAN MAYEN</option>
               <option value="WZ">SWAZILAND</option>
               <option value="SE">SWEDEN</option>
               <option value="SZ">SWITZERLAND</option>
               <option value="TW">TAIWAN</option>
               <option value="TJ">TAJIKSTAN</option>
               <option value="TZ">TANZANIA</option>
               <option value="TH">THAILAND</option>
               <option value="BS">THE BAHAMAS</option>
               <option value="GM">THE GAMBIA</option>
               <option value="TG">TOGO</option>
               <option value="TK">TOKELAU</option>
               <option value="TO">TONGA</option>
               <option value="TT">TRINIDAD AND TOBAGO</option>
               <option value="TN">TUNISIA</option>
               <option value="TR">TURKEY</option>
               <option value="TM">TURKMENISTAN</option>
               <option value="TC">TURKS AND CAICOS ISLANDS</option>
               <option value="TV">TUVALU</option>
               <option value="UG">UGANDA</option>
               <option value="UA">UKRAINE</option>
               <option value="AE">UNITED ARAB EMIRATES</option>
               <option value="GB">UNITED KINGDOM</option>
               <option value="US">UNITED STATES</option>
               <option value="UY">URUGUAY</option>
               <option value="UZ">UZBEKISTAN</option>
               <option value="VU">VANUATU</option>
               <option value="VE">VENEZUELA</option>
               <option value="VN">VIETNAM</option>
               <option value="VG">VIRGIN ISLANDS, BRITISH</option>
               <option value="VI">VIRGIN ISLANDS, US</option>
               <option value="WF">WALLIS AND FUTUNA ISLANDS</option>
               <option value="EH">WESTERN SAHARA</option>
               <option value="WS">WESTERN SAMOA</option>
               <option value="YE">YEMEN</option>
               <option value="ZR">ZAIRE</option>
               <option value="ZM">ZAMBIA</option>
               <option value="ZW">ZIMBABWE</option>
             </select></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City
               : </td>
             <td align="left" valign="middle"><input name="shipping_city" id="shipping_city" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_city'])) ? $_SESSION['billing']['shipping_city'] : ""; ?>"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> County/State/Province/Territory
               : </td>
             <td align="left" valign="middle"><div id="txtHint3"><input name="shipping_state" id="shipping_state" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_state'])) ? $_SESSION['billing']['shipping_state'] : ""; ?>"/>     </div></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Postal
               Code :</td>
             <td align="left" valign="middle"><input name="shipping_postalcode"  id="shipping_postalcode" type="text" maxlength="10" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_postalcode'])) ? $_SESSION['billing']['shipping_postalcode'] : ""; ?>" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone
               : </td>
             <td align="left" valign="middle"><input name="shipping_phone" id="shipping_phone" type="text" class="txtfield" value="<?php echo (isset($_SESSION['billing']['shipping_phone'])) ? $_SESSION['billing']['shipping_phone'] : ""; ?>"/></td>
           </tr>
</table>
</td>           
           </tr>
           
          
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="Submit"  /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
         </table>
         </div>
</div>
            </form>

<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
	var frmvalidator  = new Validator("Userbilling");
	
	frmvalidator.addValidation("company","req","Please enter Company Name");
	frmvalidator.addValidation("company","alpha_s");
	
	frmvalidator.addValidation("contactname","req","Please Contact Name");
	//frmvalidator.addValidation("contactname","alpha","Please enter Contact Name");
	
	frmvalidator.addValidation("jobtitle","dontselect=0","Please Select the Job Title");
	frmvalidator.addValidation("industry","dontselect=0","Please Select the Industry");
	
	frmvalidator.addValidation("email","maxlen=50","50");
	frmvalidator.addValidation("email","req","Please enter your Email Address");
	frmvalidator.addValidation("email","email","Please enter  a valid Email Address");
	
	frmvalidator.addValidation("address1","req","Please enter your Address");
	frmvalidator.addValidation("address1","alnumhyphen_s","Please enter your Address");
	
	frmvalidator.addValidation("country","dontselect=0","Please Select the Country");
	
	frmvalidator.addValidation("city","req","Please enter your City Name");
	frmvalidator.addValidation("city","alpha_s","Please enter your City Name");
	
	frmvalidator.addValidation("state","req","Please enter State");
	
	frmvalidator.addValidation("postalcode","req","Please enter Postalcode");
	
	frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
	frmvalidator.addValidation("phone","req","Please enter your Phone Number");
	
	if(document.Userbilling.receivecd.checked==true)
	{		
	frmvalidator.addValidation("shipping_company","req","Please enter Company Name");
	frmvalidator.addValidation("shipping_company","alpha_s");
	
	frmvalidator.addValidation("shipping_name","req","Please Contact Name");
	//frmvalidator.addValidation("shipping_name","alpha","Please enter Contact Name");	

	frmvalidator.addValidation("shipping_address1","req","Please enter your Address");
	frmvalidator.addValidation("shipping_address1","alnumhyphen_s","Please enter your Address");
	
	frmvalidator.addValidation("shipping_country","dontselect=0","Please Select the Country");
	
	frmvalidator.addValidation("shipping_city","req","Please enter your City Name");
	frmvalidator.addValidation("shipping_city","alpha_s","Please enter your City Name");
	
	frmvalidator.addValidation("shipping_state","req","Please enter State");
	
	frmvalidator.addValidation("shipping_postalcode","req","Please enter Postalcode");
	
	frmvalidator.addValidation("shipping_phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
	frmvalidator.addValidation("shipping_phone","req","Please enter your Phone Number");
	}
  </script>
                            <?php
						}
						
					else
					{
					?>
                    <form action="" method="post" name="form1">
                    <input type="hidden" name="checkout" value="done" />
                   
                    <table width="100%" class="tblborder">
                              <tr align="center" valign="middle" bgcolor="#EAEAEA">
                                <td height="23"><strong>Products</strong></td>
                                <td width="23%"><strong>Price</strong></td>
                                <td width="30%"><strong>Total</strong></td>
                                 </tr>
              <?php  
			  if(is_array($_SESSION['cart'])){
				 
			  $max=count($_SESSION['cart']);
			  if($max!=0){
				for($i=0;$i<$max;$i++){
					$pid=$_SESSION['cart'][$i]['productid'];
					$q=$_SESSION['cart'][$i]['qty'];
					$users=$_SESSION['cart'][$i]['users'];
					//$domains=$_SESSION['cart'][$i]['domains'];
					//$computers=$_SESSION['cart'][$i]['computers'];
					$pname=get_product_name($pid);
					$where="pd_id='".$pid."'";
					
					if($q==0) continue;
			?>
           <tr bgcolor="#FFFFFF"><td height="42" align="center" valign="middle">&nbsp;&nbsp;&nbsp;<?php echo $pname;?></td>
             <td align="center" valign="middle">$<?php echo get_price($pid,$users);?></td>                    
                    <td align="center" valign="middle">$<?php echo get_price($pid,$users)*$q;?></td>
                    </tr>
            <?php				
				}
				if(isset($_SESSION['billing']['receivecd']) && ($_SESSION['billing']['receivecd']=='on'))
				{
					
					if($_SESSION['billing']['shipping_country']=='US')
					{
						$shipping = '20';
					}else
					{
						$shipping = '40';	
					}
				}else
				{
					$shipping = '0';
				}
				
					if($_SESSION['billing']['state']=='Washington'){
						$tax = number_format((get_order_total()*(9.5/100)), 2, '.', '');
					}else
					{
						$tax = '0';
					}
				
				
			?>
            <tr>
              <td height="29">&nbsp;</td>
              <td align="right"><strong>Tax:</strong></td>
              <td align="center">$<?php echo number_format($tax, 2, '.', '');?></td>
            </tr>
            <tr>
              <td width="47%" height="29">&nbsp;</td><?php $countryname = mysql_fetch_array(mysql_query("select * from country where iso='".$_SESSION['billing']['country']."'")); ?>
              <td align="right"><strong>Shipping Charges ( <?php echo ucfirst(strtolower($countryname['name'])); ?>):</strong></td>
              <td align="center">$<?php echo number_format($shipping, 2, '.', '');?></td>
            </tr>
            <tr>
              <td height="36">&nbsp;</td>
              <td align="right"><b>Order Total: </b></td>
              <td align="center" style="border-top:1px solid #000; border-bottom:1px solid #000;"><b>$<?php echo (get_order_total()+$shipping+$tax);?> <input type="hidden" name="amount" id="amount" value="<?php echo (get_order_total()+$shipping+$tax);?>" />
              
              </b></td>
            </tr>
            <tr>
              <td height="31" colspan="3" align="left" class="pro-list"><strong>&nbsp;Billing &amp; Shipping</strong></td>
              </tr>             
              <tr>
                	  <td height="40" align="left" valign="top" style="padding-left:10px;">
					  <?php echo $_SESSION['billing']['company']; ?><br />
                      <?php echo $_SESSION['billing']['address1']; ?>,<br />
                      <?php if(!empty($_SESSION['billing']['address2'])){ echo $_SESSION['billing']['address2']; ?>,<br /> <?php }?>
                      <?php echo $_SESSION['billing']['city']; ?> <?php echo $_SESSION['billing']['state']; ?>, <br />
                      <?php echo ucfirst(strtolower($countryname['name'])); ?> <?php echo $_SESSION['billing']['postalcode']; ?> 
                      <br /> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<a href="order_billing.php?action=billing" class="pro-list">Update</a>
                      </td>
                	  <td height="40" colspan="2" align="right"><input type="image" name="imageField2" id="imageField2" src="images/paypal_pay-now_english_button.jpg" /></td>
                	  </tr>
              <?php }else
			  {
				?>
                	
                	<tr><td height="40" colspan="3" align="center"><b class="error">Your shopping cart is empty!</b></td></tr>
                <?php   
				}?>
				<tr><td colspan="3" align="left">&nbsp;</td></tr>
				<tr><td colspan="3" align="left">&nbsp;</td></tr>
                
			<?php
            }
			else{
				echo "<tr bgColor='#FFFFFF'><td colspan=6 align=center><font color=#FF0000>There are no items in your shopping cart!</font></td>";
			}
		?>
</table></form>
<?php }?>
</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center">You can also send e-mail to <a href="contactus.php" class="red"><strong> sales@cionsystems.com</strong></a></td>

  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</td>
              </tr>

            </table></td>
          </tr>

        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php include_once("footer.php")?></td>
  </tr>
</table>
<script type="text/javascript">
function getHTTPObject(){
   if (window.ActiveXObject) 
       return new ActiveXObject("Microsoft.XMLHTTP");
   else if (window.XMLHttpRequest) 
       return new XMLHttpRequest();
   else {
      alert("Your browser does not support AJAX.");
      return null;
   }
}
function ShowUSStates(str){  
if(str=='US'){
		httpObject = getHTTPObject();
		if (httpObject != null) {
			httpObject.open("GET", "getusstates.php?country="+str, true);
			httpObject.send(null); 
			httpObject.onreadystatechange = setOutput;
		}
	}else
	{
		 document.getElementById('txtHint').innerHTML = '<input name="state" id="state" type="text" class="txtfield" />';
	}
}
function setOutput(){
    if(httpObject.readyState == 4){
		//alert(httpObject.responseText)
        document.getElementById('txtHint').innerHTML = httpObject.responseText;
    }
 
}

function ShowUSStates2(str){  
if(str=='US'){
		httpObject = getHTTPObject();
		if (httpObject != null) {
			httpObject.open("GET", "getusstates.php?country="+str, true);
			httpObject.send(null); 
			httpObject.onreadystatechange = setOutput2;
		}
	}else
	{
		 document.getElementById('txtHint3').innerHTML = '<input name="shipping_state" id="shipping_state" type="text" class="txtfield" />';
	}
}

function setOutput2(){
    if(httpObject.readyState == 4){
		//alert(httpObject.responseText)
        document.getElementById('txtHint3').innerHTML = httpObject.responseText;
    }
 
}

function ReceviedCD()
{
	if(document.Userbilling.receivecd.checked==true)
	{
		document.getElementById('ShippingDiv').style.display='';
		SetBillingInputs();
	}
	if(document.Userbilling.receivecd.checked==false)
	{
		document.getElementById('ShippingDiv').style.display='none';
	}
}
function SetBillingInputs()
{
	 document.getElementById("shipping_company").value=document.getElementById("company").value;
	 document.getElementById("shipping_name").value=document.getElementById("contactname").value;
	 document.getElementById("shipping_address1").value=document.getElementById("address1").value;
	 document.getElementById("shipping_address2").value=document.getElementById("address2").value;
	 document.getElementById("shipping_country").value=document.getElementById("country").value;
	 document.getElementById("shipping_city").value=document.getElementById("city").value;
	 document.getElementById("shipping_state").value=document.getElementById("state").value;
	 document.getElementById("shipping_postalcode").value=document.getElementById("postalcode").value;
	 document.getElementById("shipping_phone").value=document.getElementById("phone").value;	 
}
</script>
</body>
</html>