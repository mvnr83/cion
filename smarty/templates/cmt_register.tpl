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
                <div class="login" style="width:600px;">
<h2>CMT Beta Registration</h2>
<div class="innerlogin">



		 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="4">
           <!--  <tr>

                    <td colspan="2" align="left" valign="top" class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</td>

                  </tr>

                -->
           
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> First Name:</td>
             <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" id="fname" />
                 <!-- <a href="#" class="ari">We value your privacy</a>--></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Last Name:</td>
             <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" id="lname" /></td>
           </tr>
           
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company Name : </td>
             <td align="left" valign="middle"><input name="companyname" type="text" class="txtfield" id="companyname" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span>  Number of users are they BPOS customer? : </td>
             <td align="left" valign="middle"><input name="numberofusers" type="text" class="txtfield" id="numberofusers" /></td>
           </tr>
           
           <tr>
             <td width="47%" align="right" valign="middle"><span class="error">* </span>Email Address:</td>
             <td width="53%" align="left" valign="middle"><input name="email" type="text" class="txtfield" />                <span style="color:#999999;">Company mail id only</span></td>
           </tr>
           
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Country:</td>
             <td align="left" valign="middle"><select name="country" class="selfield">
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
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" /></td>
           </tr>
           
           <tr>
             <td align="right" valign="middle">&nbsp;</td>
             <td align="left" valign="middle"><input type="image" name="Submit" id="imageField" src="images/registerbtn.gif" />            </td>
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
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>


{literal}
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1");
  
  frmvalidator.addValidation("fname","req","Please enter First Name");
  frmvalidator.addValidation("fname","alpha","Please enter First Name");
  frmvalidator.addValidation("lname","req","Please enter Last Name");
  frmvalidator.addValidation("lname","alpha","Please enter Last Name");  
  frmvalidator.addValidation("companyname","req","Please enter Company Name");
  frmvalidator.addValidation("companyname","alpha_s");
  frmvalidator.addValidation("numberofusers","req","Please enter  Number of users, are they BPOS customer?");
  
  frmvalidator.addValidation("email","maxlen=50","50");
  frmvalidator.addValidation("email","req","Please enter your Email Address");
  frmvalidator.addValidation("email","email","Please enter  a valid Email Address");

  frmvalidator.addValidation("country","dontselect=0","Please Select the Country");
  
  frmvalidator.addValidation("phone","numhyphen","Phone Number should be numberic\nEx:999-999-9999");
  frmvalidator.addValidation("phone","req","Please enter your Phone Number");
  
</script>

{/literal}