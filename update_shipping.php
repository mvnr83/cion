<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
include("includes/functions.php");
include("includes/login_check.php");
if(isset($_POST['button']))
{
	 $sql_up = "update users set country = '".$_POST['country']."',company = '".$_POST['company']."',address1 = '".$_POST['address1']."',address2 = '".$_POST['address2']."',city = '".$_POST['city']."', state = '".$_POST['state']."',zipcode = '".$_POST['pcode']."',phone_no = '".$_POST['phone']."' where id = '".$_SESSION['id']."'";
	$res_up = @mysql_query($sql_up);
	header("Location:order_billing.php?action=billing");exit;
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
function ShowUSStates(str,state){ 
if(str=='US'){
    httpObject = getHTTPObject();
    if (httpObject != null) {
		
        httpObject.open("GET", "getusstates.php?country="+str+"&statev="+state, true);
        httpObject.send(null); 
        httpObject.onreadystatechange = setOutput;
    }
}
}
function setOutput(){
    if(httpObject.readyState == 4){
		//alert(httpObject.responseText)
        document.getElementById('txtHint').innerHTML = httpObject.responseText;
		
    }
 
}
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

        <td>       
        <?php include_once("topmenu.php"); ?></td>
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
    <td align="left"><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a> <span style="font-size:17px; color:#999999;">&raquo;</span> Billing & Shipping</td>

  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><table width="90%" border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td style="padding:15px 0 10px 0;">
                    <?php
					$shipping_info= mysql_fetch_array(mysql_query("select * from users where id = '".$_SESSION['id']."'"));
					?>
                    <form action="" method="post" name="form1">
                      <table width="100%" border="0" cellspacing="3" cellpadding="3">
                        <tr>
                          <td align="right" valign="middle"><span class="error">*</span> Company
                            : </td>
                          <td align="left" valign="middle"><input name="company" type="text" class="txtfield" value="<?php echo $shipping_info['company'];?>" /></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle"><span class="error">*</span> Address
                            1 : </td>
                          <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" value="<?php echo $shipping_info['address1'];?>" /></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle">Address 2 :</td>
                          <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" value="<?php echo $shipping_info['address2'];?>"/></td>
                        </tr>
                       <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country:</td>
             <td align="left" valign="middle"><select name="country" id="country" class="selfield" onchange="javascript: ShowUSStates(this.value,'');">
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
			  document.getElementById('country').value = "<?php echo $shipping_info['country'];?>";
			  <?php 
			  if( $shipping_info['country']=="US")
			  {
				  ?>
				  window.onload = ShowUSStates('<?php echo $shipping_info['country'];?>','<?php echo $shipping_info['state'];?>');
				
				  <?php
				}
			  ?>
			 </script></td>
           </tr>
                        <tr>
                          <td align="right" valign="middle"><span class="error">*</span> City
                            : </td>
                          <td align="left" valign="middle"><input name="city" type="text" class="txtfield" value="<?php echo $shipping_info['city'];?>"  /></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle">County/State/Province/Territory: </td>
                          <td align="left" valign="middle"><div id="txtHint">
                            <input name="state" id="state" type="text" class="txtfield" value="<?php echo $shipping_info['state'];?>"  />
                          </div></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle">Postal Code:</td>
                          <td align="left" valign="middle"><input name="pcode" type="text" maxlength="10" class="txtfield" value="<?php echo $shipping_info['zipcode'];?>"  /></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
                          <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" value="<?php echo $shipping_info['phone_no'];?>"  /></td>
                        </tr>
                        <tr>
                          <td width="39%" height="35" align="right">&nbsp;</td>
                          <td width="61%" align="left"><input type="submit" name="button" id="button" value="Update" /></td>
                        </tr>
                      </table>
                   
                   
                   
                    </form>
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
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1"); 
 
  frmvalidator.addValidation("country","dontselect=0","Please Select the Country");
  
  frmvalidator.addValidation("company","req","Please enter Company Name");
  frmvalidator.addValidation("company","alpha_s");  
 
  frmvalidator.addValidation("address1","req","Please enter your Address");
  frmvalidator.addValidation("address1","alnumhyphen_s","Please enter your Address");
  frmvalidator.addValidation("city","req","Please enter your City Name");
  frmvalidator.addValidation("city","alpha_s","Please enter your City Name");
  
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  
</script>
</body>
</html>