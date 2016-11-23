{literal}
<script type="text/javascript">

    /* varying radii, "all" browsers */
    DD_roundies.addRule('.login', '5px 5px 5px 5px', true);
    DD_roundies.addRule('.innerlogin', '5px 5px 5px 5px', true);

 
</script>
{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="titlebg" height="28">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center">Fields marked with<span class="error"> * </span>are required.</td>
  </tr>
  <tr>
    <td align="center">{$msg}</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><form name="form1" method="post" action="">
		 <input type="hidden" name="act" value="add">
                <div class="login" style="width:500px;">
<h2>Registration</h2>
<div class="innerlogin">



		 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
           <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Personal Information : </h3></td>
             </tr>
           <tr>
             <td width="45%" align="right" valign="middle"><span class="error">* </span>Email Address:</td>
             <td width="55%" align="left" valign="middle"><input name="email" type="text" class="txtfield" value="{$postval.email}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> First Name:</td>
             <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" value="{$postval.fname}" />
                 <!-- <a href="#" class="ari">We value your privacy</a>--></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Last Name:</td>
             <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" value="{$postval.lname}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> User Name:</td>
             <td align="left" valign="middle"><input name="uname" type="text" class="txtfield" value="{$postval.uname}"/>             </td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">* </span>Password:</td>
             <td align="left" valign="middle"><input name="pwd" type="password" class="txtfield" value=""/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country:</td>
             <td align="left" valign="middle"><select name="country" class="selfield">
                 <option  value="" {if $postval.country eq ''} selected="selected"  {/if}>---Select---</option>
                 <option value="AF" {if $postval.country eq 'AF'} selected="selected" {/if}>AFGHANISTAN</option>
                 
                        <option value="AL" {if $postval.country eq 'AL'} selected="selected"{/if}>ALBANIA</option>
                        <option value="DZ" {if $postval.country eq 'DZ'} selected="selected"{/if}>ALGERIA</option>
                        <option value="AS" {if $postval.country eq 'AS'} selected="selected"{/if}>AMERICAN SAMOA</option>
                        <option value="AD" {if $postval.country eq 'AD'} selected="selected"{/if}>ANDORRA</option>
                        <option value="AO" {if $postval.country eq 'AO'} selected="selected"{/if}>ANGOLA</option>
                        <option value="AI" {if $postval.country eq 'AI'} selected="selected"{/if}>ANGUILLA</option>
                        <option value="AQ" {if $postval.country eq 'AQ'} selected="selected"{/if}>ANTARTICA</option>
                        <option value="AG" {if $postval.country eq 'AG'} selected="selected"{/if}>ANTIGUA AND BARBUDA</option>
                        <option value="AR" {if $postval.country eq 'AR'} selected="selected"{/if}>ARGENTINA</option>
                        <option value="AM" {if $postval.country eq 'AM'} selected="selected"{/if}>ARMENIA</option>
                        <option value="AW" {if $postval.country eq 'AW'} selected="selected"{/if}>ARUBA</option>
                        <option value="AU" {if $postval.country eq 'AU'} selected="selected"{/if}>AUSTRALIA</option>
                        <option value="AT" {if $postval.country eq 'AT'} selected="selected"{/if}>AUSTRIA</option>
                        <option value="AZ" {if $postval.country eq 'AZ'} selected="selected"{/if}>AZERBAIJAN</option>
                        <option value="BH" {if $postval.country eq 'BH'} selected="selected"{/if}>BAHRAIN</option>
                        <option value="BD" {if $postval.country eq 'BD'} selected="selected"{/if}>BANGLADESH</option>
                        <option value="BB" {if $postval.country eq 'BB'} selected="selected"{/if}>BARBADOS</option>
                        <option value="BY" {if $postval.country eq 'BY'} selected="selected"{/if}>BELARUS</option>
                        <option value="BE" {if $postval.country eq 'BE'} selected="selected"{/if}>BELGIUM</option>
                        <option value="BZ" {if $postval.country eq 'BZ'} selected="selected"{/if}>BELIZE</option>
                        <option value="BJ" {if $postval.country eq 'BJ'} selected="selected"{/if}>BENIN</option>
                        <option value="BM" {if $postval.country eq 'BM'} selected="selected"{/if}>BERMUDA</option>
                        <option value="BT" {if $postval.country eq 'BT'} selected="selected"{/if}>BHUTAN</option>
                        <option value="BO" {if $postval.country eq 'BO'} selected="selected"{/if}>BOLIVIA</option>
                        <option value="BA" {if $postval.country eq 'BA'} selected="selected"{/if}>BOSNIA AND HERZOGOVINA</option>
                        <option value="BW" {if $postval.country eq 'BW'} selected="selected"{/if}>BOTSWANA</option>
                        <option value="BV" {if $postval.country eq 'BV'} selected="selected"{/if}>BOUVET ISLAND</option>
                        <option value="BR" {if $postval.country eq 'BR'} selected="selected"{/if}>BRAZIL</option>
                        <option value="IO" {if $postval.country eq 'IO'} selected="selected"{/if}>BRITISH OCEAN TERRITORY</option>
                        <option value="BN" {if $postval.country eq 'BN'} selected="selected"{/if}>BRUNEI</option>
                        <option value="BG" {if $postval.country eq 'BG'} selected="selected"{/if}>BULGARIA</option>
                        <option value="BF" {if $postval.country eq 'BF'} selected="selected"{/if}>BURKINO</option>
                        <option value="BI" {if $postval.country eq 'BI'} selected="selected"{/if}>BURUNDI</option>
                        <option value="KH" {if $postval.country eq 'KH'} selected="selected"{/if}>CAMBODIA</option>
                        <option value="CM" {if $postval.country eq 'CM'} selected="selected"{/if}>CAMEROON</option>
                        <option value="CA" {if $postval.country eq 'CA'} selected="selected"{/if}>CANADA</option>
                        <option value="CV" {if $postval.country eq 'CV'} selected="selected"{/if}>CAPE-VERDE</option>
                        <option value="KY" {if $postval.country eq 'KY'} selected="selected"{/if}>CAYMAN ISLANDS</option>
                        <option value="CF" {if $postval.country eq 'CF'} selected="selected"{/if}>CENTRAL AFRICAN REP.</option>
                        <option value="TD" {if $postval.country eq 'TD'} selected="selected"{/if}>CHAD</option>
                        <option value="CL" {if $postval.country eq 'CL'} selected="selected"{/if}>CHILE</option>
                        <option value="CN" {if $postval.country eq 'CN'} selected="selected"{/if}>CHINA</option>
                        <option value="CX" {if $postval.country eq 'CX'} selected="selected"{/if}>CHRISTMAS ISLAND</option>
                        <option value="CC" {if $postval.country eq 'CC'} selected="selected"{/if}>COCOS (KEELING) ISLANDS</option>
                        <option value="CO" {if $postval.country eq 'CO'} selected="selected"{/if}>COLOMBIA</option>
                        <option value="KM" {if $postval.country eq 'KM'} selected="selected"{/if}>COMOROS</option>
                        <option value="CG" {if $postval.country eq 'CG'} selected="selected"{/if}>CONGO</option>
                        <option value="CK" {if $postval.country eq 'CK'} selected="selected"{/if}>COOK ISLANDS</option>
                        <option value="CR" {if $postval.country eq 'CR'} selected="selected"{/if}>COSTA RICA</option>
                        <option value="HR" {if $postval.country eq 'HR'} selected="selected"{/if}>CROATIA</option>
                        <option value="CY" {if $postval.country eq 'CY'} selected="selected"{/if}>CYPRUS</option>
                        <option value="CZ" {if $postval.country eq 'CZ'} selected="selected"{/if}>CZECH REPUBLIC</option>
                        <option value="CD" {if $postval.country eq 'CD'} selected="selected"{/if}>DEMOCRATIC REPUBLIC OF CONGO</option>
                      
                      <option value="DK" {if $postval.country eq 'DK'} selected="selected"{/if}>DENMARK</option>
                        <option value="DJ" {if $postval.country eq 'DJ'} selected="selected"{/if}>DJIBOUTI</option>
                        <option value="DM" {if $postval.country eq 'DM'} selected="selected"{/if}>DOMINICA</option>
                        <option value="DO" {if $postval.country eq 'DO'} selected="selected"{/if}>DOMINICAN REPUBLIC</option>
                        <option value="TP" {if $postval.country eq 'TP'} selected="selected"{/if}>EAST TIMOR</option>
                        <option value="EC" {if $postval.country eq 'EC'} selected="selected"{/if}>ECUADOR</option>
                        <option value="EG" {if $postval.country eq 'EG'} selected="selected"{/if}>EGYPT</option>
                        <option value="SV" {if $postval.country eq 'SV'} selected="selected"{/if}>EL SALVADOR</option>
                        <option value="GQ" {if $postval.country eq 'GQ'} selected="selected"{/if}>EQUATORIAL GUINEA</option>
                        <option value="ER" {if $postval.country eq 'ER'} selected="selected"{/if}>ERITREA</option>
                        <option value="EE" {if $postval.country eq 'EE'} selected="selected"{/if}>ESTONIA</option>
                        <option value="ET" {if $postval.country eq 'ET'} selected="selected"{/if}>ETHIOPIA</option>
                        <option value="FK" {if $postval.country eq 'FK'} selected="selected"{/if}>FALKLAND ISLANDS (MALVINAS)</option>
                        <option value="FO" {if $postval.country eq 'FO'} selected="selected"{/if}>FAROE ISLANDS</option>
                        <option value="FJ" {if $postval.country eq 'FJ'} selected="selected"{/if}>FIJI</option>
                        <option value="FI" {if $postval.country eq 'FI'} selected="selected"{/if}>FINLAND</option>
                        <option value="FR" {if $postval.country eq 'FR'} selected="selected"{/if}>FRANCE</option>
                        <option value="GF" {if $postval.country eq 'GF'} selected="selected"{/if}>FRENCH GUIANA</option>
                        <option value="PF" {if $postval.country eq 'PF'} selected="selected"{/if}>FRENCH POLYNESIA</option>
                        <option value="GA" {if $postval.country eq 'GA'} selected="selected"{/if}>GABON</option>
                        <option value="GE" {if $postval.country eq 'GE'} selected="selected"{/if}>GEORGIA</option>
                        <option value="DE" {if $postval.country eq 'DE'} selected="selected"{/if}>GERMANY</option>
                        <option value="GH" {if $postval.country eq 'GH'} selected="selected"{/if}>GHANA</option>
                        <option value="GI" {if $postval.country eq 'GI'} selected="selected"{/if}>GIBRALTAR</option>
                        <option value="GR" {if $postval.country eq 'GR'} selected="selected"{/if}>GREECE</option>
                        <option value="GL" {if $postval.country eq 'GL'} selected="selected"{/if}>GREENLAND</option>
                        <option value="GD" {if $postval.country eq 'GD'} selected="selected"{/if}>GRENADA</option>
                        <option value="GP" {if $postval.country eq 'GP'} selected="selected"{/if}>GUADELOUPE</option>
                        <option value="GU" {if $postval.country eq 'GU'} selected="selected"{/if}>GUAM</option>
                        <option value="GT" {if $postval.country eq 'GT'} selected="selected"{/if}>GUATEMALA</option>
                        <option value="GN" {if $postval.country eq 'GN'} selected="selected"{/if}>GUINEA</option>
                        <option value="GW" {if $postval.country eq 'GW'} selected="selected"{/if}>GUINEA-BISSAU</option>
                        <option value="GY" {if $postval.country eq 'GY'} selected="selected"{/if}>GUYANA</option>
                        <option value="HT" {if $postval.country eq 'HT'} selected="selected"{/if}>HAITI</option>
                        <option value="HM" {if $postval.country eq 'HM'} selected="selected"{/if}>HEARD AND McDONALD ISLANDS</option>
                        <option value="VA" {if $postval.country eq 'VA'} selected="selected"{/if}>HOLY SEE (VATICAN)</option>
                        <option value="HN" {if $postval.country eq 'HN'} selected="selected"{/if}>HONDURAS</option>
                        <option value="HK" {if $postval.country eq 'HK'} selected="selected"{/if}>HONG KONG</option>
                        <option value="HU" {if $postval.country eq 'HU'} selected="selected"{/if}>HUNGARY</option>
                        <option value="IS" {if $postval.country eq 'IS'} selected="selected"{/if}>ICELAND</option>
                        <option value="IN" {if $postval.country eq 'IN'} selected="selected"{/if}>INDIA</option>
                        <option value="ID" {if $postval.country eq 'ID'} selected="selected"{/if}>INDONESIA</option>
                        <option value="IQ" {if $postval.country eq 'IQ'} selected="selected"{/if}>IRAQ</option>
                        <option value="IE" {if $postval.country eq 'IE'} selected="selected"{/if}>IRELAND</option>
                        <option value="IL" {if $postval.country eq 'IL'} selected="selected"{/if}>ISRAEL</option>
                        <option value="IT" {if $postval.country eq 'IT'} selected="selected"{/if}>ITALY</option>
                        <option value="CI" {if $postval.country eq 'CI'} selected="selected"{/if}>IVORY COAST</option>
                        <option value="JM" {if $postval.country eq 'JM'} selected="selected"{/if}>JAMAICA</option>
                        <option value="JP" {if $postval.country eq 'JP'} selected="selected"{/if}>JAPAN</option>
                        <option value="JO" {if $postval.country eq 'JO'} selected="selected"{/if}>JORDAN</option>
                        <option value="KZ" {if $postval.country eq 'KZ'} selected="selected"{/if}>KAZAKHSTAN</option>
                        <option value="KE" {if $postval.country eq 'KE'} selected="selected"{/if}>KENYA</option>
                        <option value="KI" {if $postval.country eq 'KI'} selected="selected"{/if}>KIRIBATI</option>
                        <option value="KR" {if $postval.country eq 'KR'} selected="selected"{/if}>KOREA, SOUTH</option>
                        <option value="KW" {if $postval.country eq 'KW'} selected="selected"{/if}>KUWAIT</option>
                        <option value="KG" {if $postval.country eq 'KG'} selected="selected"{/if}>KYRGYZSTAN</option>
                        <option value="LA" {if $postval.country eq 'LA'} selected="selected"{/if}>LAOS</option>
                        <option value="LV" {if $postval.country eq 'LV'} selected="selected"{/if}>LATVIA</option>
                        <option value="LB" {if $postval.country eq 'LB'} selected="selected"{/if}>LEBANON</option>
                        <option value="LS" {if $postval.country eq 'LS'} selected="selected"{/if}>LESOTHO</option>
                        <option value="LR" {if $postval.country eq 'LR'} selected="selected"{/if}>LIBERIA</option>
                        <option value="LY" {if $postval.country eq 'LY'} selected="selected"{/if}>LIBYA</option>
                        <option value="LI" {if $postval.country eq 'LI'} selected="selected"{/if}>LIECHTENSTEIN</option>
                        <option value="LX" {if $postval.country eq 'LX'} selected="selected"{/if}>LITHUANIA</option>
                        <option value="LU" {if $postval.country eq 'LU'} selected="selected"{/if}>LUXEMBOURG</option>
                        <option value="MO" {if $postval.country eq 'MO'} selected="selected"{/if}>MACAU</option>
                        <option value="MK" {if $postval.country eq 'MK'} selected="selected"{/if}>MACEDONIA</option>
                        <option value="MG" {if $postval.country eq 'MG'} selected="selected"{/if}>MADAGASCAR</option>
                        <option value="MW" {if $postval.country eq 'MW'} selected="selected"{/if}>MALAWI</option>
                        <option value="MY" {if $postval.country eq 'MY'} selected="selected"{/if}>MALAYSIA</option>
                        <option value="MV" {if $postval.country eq 'MV'} selected="selected"{/if}>MALDIVES</option>
                        <option value="ML" {if $postval.country eq 'ML'} selected="selected"{/if}>MALI</option>
                        <option value="MT" {if $postval.country eq 'MT'} selected="selected"{/if}>MALTA</option>
                        <option value="MH" {if $postval.country eq 'MH'} selected="selected"{/if}>MARSHALL ISLANDS</option>
                        <option value="MQ" {if $postval.country eq 'MQ'} selected="selected"{/if}>MARTINIQUE</option>
                        <option value="MR" {if $postval.country eq 'MR'} selected="selected"{/if}>MAURITANIA</option>
                        <option value="MU" {if $postval.country eq 'MU'} selected="selected"{/if}>MAURITIUS</option>
                        <option value="YT" {if $postval.country eq 'YT'} selected="selected"{/if}>MAYOTTE</option>
                        <option value="MX" {if $postval.country eq 'MX'} selected="selected"{/if}>MEXICO</option>
                        <option value="FM" {if $postval.country eq 'FM'} selected="selected"{/if}>MICRONESIA</option>
                        <option value="MD" {if $postval.country eq 'MD'} selected="selected"{/if}>MOLDOVA</option>
                        <option value="MC" {if $postval.country eq 'MC'} selected="selected"{/if}>MONACO</option>
                        <option value="MN" {if $postval.country eq 'MN'} selected="selected"{/if}>MONGOLIA</option>
                        <option value="MS" {if $postval.country eq 'MS'} selected="selected"{/if}>MONTSERRAT</option>
                        <option value="MA" {if $postval.country eq 'MA'} selected="selected"{/if}>MOROCCO</option>
                        <option value="MZ" {if $postval.country eq 'MZ'} selected="selected"{/if}>MOZAMBIQUE</option>
                        <option value="BU" {if $postval.country eq 'BU'} selected="selected"{/if}>MYANMAR</option>
                        <option value="NA" {if $postval.country eq 'NA'} selected="selected"{/if}>NAMIBIA</option>
                        <option value="NR" {if $postval.country eq 'NR'} selected="selected"{/if}>NAURU</option>
                        <option value="NP" {if $postval.country eq 'NP'} selected="selected"{/if}>NEPAL</option>
                        <option value="NL" {if $postval.country eq 'NL'} selected="selected"{/if}>NETHERLANDS</option>
                        <option value="AN" {if $postval.country eq 'AN'} selected="selected"{/if}>NETHERLANDS ANTILLES</option>
                        <option value="NZ" {if $postval.country eq 'NZ'} selected="selected"{/if}>NEW ZEALAND</option>
                        <option value="NI" {if $postval.country eq 'NI'} selected="selected"{/if}>NICARAGUA</option>
                        <option value="NE" {if $postval.country eq 'NE'} selected="selected"{/if}>NIGER</option>
                        <option value="NG" {if $postval.country eq 'NG'} selected="selected"{/if}>NIGERIA</option>
                        <option value="NU" {if $postval.country eq 'NU'} selected="selected"{/if}>NIUE</option>
                        <option value="NF" {if $postval.country eq 'NF'} selected="selected"{/if}>NORFOLK ISLAND</option>
                        <option value="MP" {if $postval.country eq 'MP'} selected="selected"{/if}>NORTHERN MARIANA ISLANDS</option>
                        <option value="NO" {if $postval.country eq 'NO'} selected="selected"{/if}>NORWAY</option>
                        <option value="OM" {if $postval.country eq 'OM'} selected="selected"{/if}>OMAN</option>
                        <option value="PK" {if $postval.country eq 'PK'} selected="selected"{/if}>PAKISTAN</option>
                        <option value="PW" {if $postval.country eq 'PW'} selected="selected"{/if}>PALAU</option>
                        <option value="PS" {if $postval.country eq 'PS'} selected="selected"{/if}>PALESTINE</option>
                        <option value="PA" {if $postval.country eq 'PA'} selected="selected"{/if}>PANAMA</option>
                        <option value="PG" {if $postval.country eq 'PG'} selected="selected"{/if}>PAPUA NEW GUINEA</option>
                        <option value="PY" {if $postval.country eq 'PY'} selected="selected"{/if}>PARAGUAY</option>
                        <option value="PE" {if $postval.country eq 'PE'} selected="selected"{/if}>PERU</option>
                        <option value="PH" {if $postval.country eq 'PH'} selected="selected"{/if}>PHILIPPINES</option>
                        <option value="PN" {if $postval.country eq 'PN'} selected="selected"{/if}>PITCAIRN</option>
                        <option value="PL" {if $postval.country eq 'PL'} selected="selected"{/if}>POLAND</option>
                        <option value="PT" {if $postval.country eq 'PT'} selected="selected"{/if}>PORTUGAL</option>
                        <option value="PR" {if $postval.country eq 'PR'} selected="selected"{/if}>PUERTO RICO</option>
                        <option value="QA" {if $postval.country eq 'QA'} selected="selected"{/if}>QATAR</option>
                        <option value="RE" {if $postval.country eq 'RE'} selected="selected"{/if}>REUNION</option>
                        <option value="RO" {if $postval.country eq 'RO'} selected="selected"{/if}>ROMANIA</option>
                        <option value="RU" {if $postval.country eq 'RU'} selected="selected"{/if}>RUSSIA</option>
                        <option value="RW" {if $postval.country eq 'RW'} selected="selected"{/if}>RWANDA</option>
                        <option value="GS" {if $postval.country eq 'GS'} selected="selected"{/if}>S. GEORGIA AND S. SANDWICH ISLANDS</option>
                        <option value="SH" {if $postval.country eq 'SH'} selected="selected"{/if}>SAINT HELENA</option>
                        <option value="KN" {if $postval.country eq 'KN'} selected="selected"{/if}>SAINT KITTS AND NEVIS</option>
                        <option value="LC" {if $postval.country eq 'LC'} selected="selected"{/if}>SAINT LUCIA</option>
                        <option value="PM" {if $postval.country eq 'PM'} selected="selected"{/if}>SAINT PIERRE AND MIQUELON</option>
                        <option value="VC" {if $postval.country eq 'VC'} selected="selected"{/if}>SAINT VINCENT AND GRENADINES</option>
                        <option value="SM" {if $postval.country eq 'SM'} selected="selected"{/if}>SAN MARINO</option>
                        <option value="ST" {if $postval.country eq 'ST'} selected="selected"{/if}>SAO TOME AND PRINCIPE</option>
                        <option value="SA" {if $postval.country eq 'SA'} selected="selected"{/if}>SAUDI ARABIA</option>
                        <option value="SN" {if $postval.country eq 'SN'} selected="selected"{/if}>SENEGAL</option>
                        <option value="YU" {if $postval.country eq 'YU'} selected="selected"{/if}>Serbia &amp; Montenegro </option>
                        <option value="SC" {if $postval.country eq 'SC'} selected="selected"{/if}>SEYCHELLES</option>
                        <option value="SL" {if $postval.country eq 'SL'} selected="selected"{/if}>SIERRA LEONE</option>
                        <option value="SG" {if $postval.country eq 'SG'} selected="selected"{/if}>SINGAPORE</option>
                        <option value="SK" {if $postval.country eq 'SK'} selected="selected"{/if}>SLOVAKIA</option>
                        <option value="SI" {if $postval.country eq 'SI'} selected="selected"{/if}>SLOVENIA</option>
                        <option value="SB" {if $postval.country eq 'SB'} selected="selected"{/if}>SOLOMAN ISLANDS</option>
                        <option value="SO" {if $postval.country eq 'SO'} selected="selected"{/if}>SOMALIA</option>
                        <option value="ZA" {if $postval.country eq 'ZA'} selected="selected"{/if}>SOUTH AFRICA</option>
                        <option value="ES" {if $postval.country eq 'ES'} selected="selected"{/if}>SPAIN</option>
                        <option value="LK" {if $postval.country eq 'LK'} selected="selected"{/if}>SRI LANKA</option>
                        <option value="SR" {if $postval.country eq 'SR'} selected="selected"{/if}>SURINAME</option>
                        <option value="SJ" {if $postval.country eq 'SJ'} selected="selected"{/if}>SVALBARD AND JAN MAYEN</option>
                        <option value="WZ" {if $postval.country eq 'WZ'} selected="selected"{/if}>SWAZILAND</option>
                        <option value="SE" {if $postval.country eq 'SE'} selected="selected"{/if}>SWEDEN</option>
                        <option value="SZ" {if $postval.country eq 'SZ'} selected="selected"{/if}>SWITZERLAND</option>
                        <option value="TW" {if $postval.country eq 'TW'} selected="selected"{/if}>TAIWAN</option>
                        <option value="TJ" {if $postval.country eq 'TJ'} selected="selected"{/if}>TAJIKSTAN</option>
                        <option value="TZ" {if $postval.country eq 'TZ'} selected="selected"{/if}>TANZANIA</option>
                        <option value="TH" {if $postval.country eq 'TH'} selected="selected"{/if}>THAILAND</option>
                        <option value="BS" {if $postval.country eq 'BS'} selected="selected"{/if}>THE BAHAMAS</option>
                        <option value="GM" {if $postval.country eq 'GM'} selected="selected"{/if}>THE GAMBIA</option>
                        <option value="TG" {if $postval.country eq 'TG'} selected="selected"{/if}>TOGO</option>
                        <option value="TK" {if $postval.country eq 'TK'} selected="selected"{/if}>TOKELAU</option>
                        <option value="TO" {if $postval.country eq 'TO'} selected="selected"{/if}>TONGA</option>
                        <option value="TT" {if $postval.country eq 'TT'} selected="selected"{/if}>TRINIDAD AND TOBAGO</option>
                        <option value="TN" {if $postval.country eq 'TN'} selected="selected"{/if}>TUNISIA</option>
                        <option value="TR" {if $postval.country eq 'TR'} selected="selected"{/if}>TURKEY</option>
                        <option value="TM" {if $postval.country eq 'TM'} selected="selected"{/if}>TURKMENISTAN</option>
                        <option value="TC" {if $postval.country eq 'TC'} selected="selected"{/if}>TURKS AND CAICOS ISLANDS</option>
                        <option value="TV" {if $postval.country eq 'TV'} selected="selected"{/if}>TUVALU</option>
                        <option value="UG" {if $postval.country eq 'UG'} selected="selected"{/if}>UGANDA</option>
                        <option value="UA" {if $postval.country eq 'UA'} selected="selected"{/if}>UKRAINE</option>
                        <option value="AE" {if $postval.country eq 'AE'} selected="selected"{/if}>UNITED ARAB EMIRATES</option>
                        <option value="GB" {if $postval.country eq 'GB'} selected="selected"{/if}>UNITED KINGDOM</option>
                        <option value="US" {if $postval.country eq 'US'} selected="selected"{/if}>UNITED STATES</option>
                        <option value="UY" {if $postval.country eq 'UY'} selected="selected"{/if}>URUGUAY</option>
                        <option value="UZ" {if $postval.country eq 'UZ'} selected="selected"{/if}>UZBEKISTAN</option>
                        <option value="VU" {if $postval.country eq 'VU'} selected="selected"{/if}>VANUATU</option>
                        <option value="VE" {if $postval.country eq 'VE'} selected="selected"{/if}>VENEZUELA</option>
                        <option value="VN" {if $postval.country eq 'VN'} selected="selected"{/if}>VIETNAM</option>
                        <option value="VG" {if $postval.country eq 'VG'} selected="selected"{/if}>VIRGIN ISLANDS, BRITISH</option>
                        <option value="VI" {if $postval.country eq 'VI'} selected="selected"{/if}>VIRGIN ISLANDS, US</option>
                        <option value="WF" {if $postval.country eq 'WF'} selected="selected"{/if}>WALLIS AND FUTUNA ISLANDS</option>
                        <option value="EH" {if $postval.country eq 'EH'} selected="selected"{/if}>WESTERN SAHARA</option>
                        <option value="WS" {if $postval.country eq 'WS'} selected="selected"{/if}>WESTERN SAMOA</option>
                        <option value="YE" {if $postval.country eq 'YE'} selected="selected"{/if}>YEMEN</option>
                        <option value="ZR" {if $postval.country eq 'ZR'} selected="selected"{/if}>ZAIRE</option>
                        <option value="ZM" {if $postval.country eq 'ZM'} selected="selected"{/if}>ZAMBIA</option>
                        <option value="ZW" {if $postval.country eq 'ZW'} selected="selected"{/if}>ZIMBABWE</option>
             </select></td>
           </tr>
           <tr>
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Company Information :</h3></td>
             </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company : </td>
             <td align="left" valign="middle"><input name="company" type="text" class="txtfield" value="{$postval.company}"/></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Job Title : </td>
             <td align="left" valign="middle"><select name="jtitle" class="selfield">
                 <option  value="" {if $postval.jtitle eq ''} selected="selected"{/if}>---Select---</option>
                 <option value="1" {if $postval.jtitle eq '1'} selected="selected"{/if}>Application Developer</option>
                        <option value="2" {if $postval.jtitle eq '2'} selected="selected"{/if}>C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
                        <option value="3" {if $postval.jtitle eq '3'} selected="selected"{/if}>Database Administrator</option>
                        <option value="4" {if $postval.jtitle eq '4'} selected="selected"{/if}>DBA Manager</option>
                        <option value="5" {if $postval.jtitle eq '5'} selected="selected"{/if}>Developer</option>
                        <option value="6" {if $postval.jtitle eq '6'} selected="selected"{/if}>eCommerce/eBusiness Manager</option>
                        <option value="7" {if $postval.jtitle eq '7'} selected="selected"{/if}>Exchange/Mail Administrator</option>
                        <option value="8" {if $postval.jtitle eq '8'} selected="selected"{/if}>Help Desk Staff/Manager</option>
                        <option value="9" {if $postval.jtitle eq '9'} selected="selected"{/if}>Infrastructure Architect/Manager</option>
                        <option value="10" {if $postval.jtitle eq '10'} selected="selected"{/if}>IT Applications Manager</option>
                        <option value="11" {if $postval.jtitle eq '11'} selected="selected"{/if}>IT Architect</option>
                        <option value="12" {if $postval.jtitle eq '12'} selected="selected"{/if}>IT Consultant</option>
                        <option value="13" {if $postval.jtitle eq '13'} selected="selected"{/if}>IT Director/VP</option>
                        <option value="14" {if $postval.jtitle eq '14'} selected="selected"{/if}>IT Manager</option>
                        <option value="15" {if $postval.jtitle eq '15'} selected="selected"{/if}>IT Security Director</option>
                        <option value="16" {if $postval.jtitle eq '16'} selected="selected"{/if}>Java Developer/Administrator</option>
                        <option value="17" {if $postval.jtitle eq '17'} selected="selected"{/if}>Network Administrator</option>
                        <option value="18" {if $postval.jtitle eq '18'} selected="selected"{/if}>Network Manager</option>
                        <option value="19" {if $postval.jtitle eq '19'} selected="selected"{/if}>Non IT Director/VP</option>
                        <option value="20" {if $postval.jtitle eq '20'} selected="selected"{/if}>Project Manager</option>
                        <option value="21" {if $postval.jtitle eq '21'} selected="selected"{/if}>Software Engineer</option>
                        <option value="22" {if $postval.jtitle eq '22'} selected="selected"{/if}>Student</option>
                        <option value="23" {if $postval.jtitle eq '23'} selected="selected"{/if}>Systems Administrator</option>
                        <option value="24" {if $postval.jtitle eq '24'} selected="selected"{/if}>Systems Analyst/Architect</option>
                        <option value="25" {if $postval.jtitle eq '25'} selected="selected"{/if}>Systems Engineer</option>
             </select></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Industry : </td>
             <td align="left" valign="middle"><select name="industry" class="selfield">
                 <option  value="" {if $postval.industry eq ''} selected="selected"{/if}>---Select---</option>
                 <option value="229" {if $postval.industry eq '229'} selected="selected"{/if}>Banking&#160;&amp; Financing</option>
                        <option value="179" {if $postval.industry eq '179'} selected="selected"{/if}>Charities/Non-profit</option>
                        <option value="161" {if $postval.industry eq '161'} selected="selected"{/if}>Chemicals</option>
                        <option value="190" {if $postval.industry eq '190'} selected="selected"{/if}>Construction &amp; Cement</option>
                        <option value="191" {if $postval.industry eq '191'} selected="selected"{/if}>Federal &amp; Central Government</option>
                        <option value="168" {if $postval.industry eq '168'} selected="selected"{/if}>Insurance</option>
                        <option value="231" {if $postval.industry eq '231'} selected="selected"{/if}>Integrator/Consultancy</option>
                        <option value="180" {if $postval.industry eq '180'} selected="selected"{/if}>Legal</option>
                        <option value="169" {if $postval.industry eq '169'} selected="selected"{/if}>Leisure</option>
                        <option value="188" {if $postval.industry eq '188'} selected="selected"{/if}>Local Government</option>
                        <option value="170" {if $postval.industry eq '170'} selected="selected"{/if}>Manufacturing</option>
                        <option value="172" {if $postval.industry eq '172'} selected="selected"{/if}>Media</option>
                        <option value="192" {if $postval.industry eq '192'} selected="selected"{/if}>Other Government</option>
                        <option value="193" {if $postval.industry eq '193'} selected="selected"{/if}>Petrochemical &amp; Mining</option>
                        <option value="182" {if $postval.industry eq '182'} selected="selected"{/if}>Pharmaceuticals &amp; Healthcare</option>
                        <option value="174" {if $postval.industry eq '174'} selected="selected"{/if}>Real Estate/Property Management</option>
                        <option value="181" {if $postval.industry eq '181'} selected="selected"{/if}>Recruiting/Training</option>
                        <option value="175" {if $postval.industry eq '175'} selected="selected"{/if}>Retail</option>
                        <option value="183" {if $postval.industry eq '183'} selected="selected"{/if}>Software &amp; Services</option>
                        <option value="176" {if $postval.industry eq '176'} selected="selected"{/if}>Telecommunications</option>
                        <option value="194" {if $postval.industry eq '194'} selected="selected"{/if}>Training Organization</option>
                        <option value="187" {if $postval.industry eq '187'} selected="selected"{/if}>Transportation &amp; Logistics</option>
                        <option value="178" {if $postval.industry eq '178'} selected="selected"{/if}>Utilities</option>
             </select></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address 1 : </td>
             <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" value="{$postval.address1}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" value="{$postval.address2}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City : </td>
             <td align="left" valign="middle"><input name="city" type="text" class="txtfield" value="{$postval.city}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Country/State/Province/Territory: </td>

             <td align="left" valign="middle"><input name="state" type="text" class="txtfield" value="{$postval.state}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Postal Code:</td>
             <td align="left" valign="middle"><input name="pcode" type="text" maxlength="10" class="txtfield" value="{$postval.pcode}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" value="{$postval.phone}" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"></td>
             <td align="left" valign="middle"><img src="Captcha/CaptchaSecurityImages.php?width=100&height=40&characters=6" /></td>
           </tr>
            <tr>
             <td align="right" valign="middle"><span class="error">*</span>Captcha:</td>
             <td align="left" valign="middle"><input id="security_code" name="security_code" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle">&nbsp;</td>
           </tr>
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle"><input type="image" name="Submit" id="imageField" src="images/registerbtn.gif" />            </td>
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
            </form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>


                {literal}
<script language="JavaScript" type="text/javascript">
    //You should create the validator only after the definition of the HTML form
    var frmvalidator = new Validator("form1");

    frmvalidator.addValidation("email", "maxlen=50", "50");
    frmvalidator.addValidation("email", "req", "Please enter your Email Address");
    frmvalidator.addValidation("email", "email", "Please enter  a valid Email Address");

    frmvalidator.addValidation("fname", "req", "Please enter First Name");
    frmvalidator.addValidation("fname", "alpha", "Please enter First Name");
    frmvalidator.addValidation("lname", "req", "Please enter Last Name");
    frmvalidator.addValidation("lname", "alpha", "Please enter Last Name");
    frmvalidator.addValidation("uname", "req", "Please enter User Name");
    frmvalidator.addValidation("uname", "alnumhyphen", "Please enter User Name");
    frmvalidator.addValidation("pwd", "req", "Please enter your Password");
    frmvalidator.addValidation("pwd", "alphanumericsplchar", "Only alpha-numeric characters allowed in the Password. \n Allowed Special characters are -, _, &, @, %, $, #, !");
    frmvalidator.addValidation("pwd", "minlen=6", "Min length for password is 6");

    frmvalidator.addValidation("country", "dontselect=0", "Please Select the Country");

    frmvalidator.addValidation("company", "req", "Please enter Company Name");
    frmvalidator.addValidation("company", "alpha_s");

    frmvalidator.addValidation("jtitle", "dontselect=0", "Please Select the Job Title");
    frmvalidator.addValidation("industry", "dontselect=0", "Please Select the Industry");

    frmvalidator.addValidation("address1", "req", "Please enter your Address");
    frmvalidator.addValidation("address1", "alnumhyphen_s", "Please enter your Address");
    frmvalidator.addValidation("city", "req", "Please enter your City Name");
    frmvalidator.addValidation("city", "alpha_s", "Please enter your City Name");

    frmvalidator.addValidation("phone", "numhyphen", "Phone Number should be numberic\nEx:999-999-9999");
    frmvalidator.addValidation("phone", "req", "Please enter your Phone Number");

    frmvalidator.addValidation("security_code", "req", "Please enter captcha");
  
  
</script>

{/literal}