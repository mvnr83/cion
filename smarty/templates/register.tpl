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
             <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" />
                 <!-- <a href="#" class="ari">We value your privacy</a>--></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Last Name:</td>
             <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> User Name:</td>
             <td align="left" valign="middle"><input name="uname" type="text" class="txtfield" />             </td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">* </span>Password:</td>
             <td align="left" valign="middle"><input name="pwd" type="password" class="txtfield" /></td>
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
             <td height="30" colspan="2" align="left" valign="middle" bgcolor="#f7f7f7"><h3>Company Information :</h3></td>
             </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Company : </td>
             <td align="left" valign="middle"><input name="company" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Job Title : </td>
             <td align="left" valign="middle"><select name="jtitle" class="selfield">
                 <option  value="" selected="selected">---Select---</option>
                 <option value="1">Application Developer</option>
                 <option value="2">C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
                 <option value="3">Database Administrator</option>
                 <option value="4">DBA Manager</option>
                 <option value="5">Developer</option>
                 <option value="6">eCommerce/eBusiness Manager</option>
                 <option value="7">Exchange/Mail Administrator</option>
                 <option value="8">Help Desk Staff/Manager</option>
                 <option value="9">Infrastructure Architect/Manager</option>
                 <option value="10">IT Applications Manager</option>
                 <option value="11">IT Architect</option>
                 <option value="12">IT Consultant</option>
                 <option value="13">IT Director/VP</option>
                 <option value="14">IT Manager</option>
                 <option value="15">IT Security Director</option>
                 <option value="16">Java Developer/Administrator</option>
                 <option value="17">Network Administrator</option>
                 <option value="18">Network Manager</option>
                 <option value="19">Non IT Director/VP</option>
                 <option value="20">Project Manager</option>
                 <option value="21">Software Engineer</option>
                 <option value="22">Student</option>
                 <option value="23">Systems Administrator</option>
                 <option value="24">Systems Analyst/Architect</option>
                 <option value="25">Systems Engineer</option>
             </select></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Industry : </td>
             <td align="left" valign="middle"><select name="industry" class="selfield">
                 <option  value="" selected="selected">---Select---</option>
                 <option value="229">Banking&#160;&amp; Financing</option>
                 <option value="179">Charities/Non-profit</option>
                 <option value="161">Chemicals</option>
                 <option value="190">Construction &amp; Cement</option>
                 <option value="191">Federal &amp; Central Government</option>
                 <option value="168">Insurance</option>
                 <option value="231">Integrator/Consultancy</option>
                 <option value="180">Legal</option>
                 <option value="169">Leisure</option>
                 <option value="188">Local Government</option>
                 <option value="170">Manufacturing</option>
                 <option value="172">Media</option>
                 <option value="192">Other Government</option>
                 <option value="193">Petrochemical &amp; Mining</option>
                 <option value="182">Pharmaceuticals &amp; Healthcare</option>
                 <option value="174">Real Estate/Property Management</option>
                 <option value="181">Recruiting/Training</option>
                 <option value="175">Retail</option>
                 <option value="183">Software &amp; Services</option>
                 <option value="176">Telecommunications</option>
                 <option value="194">Training Organization</option>
                 <option value="187">Transportation &amp; Logistics</option>
                 <option value="178">Utilities</option>
             </select></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Address 1 : </td>
             <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Address 2 :</td>
             <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> City : </td>
             <td align="left" valign="middle"><input name="city" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Country/State/Province/Territory: </td>

             <td align="left" valign="middle"><input name="state" type="text" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle">Postal Code:</td>
             <td align="left" valign="middle"><input name="pcode" type="text" maxlength="10" class="txtfield" /></td>
           </tr>
           <tr>
             <td align="right" valign="middle"><span class="error">*</span> Phone:</td>
             <td align="left" valign="middle"><input name="phone" type="text" class="txtfield" /></td>
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
    frmvalidator.addValidation("pwd", "alphanumericsplchar", "Only alpha-numeric characters allowed in the Password. \n Allowed Special characters are -, _, &, @, %");
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