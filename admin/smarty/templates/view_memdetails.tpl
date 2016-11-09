{literal}

<link href="css/style_sheet.css" type="text/css" rel="stylesheet"/>

<script language="javascript" type="text/javascript">

function check()

{

	var frm = document.form1;

	if(frm.uname.value == '')

	{

		alert("Enter User Name");

		frm.uname.focus();

		return false;

	}

	else if(frm.pwd.value == '')

	{

		alert("Enter Password");

		frm.pwd.focus();

		return false;

	}

	else if(frm.fname.value == '')

	{

		alert("Enter First Name");

		frm.fname.focus();

		return false;

	}

	else if(frm.lname.value == '')

	{

		alert("Enter Last Name");

		frm.lname.focus();

		return false;

	}

	else if(frm.email.value == '')

	{

		alert("Enter Email");

		frm.email.focus();

		return false;

	}

	else if(frm.utype.value == '')

	{

		alert("Select User Type");

		frm.utype.focus();

		return false;

	}

	else

		return true;

}

function clear()

{

	var frm = document.form1;

	frm.uname.value = '';

	frm.pwd.value = '';

	frm.fname.value = '';

	frm.lname.value = '';

	frm.email.value = '';

	frm.utype.value = '';

}

</script>

{/literal}

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">



	              <tr>

                <td width="232" align="left" valign="top">&nbsp;</td>

                <td width="427" align="left" valign="top"><form id="form1" name="form1" method="post" action="">

                  <table width="450" border="0" align="center" cellpadding="0" cellspacing="0" class="stroke">

                    <tr>

                      <td align="center" valign="middle"><img src="images/3px.gif" width="1" height="3" /></td>

                    </tr>

                    <tr>

                      <td align="left" valign="middle"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0">

					  <tr>

						<td align="center" class="Sub_menu">{$msg}</td>

					</tr>

                        <tr>

                          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> Member Details<!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> Member Details </td>

                              </tr>

                          </table>--></td>

                        </tr>

                        <tr>

                          <td align="left" valign="top"><!--<table width="410" border="0" align="center" cellpadding="0" cellspacing="0">

                              <tr>

                                <td width="144" align="right" valign="middle">&nbsp;</td>

                                <td width="10" align="center" valign="middle">&nbsp;</td>

                                <td width="201" align="center" valign="middle">&nbsp;</td>

                                <td width="55" align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td> 	

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="Sub_menu">User Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].user_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle" class="Sub_menu">Password :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle" class="aril">{$array[0].password}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">First Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].first_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Last Name :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].last_name}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Email :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].email}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">User Type :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].user_type}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Created On :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].created_on}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

							  <tr>

                                <td align="right" valign="middle" class="Sub_menu">Status :</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="25" align="left" valign="middle" class="aril">{$array[0].status}</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td height="23" align="center" valign="middle"><a href="#"></a><a href="#"></a>

                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">

                                      <tr>

                                        <td width="114" align="left" valign="top"><input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" /></td>

                                      </tr>

                                    </table>

                                  <a href="#"></a></td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                              <tr>

                                <td align="right" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="center" valign="middle">&nbsp;</td>

                                <td align="left" valign="middle">&nbsp;</td>

                              </tr>

                          </table>-->
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
                              <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
                              <tr>
                                <td width="48%" height="25" colspan="2" align="left" valign="middle" bgcolor="#f0f0f0" class="Sub_menu">&nbsp;&nbsp;<strong>Personal Information : </strong></td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Email Address:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].email}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">First Name:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].first_name}                                </td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Last Name:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].last_name}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">User Name:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].user_name}                                </td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Password:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].password}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Country:</td>
                                <td align="left" valign="middle"><select name="country" class="ari" style="width:220px">
                                    <option  value="">---Select---</option>
                                    <option value="AF" {if $array[0].country == 'AF'} selected="selected"{/if}>AFGHANISTAN</option>
                                    <option value="AL" {if $array[0].country == 'AL'} selected="selected"{/if}>ALBANIA</option>
                                    <option value="DZ" {if $array[0].country == 'DZ'} selected="selected"{/if}>ALGERIA</option>
                                    <option value="AS" {if $array[0].country == 'AS'} selected="selected"{/if}>AMERICAN SAMOA</option>
                                    <option value="AD" {if $array[0].country == 'AD'} selected="selected"{/if}>ANDORRA</option>
                                    <option value="AO" {if $array[0].country == 'AO'} selected="selected"{/if}>ANGOLA</option>
                                    <option value="AI" {if $array[0].country == 'AI'} selected="selected"{/if}>ANGUILLA</option>
                                    <option value="AQ" {if $array[0].country == 'AQ'} selected="selected"{/if}>ANTARTICA</option>
                                    <option value="AG" {if $array[0].country == 'AG'} selected="selected"{/if}>ANTIGUA AND BARBUDA</option>
                                    <option value="AR" {if $array[0].country == 'AR'} selected="selected"{/if}>ARGENTINA</option>
                                    <option value="AM" {if $array[0].country == 'AM'} selected="selected"{/if}>ARMENIA</option>
                                    <option value="AW" {if $array[0].country == 'AW'} selected="selected"{/if}>ARUBA</option>
                                    <option value="AU" {if $array[0].country == 'AU'} selected="selected"{/if}>AUSTRALIA</option>
                                    <option value="AT" {if $array[0].country == 'AT'} selected="selected"{/if}>AUSTRIA</option>
                                    <option value="AZ" {if $array[0].country == 'AZ'} selected="selected"{/if}>AZERBAIJAN</option>
                                    <option value="BH" {if $array[0].country == 'BH'} selected="selected"{/if}>BAHRAIN</option>
                                    <option value="BD" {if $array[0].country == 'BD'} selected="selected"{/if}>BANGLADESH</option>
                                    <option value="BB" {if $array[0].country == 'BB'} selected="selected"{/if}>BARBADOS</option>
                                    <option value="BY" {if $array[0].country == 'BY'} selected="selected"{/if}>BELARUS</option>
                                    <option value="BE" {if $array[0].country == 'BE'} selected="selected"{/if}>BELGIUM</option>
                                    <option value="BZ" {if $array[0].country == 'BZ'} selected="selected"{/if}>BELIZE</option>
                                    <option value="BJ" {if $array[0].country == 'BJ'} selected="selected"{/if}>BENIN</option>
                                    <option value="BM" {if $array[0].country == 'BM'} selected="selected"{/if}>BERMUDA</option>
                                    <option value="BT" {if $array[0].country == 'BT'} selected="selected"{/if}>BHUTAN</option>
                                    <option value="BO" {if $array[0].country == 'BO'} selected="selected"{/if}>BOLIVIA</option>
                                    <option value="BA" {if $array[0].country == 'BA'} selected="selected"{/if}>BOSNIA AND HERZOGOVINA</option>
                                    <option value="BW" {if $array[0].country == 'BW'} selected="selected"{/if}>BOTSWANA</option>
                                    <option value="BV" {if $array[0].country == 'BV'} selected="selected"{/if}>BOUVET ISLAND</option>
                                    <option value="BR" {if $array[0].country == 'BR'} selected="selected"{/if}>BRAZIL</option>
                                    <option value="IO" {if $array[0].country == 'IO'} selected="selected"{/if}>BRITISH OCEAN TERRITORY</option>
                                    <option value="BN" {if $array[0].country == 'BN'} selected="selected"{/if}>BRUNEI</option>
                                    <option value="BG" {if $array[0].country == 'BG'} selected="selected"{/if}>BULGARIA</option>
                                    <option value="BF" {if $array[0].country == 'BF'} selected="selected"{/if}>BURKINO</option>
                                    <option value="BI" {if $array[0].country == 'BI'} selected="selected"{/if}>BURUNDI</option>
                                    <option value="KH" {if $array[0].country == 'KH'} selected="selected"{/if}>CAMBODIA</option>
                                    <option value="CM" {if $array[0].country == 'CM'} selected="selected"{/if}>CAMEROON</option>
                                    <option value="CA" {if $array[0].country == 'CA'} selected="selected"{/if}>CANADA</option>
                                    <option value="CV" {if $array[0].country == 'CV'} selected="selected"{/if}>CAPE-VERDE</option>
                                    <option value="KY" {if $array[0].country == 'KY'} selected="selected"{/if}>CAYMAN ISLANDS</option>
                                    <option value="CF" {if $array[0].country == 'CF'} selected="selected"{/if}>CENTRAL AFRICAN REP.</option>
                                    <option value="TD" {if $array[0].country == 'TD'} selected="selected"{/if}>CHAD</option>
                                    <option value="CL" {if $array[0].country == 'CL'} selected="selected"{/if}>CHILE</option>
                                    <option value="CN" {if $array[0].country == 'CN'} selected="selected"{/if}>CHINA</option>
                                    <option value="CX" {if $array[0].country == 'CX'} selected="selected"{/if}>CHRISTMAS ISLAND</option>
                                    <option value="CC" {if $array[0].country == 'CC'} selected="selected"{/if}>COCOS (KEELING) ISLANDS</option>
                                    <option value="CO" {if $array[0].country == 'CO'} selected="selected"{/if}>COLOMBIA</option>
                                    <option value="KM" {if $array[0].country == 'KM'} selected="selected"{/if}>COMOROS</option>
                                    <option value="CG" {if $array[0].country == 'CG'} selected="selected"{/if}>CONGO</option>
                                    <option value="CK" {if $array[0].country == 'CK'} selected="selected"{/if}>COOK ISLANDS</option>
                                    <option value="CR" {if $array[0].country == 'CR'} selected="selected"{/if}>COSTA RICA</option>
                                    <option value="HR" {if $array[0].country == 'HR'} selected="selected"{/if}>CROATIA</option>
                                    <option value="CY" {if $array[0].country == 'CY'} selected="selected"{/if}>CYPRUS</option>
                                    <option value="CZ" {if $array[0].country == 'CZ'} selected="selected"{/if}>CZECH REPUBLIC</option>
                                    <option value="CD" {if $array[0].country == 'CD'} selected="selected"{/if}>DEMOCRATIC REPUBLIC OF CONGO</option>
                                  <option> </option>
                                  <option value="DK" {if $array[0].country == 'DK'} selected="selected"{/if}>DENMARK</option>
                                    <option value="DJ" {if $array[0].country == 'DJ'} selected="selected"{/if}>DJIBOUTI</option>
                                    <option value="DM" {if $array[0].country == 'DM'} selected="selected"{/if}>DOMINICA</option>
                                    <option value="DO" {if $array[0].country == 'DO'} selected="selected"{/if}>DOMINICAN REPUBLIC</option>
                                    <option value="TP" {if $array[0].country == 'TP'} selected="selected"{/if}>EAST TIMOR</option>
                                    <option value="EC" {if $array[0].country == 'EC'} selected="selected"{/if}>ECUADOR</option>
                                    <option value="EG" {if $array[0].country == 'EG'} selected="selected"{/if}>EGYPT</option>
                                    <option value="SV" {if $array[0].country == 'SV'} selected="selected"{/if}>EL SALVADOR</option>
                                    <option value="GQ" {if $array[0].country == 'GQ'} selected="selected"{/if}>EQUATORIAL GUINEA</option>
                                    <option value="ER" {if $array[0].country == 'ER'} selected="selected"{/if}>ERITREA</option>
                                    <option value="EE" {if $array[0].country == 'EE'} selected="selected"{/if}>ESTONIA</option>
                                    <option value="ET" {if $array[0].country == 'ET'} selected="selected"{/if}>ETHIOPIA</option>
                                    <option value="FK" {if $array[0].country == 'FK'} selected="selected"{/if}>FALKLAND ISLANDS (MALVINAS)</option>
                                    <option value="FO" {if $array[0].country == 'FO'} selected="selected"{/if}>FAROE ISLANDS</option>
                                    <option value="FJ" {if $array[0].country == 'FJ'} selected="selected"{/if}>FIJI</option>
                                    <option value="FI" {if $array[0].country == 'FI'} selected="selected"{/if}>FINLAND</option>
                                    <option value="FR" {if $array[0].country == 'FR'} selected="selected"{/if}>FRANCE</option>
                                    <option value="GF" {if $array[0].country == 'GF'} selected="selected"{/if}>FRENCH GUIANA</option>
                                    <option value="PF" {if $array[0].country == 'PF'} selected="selected"{/if}>FRENCH POLYNESIA</option>
                                    <option value="GA" {if $array[0].country == 'GA'} selected="selected"{/if}>GABON</option>
                                    <option value="GE" {if $array[0].country == 'GE'} selected="selected"{/if}>GEORGIA</option>
                                    <option value="DE" {if $array[0].country == 'DE'} selected="selected"{/if}>GERMANY</option>
                                    <option value="GH" {if $array[0].country == 'GH'} selected="selected"{/if}>GHANA</option>
                                    <option value="GI" {if $array[0].country == 'GI'} selected="selected"{/if}>GIBRALTAR</option>
                                    <option value="GR" {if $array[0].country == 'GR'} selected="selected"{/if}>GREECE</option>
                                    <option value="GL" {if $array[0].country == 'GL'} selected="selected"{/if}>GREENLAND</option>
                                    <option value="GD" {if $array[0].country == 'GD'} selected="selected"{/if}>GRENADA</option>
                                    <option value="GP" {if $array[0].country == 'GP'} selected="selected"{/if}>GUADELOUPE</option>
                                    <option value="GU" {if $array[0].country == 'GU'} selected="selected"{/if}>GUAM</option>
                                    <option value="GT" {if $array[0].country == 'GT'} selected="selected"{/if}>GUATEMALA</option>
                                    <option value="GN" {if $array[0].country == 'GN'} selected="selected"{/if}>GUINEA</option>
                                    <option value="GW" {if $array[0].country == 'GW'} selected="selected"{/if}>GUINEA-BISSAU</option>
                                    <option value="GY" {if $array[0].country == 'GY'} selected="selected"{/if}>GUYANA</option>
                                    <option value="HT" {if $array[0].country == 'HT'} selected="selected"{/if}>HAITI</option>
                                    <option value="HM" {if $array[0].country == 'HM'} selected="selected"{/if}>HEARD AND McDONALD ISLANDS</option>
                                    <option value="VA" {if $array[0].country == 'VA'} selected="selected"{/if}>HOLY SEE (VATICAN)</option>
                                    <option value="HN" {if $array[0].country == 'HN'} selected="selected"{/if}>HONDURAS</option>
                                    <option value="HK" {if $array[0].country == 'HK'} selected="selected"{/if}>HONG KONG</option>
                                    <option value="HU" {if $array[0].country == 'HU'} selected="selected"{/if}>HUNGARY</option>
                                    <option value="IS" {if $array[0].country == 'IS'} selected="selected"{/if}>ICELAND</option>
                                    <option value="IN" {if $array[0].country == 'IN'} selected="selected"{/if}>INDIA</option>
                                    <option value="ID" {if $array[0].country == 'ID'} selected="selected"{/if}>INDONESIA</option>
                                    <option value="IQ" {if $array[0].country == 'IQ'} selected="selected"{/if}>IRAQ</option>
                                    <option value="IE" {if $array[0].country == 'IE'} selected="selected"{/if}>IRELAND</option>
                                    <option value="IL" {if $array[0].country == 'IL'} selected="selected"{/if}>ISRAEL</option>
                                    <option value="IT" {if $array[0].country == 'IT'} selected="selected"{/if}>ITALY</option>
                                    <option value="CI" {if $array[0].country == 'CI'} selected="selected"{/if}>IVORY COAST</option>
                                    <option value="JM" {if $array[0].country == 'JM'} selected="selected"{/if}>JAMAICA</option>
                                    <option value="JP" {if $array[0].country == 'JP'} selected="selected"{/if}>JAPAN</option>
                                    <option value="JO" {if $array[0].country == 'JO'} selected="selected"{/if}>JORDAN</option>
                                    <option value="KZ" {if $array[0].country == 'KZ'} selected="selected"{/if}>KAZAKHSTAN</option>
                                    <option value="KE" {if $array[0].country == 'KE'} selected="selected"{/if}>KENYA</option>
                                    <option value="KI" {if $array[0].country == 'KI'} selected="selected"{/if}>KIRIBATI</option>
                                    <option value="KR" {if $array[0].country == 'KR'} selected="selected"{/if}>KOREA, SOUTH</option>
                                    <option value="KW" {if $array[0].country == 'KW'} selected="selected"{/if}>KUWAIT</option>
                                    <option value="KG" {if $array[0].country == 'KG'} selected="selected"{/if}>KYRGYZSTAN</option>
                                    <option value="LA" {if $array[0].country == 'LA'} selected="selected"{/if}>LAOS</option>
                                    <option value="LV" {if $array[0].country == 'LV'} selected="selected"{/if}>LATVIA</option>
                                    <option value="LB" {if $array[0].country == 'LB'} selected="selected"{/if}>LEBANON</option>
                                    <option value="LS" {if $array[0].country == 'LS'} selected="selected"{/if}>LESOTHO</option>
                                    <option value="LR" {if $array[0].country == 'LR'} selected="selected"{/if}>LIBERIA</option>
                                    <option value="LY" {if $array[0].country == 'LY'} selected="selected"{/if}>LIBYA</option>
                                    <option value="LI" {if $array[0].country == 'LI'} selected="selected"{/if}>LIECHTENSTEIN</option>
                                    <option value="LX" {if $array[0].country == 'LX'} selected="selected"{/if}>LITHUANIA</option>
                                    <option value="LU" {if $array[0].country == 'LU'} selected="selected"{/if}>LUXEMBOURG</option>
                                    <option value="MO" {if $array[0].country == 'MO'} selected="selected"{/if}>MACAU</option>
                                    <option value="MK" {if $array[0].country == 'MK'} selected="selected"{/if}>MACEDONIA</option>
                                    <option value="MG" {if $array[0].country == 'MG'} selected="selected"{/if}>MADAGASCAR</option>
                                    <option value="MW" {if $array[0].country == 'MW'} selected="selected"{/if}>MALAWI</option>
                                    <option value="MY" {if $array[0].country == 'MY'} selected="selected"{/if}>MALAYSIA</option>
                                    <option value="MV" {if $array[0].country == 'MV'} selected="selected"{/if}>MALDIVES</option>
                                    <option value="ML" {if $array[0].country == 'ML'} selected="selected"{/if}>MALI</option>
                                    <option value="MT" {if $array[0].country == 'MT'} selected="selected"{/if}>MALTA</option>
                                    <option value="MH" {if $array[0].country == 'MH'} selected="selected"{/if}>MARSHALL ISLANDS</option>
                                    <option value="MQ" {if $array[0].country == 'MQ'} selected="selected"{/if}>MARTINIQUE</option>
                                    <option value="MR" {if $array[0].country == 'MR'} selected="selected"{/if}>MAURITANIA</option>
                                    <option value="MU" {if $array[0].country == 'MU'} selected="selected"{/if}>MAURITIUS</option>
                                    <option value="YT" {if $array[0].country == 'YT'} selected="selected"{/if}>MAYOTTE</option>
                                    <option value="MX" {if $array[0].country == 'MX'} selected="selected"{/if}>MEXICO</option>
                                    <option value="FM" {if $array[0].country == 'FM'} selected="selected"{/if}>MICRONESIA</option>
                                    <option value="MD" {if $array[0].country == 'MD'} selected="selected"{/if}>MOLDOVA</option>
                                    <option value="MC" {if $array[0].country == 'MC'} selected="selected"{/if}>MONACO</option>
                                    <option value="MN" {if $array[0].country == 'MN'} selected="selected"{/if}>MONGOLIA</option>
                                    <option value="MS" {if $array[0].country == 'MS'} selected="selected"{/if}>MONTSERRAT</option>
                                    <option value="MA" {if $array[0].country == 'MA'} selected="selected"{/if}>MOROCCO</option>
                                    <option value="MZ" {if $array[0].country == 'MZ'} selected="selected"{/if}>MOZAMBIQUE</option>
                                    <option value="BU" {if $array[0].country == 'BU'} selected="selected"{/if}>MYANMAR</option>
                                    <option value="NA" {if $array[0].country == 'NA'} selected="selected"{/if}>NAMIBIA</option>
                                    <option value="NR" {if $array[0].country == 'NR'} selected="selected"{/if}>NAURU</option>
                                    <option value="NP" {if $array[0].country == 'NP'} selected="selected"{/if}>NEPAL</option>
                                    <option value="NL" {if $array[0].country == 'NL'} selected="selected"{/if}>NETHERLANDS</option>
                                    <option value="AN" {if $array[0].country == 'AN'} selected="selected"{/if}>NETHERLANDS ANTILLES</option>
                                    <option value="NZ" {if $array[0].country == 'NZ'} selected="selected"{/if}>NEW ZEALAND</option>
                                    <option value="NI" {if $array[0].country == 'NI'} selected="selected"{/if}>NICARAGUA</option>
                                    <option value="NE" {if $array[0].country == 'NE'} selected="selected"{/if}>NIGER</option>
                                    <option value="NG" {if $array[0].country == 'NG'} selected="selected"{/if}>NIGERIA</option>
                                    <option value="NU" {if $array[0].country == 'NU'} selected="selected"{/if}>NIUE</option>
                                    <option value="NF" {if $array[0].country == 'NF'} selected="selected"{/if}>NORFOLK ISLAND</option>
                                    <option value="MP" {if $array[0].country == 'MP'} selected="selected"{/if}>NORTHERN MARIANA ISLANDS</option>
                                    <option value="NO" {if $array[0].country == 'NO'} selected="selected"{/if}>NORWAY</option>
                                    <option value="OM" {if $array[0].country == 'OM'} selected="selected"{/if}>OMAN</option>
                                    <option value="PK" {if $array[0].country == 'PK'} selected="selected"{/if}>PAKISTAN</option>
                                    <option value="PW" {if $array[0].country == 'PW'} selected="selected"{/if}>PALAU</option>
                                    <option value="PS" {if $array[0].country == 'PS'} selected="selected"{/if}>PALESTINE</option>
                                    <option value="PA" {if $array[0].country == 'PA'} selected="selected"{/if}>PANAMA</option>
                                    <option value="PG" {if $array[0].country == 'PG'} selected="selected"{/if}>PAPUA NEW GUINEA</option>
                                    <option value="PY" {if $array[0].country == 'PY'} selected="selected"{/if}>PARAGUAY</option>
                                    <option value="PE" {if $array[0].country == 'PE'} selected="selected"{/if}>PERU</option>
                                    <option value="PH" {if $array[0].country == 'PH'} selected="selected"{/if}>PHILIPPINES</option>
                                    <option value="PN" {if $array[0].country == 'PN'} selected="selected"{/if}>PITCAIRN</option>
                                    <option value="PL" {if $array[0].country == 'PL'} selected="selected"{/if}>POLAND</option>
                                    <option value="PT" {if $array[0].country == 'PT'} selected="selected"{/if}>PORTUGAL</option>
                                    <option value="PR" {if $array[0].country == 'PR'} selected="selected"{/if}>PUERTO RICO</option>
                                    <option value="QA" {if $array[0].country == 'QA'} selected="selected"{/if}>QATAR</option>
                                    <option value="RE" {if $array[0].country == 'RE'} selected="selected"{/if}>REUNION</option>
                                    <option value="RO" {if $array[0].country == 'RO'} selected="selected"{/if}>ROMANIA</option>
                                    <option value="RU" {if $array[0].country == 'RU'} selected="selected"{/if}>RUSSIA</option>
                                    <option value="RW" {if $array[0].country == 'RW'} selected="selected"{/if}>RWANDA</option>
                                    <option value="GS" {if $array[0].country == 'GS'} selected="selected"{/if}>S. GEORGIA AND S. SANDWICH ISLANDS</option>
                                    <option value="SH" {if $array[0].country == 'SH'} selected="selected"{/if}>SAINT HELENA</option>
                                    <option value="KN" {if $array[0].country == 'KN'} selected="selected"{/if}>SAINT KITTS AND NEVIS</option>
                                    <option value="LC" {if $array[0].country == 'LC'} selected="selected"{/if}>SAINT LUCIA</option>
                                    <option value="PM" {if $array[0].country == 'PM'} selected="selected"{/if}>SAINT PIERRE AND MIQUELON</option>
                                    <option value="VC" {if $array[0].country == 'VC'} selected="selected"{/if}>SAINT VINCENT AND GRENADINES</option>
                                    <option value="SM" {if $array[0].country == 'SM'} selected="selected"{/if}>SAN MARINO</option>
                                    <option value="ST" {if $array[0].country == 'ST'} selected="selected"{/if}>SAO TOME AND PRINCIPE</option>
                                    <option value="SA" {if $array[0].country == 'SA'} selected="selected"{/if}>SAUDI ARABIA</option>
                                    <option value="SN" {if $array[0].country == 'SN'} selected="selected"{/if}>SENEGAL</option>
                                    <option value="YU" {if $array[0].country == 'YU'} selected="selected"{/if}>Serbia &amp; Montenegro </option>
                                    <option value="SC" {if $array[0].country == 'SC'} selected="selected"{/if}>SEYCHELLES</option>
                                    <option value="SL" {if $array[0].country == 'SL'} selected="selected"{/if}>SIERRA LEONE</option>
                                    <option value="SG" {if $array[0].country == 'SG'} selected="selected"{/if}>SINGAPORE</option>
                                    <option value="SK" {if $array[0].country == 'SK'} selected="selected"{/if}>SLOVAKIA</option>
                                    <option value="SI" {if $array[0].country == 'SI'} selected="selected"{/if}>SLOVENIA</option>
                                    <option value="SB" {if $array[0].country == 'SB'} selected="selected"{/if}>SOLOMAN ISLANDS</option>
                                    <option value="SO" {if $array[0].country == 'SO'} selected="selected"{/if}>SOMALIA</option>
                                    <option value="ZA" {if $array[0].country == 'ZA'} selected="selected"{/if}>SOUTH AFRICA</option>
                                    <option value="ES" {if $array[0].country == 'ES'} selected="selected"{/if}>SPAIN</option>
                                    <option value="LK" {if $array[0].country == 'LK'} selected="selected"{/if}>SRI LANKA</option>
                                    <option value="SR" {if $array[0].country == 'SR'} selected="selected"{/if}>SURINAME</option>
                                    <option value="SJ" {if $array[0].country == 'SJ'} selected="selected"{/if}>SVALBARD AND JAN MAYEN</option>
                                    <option value="WZ" {if $array[0].country == 'WZ'} selected="selected"{/if}>SWAZILAND</option>
                                    <option value="SE" {if $array[0].country == 'SE'} selected="selected"{/if}>SWEDEN</option>
                                    <option value="SZ" {if $array[0].country == 'SZ'} selected="selected"{/if}>SWITZERLAND</option>
                                    <option value="TW" {if $array[0].country == 'TW'} selected="selected"{/if}>TAIWAN</option>
                                    <option value="TJ" {if $array[0].country == 'TJ'} selected="selected"{/if}>TAJIKSTAN</option>
                                    <option value="TZ" {if $array[0].country == 'TZ'} selected="selected"{/if}>TANZANIA</option>
                                    <option value="TH" {if $array[0].country == 'TH'} selected="selected"{/if}>THAILAND</option>
                                    <option value="BS" {if $array[0].country == 'BS'} selected="selected"{/if}>THE BAHAMAS</option>
                                    <option value="GM" {if $array[0].country == 'GM'} selected="selected"{/if}>THE GAMBIA</option>
                                    <option value="TG" {if $array[0].country == 'TG'} selected="selected"{/if}>TOGO</option>
                                    <option value="TK" {if $array[0].country == 'TK'} selected="selected"{/if}>TOKELAU</option>
                                    <option value="TO" {if $array[0].country == 'TO'} selected="selected"{/if}>TONGA</option>
                                    <option value="TT" {if $array[0].country == 'TT'} selected="selected"{/if}>TRINIDAD AND TOBAGO</option>
                                    <option value="TN" {if $array[0].country == 'TN'} selected="selected"{/if}>TUNISIA</option>
                                    <option value="TR" {if $array[0].country == 'TR'} selected="selected"{/if}>TURKEY</option>
                                    <option value="TM" {if $array[0].country == 'TM'} selected="selected"{/if}>TURKMENISTAN</option>
                                    <option value="TC" {if $array[0].country == 'TC'} selected="selected"{/if}>TURKS AND CAICOS ISLANDS</option>
                                    <option value="TV" {if $array[0].country == 'TV'} selected="selected"{/if}>TUVALU</option>
                                    <option value="UG" {if $array[0].country == 'UG'} selected="selected"{/if}>UGANDA</option>
                                    <option value="UA" {if $array[0].country == 'UA'} selected="selected"{/if}>UKRAINE</option>
                                    <option value="AE" {if $array[0].country == 'AE'} selected="selected"{/if}>UNITED ARAB EMIRATES</option>
                                    <option value="GB" {if $array[0].country == 'GB'} selected="selected"{/if}>UNITED KINGDOM</option>
                                    <option value="US" {if $array[0].country == 'US'} selected="selected"{/if}>UNITED STATES</option>
                                    <option value="UY" {if $array[0].country == 'UY'} selected="selected"{/if}>URUGUAY</option>
                                    <option value="UZ" {if $array[0].country == 'UZ'} selected="selected"{/if}>UZBEKISTAN</option>
                                    <option value="VU" {if $array[0].country == 'VU'} selected="selected"{/if}>VANUATU</option>
                                    <option value="VE" {if $array[0].country == 'VE'} selected="selected"{/if}>VENEZUELA</option>
                                    <option value="VN" {if $array[0].country == 'VN'} selected="selected"{/if}>VIETNAM</option>
                                    <option value="VG" {if $array[0].country == 'VG'} selected="selected"{/if}>VIRGIN ISLANDS, BRITISH</option>
                                    <option value="VI" {if $array[0].country == 'VI'} selected="selected"{/if}>VIRGIN ISLANDS, US</option>
                                    <option value="WF" {if $array[0].country == 'WF'} selected="selected"{/if}>WALLIS AND FUTUNA ISLANDS</option>
                                    <option value="EH" {if $array[0].country == 'EH'} selected="selected"{/if}>WESTERN SAHARA</option>
                                    <option value="WS" {if $array[0].country == 'WS'} selected="selected"{/if}>WESTERN SAMOA</option>
                                    <option value="YE" {if $array[0].country == 'YE'} selected="selected"{/if}>YEMEN</option>
                                    <option value="ZR" {if $array[0].country == 'ZR'} selected="selected"{/if}>ZAIRE</option>
                                    <option value="ZM" {if $array[0].country == 'ZM'} selected="selected"{/if}>ZAMBIA</option>
                                    <option value="ZW" {if $array[0].country == 'ZW'} selected="selected"{/if}>ZIMBABWE</option>
                                  </select>                                </td>
                              </tr>
                              <tr>
                                <td height="25" colspan="2" align="left" valign="middle" nowrap="nowrap" bgcolor="#f0f0f0" class="Sub_menu">&nbsp;&nbsp;<strong>Company Information : </strong></td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Company : </td>
                                <td align="left" valign="middle" class="aril">{$array[0].company}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Job Title : </td>
                                <td align="left" valign="middle"><select name="jtitle" class="ari" style="width:220px">
                                    <option  value="">---Select---</option>
                                    <option value="1" {if $array[0].job_title == '1'} selected="selected"{/if}>Application Developer</option>
                                    <option value="2" {if $array[0].job_title == '2'} selected="selected"{/if}>C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
                                    <option value="3" {if $array[0].job_title == '3'} selected="selected"{/if}>Database Administrator</option>
                                    <option value="4" {if $array[0].job_title == '4'} selected="selected"{/if}>DBA Manager</option>
                                    <option value="5" {if $array[0].job_title == '5'} selected="selected"{/if}>Developer</option>
                                    <option value="6" {if $array[0].job_title == '6'} selected="selected"{/if}>eCommerce/eBusiness Manager</option>
                                    <option value="7" {if $array[0].job_title == '7'} selected="selected"{/if}>Exchange/Mail Administrator</option>
                                    <option value="8" {if $array[0].job_title == '8'} selected="selected"{/if}>Help Desk Staff/Manager</option>
                                    <option value="9" {if $array[0].job_title == '9'} selected="selected"{/if}>Infrastructure Architect/Manager</option>
                                    <option value="10" {if $array[0].job_title == '10'} selected="selected"{/if}>IT Applications Manager</option>
                                    <option value="11" {if $array[0].job_title == '11'} selected="selected"{/if}>IT Architect</option>
                                    <option value="12" {if $array[0].job_title == '12'} selected="selected"{/if}>IT Consultant</option>
                                    <option value="13" {if $array[0].job_title == '13'} selected="selected"{/if}>IT Director/VP</option>
                                    <option value="14" {if $array[0].job_title == '14'} selected="selected"{/if}>IT Manager</option>
                                    <option value="15" {if $array[0].job_title == '15'} selected="selected"{/if}>IT Security Director</option>
                                    <option value="16" {if $array[0].job_title == '16'} selected="selected"{/if}>Java Developer/Administrator</option>
                                    <option value="17" {if $array[0].job_title == '17'} selected="selected"{/if}>Network Administrator</option>
                                    <option value="18" {if $array[0].job_title == '18'} selected="selected"{/if}>Network Manager</option>
                                    <option value="19" {if $array[0].job_title == '19'} selected="selected"{/if}>Non IT Director/VP</option>
                                    <option value="20" {if $array[0].job_title == '20'} selected="selected"{/if}>Project Manager</option>
                                    <option value="21" {if $array[0].job_title == '21'} selected="selected"{/if}>Software Engineer</option>
                                    <option value="22" {if $array[0].job_title == '22'} selected="selected"{/if}>Student</option>
                                    <option value="23" {if $array[0].job_title == '23'} selected="selected"{/if}>Systems Administrator</option>
                                    <option value="24" {if $array[0].job_title == '24'} selected="selected"{/if}>Systems Analyst/Architect</option>
                                    <option value="25" {if $array[0].job_title == '25'} selected="selected"{/if}>Systems Engineer</option>
                                </select></td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Industry : </td>
                                <td align="left" valign="middle"><select name="industry" class="ari">
                                    <option  value="">---Select---</option>
                                    <option value="229" {if $array[0].industry == '229'} selected="selected"{/if}>Banking&#160;&amp; Financing</option>
                                    <option value="179" {if $array[0].industry == '179'} selected="selected"{/if}>Charities/Non-profit</option>
                                    <option value="161" {if $array[0].industry == '161'} selected="selected"{/if}>Chemicals</option>
                                    <option value="190" {if $array[0].industry == '190'} selected="selected"{/if}>Construction &amp; Cement</option>
                                    <option value="191" {if $array[0].industry == '191'} selected="selected"{/if}>Federal &amp; Central Government</option>
                                    <option value="168" {if $array[0].industry == '168'} selected="selected"{/if}>Insurance</option>
                                    <option value="231" {if $array[0].industry == '231'} selected="selected"{/if}>Integrator/Consultancy</option>
                                    <option value="180" {if $array[0].industry == '180'} selected="selected"{/if}>Legal</option>
                                    <option value="169" {if $array[0].industry == '169'} selected="selected"{/if}>Leisure</option>
                                    <option value="188" {if $array[0].industry == '188'} selected="selected"{/if}>Local Government</option>
                                    <option value="170" {if $array[0].industry == '170'} selected="selected"{/if}>Manufacturing</option>
                                    <option value="172" {if $array[0].industry == '172'} selected="selected"{/if}>Media</option>
                                    <option value="192" {if $array[0].industry == '192'} selected="selected"{/if}>Other Government</option>
                                    <option value="193" {if $array[0].industry == '193'} selected="selected"{/if}>Petrochemical &amp; Mining</option>
                                    <option value="182" {if $array[0].industry == '182'} selected="selected"{/if}>Pharmaceuticals &amp; Healthcare</option>
                                    <option value="174" {if $array[0].industry == '174'} selected="selected"{/if}>Real Estate/Property Management</option>
                                    <option value="181" {if $array[0].industry == '181'} selected="selected"{/if}>Recruiting/Training</option>
                                    <option value="175" {if $array[0].industry == '175'} selected="selected"{/if}>Retail</option>
                                    <option value="183" {if $array[0].industry == '183'} selected="selected"{/if}>Software &amp; Services</option>
                                    <option value="176" {if $array[0].industry == '176'} selected="selected"{/if}>Telecommunications</option>
                                    <option value="194" {if $array[0].industry == '194'} selected="selected"{/if}>Training Organization</option>
                                    <option value="187" {if $array[0].industry == '187'} selected="selected"{/if}>Transportation &amp; Logistics</option>
                                    <option value="178" {if $array[0].industry == '178'} selected="selected"{/if}>Utilities</option>
                                </select></td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Address 1 : </td>
                                <td align="left" valign="middle" class="aril">{$array[0].address1}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">Address 2 :</td>
                                <td align="left" valign="middle" class="aril">{$array[0].address2}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">City : </td>
                                <td align="left" valign="middle" class="aril">{$array[0].city}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu" nowrap="nowrap">State Province: </td>
                                <td align="left" valign="middle" class="aril">{$array[0].state}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Postal Code:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].zipcode}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Phone:</td>
                                <td align="left" valign="middle" class="aril">{$array[0].phone_no}</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Last Login:</td>
                                <td align="left" valign="middle" class="aril"><strong>{$array[0].last_login}</strong></td>
                              </tr>
                              <tr>
                                <td height="25" colspan="2" align="left" valign="middle" nowrap="nowrap" bgcolor="#f0f0f0" class="Sub_menu">&nbsp;&nbsp;<strong>Download Information : </strong></td>
                              </tr>
                              <tr>
                              <td colspan="2">
                              <table width="100%" border="0" cellspacing="0" cellpadding="3">
                              <tr> 
                                <td width="55%" align="center" valign="middle" bgcolor="#D5F1FF" class="aril"><strong>Product List </strong></td>
                                <td width="5%" align="left" valign="middle" bgcolor="#D5F1FF" class="aril">&nbsp;</td>
                                <td width="10%" align="center" valign="middle" bgcolor="#D5F1FF" class="aril"><strong>No.of <br />
Downloads</strong></td>
                                <td width="30%" align="center" valign="middle" bgcolor="#D5F1FF" class="aril"><strong>Last Download</strong></td>
                              </tr>
  								{section name=down loop=$fetch}
                              <tr> 
                                <td align="left" valign="middle" width="60%" class="aril"><strong>{$fetch[down].product_name} </strong></td>
                                <td width="5%" align="left" valign="middle" class="aril"><strong>:</strong></td>
                                <td align="center" valign="middle" width="10%" class="aril">{$name[down].sample_download}</td>
                                <td align="center" valign="middle" width="30%" class="aril">{$name[down].sample_download_date|date_format:"%d-%m-%Y"}</td>
                              </tr>
                              {/section}
								</table>
								</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td align="left" valign="middle"><input name="submit2" type="submit" class="formbutton" value="Close"  onclick="javscript:window.close();" /></td>
                              </tr>
                            </table></td>

                        </tr>

                      </table></td>

                    </tr>

                  </table>

                                </form>

                </td>

                <td width="129" align="left" valign="top">&nbsp;</td>

              </tr>

            </table>