<?php /* Smarty version 2.6.5-dev, created on 2016-11-21 17:17:16
         compiled from contact_info.tpl */ ?>
<?php echo '
<script language="javascript" type="text/javascript">
function validate()
{
    alert(\'pppp\');
	var frm = document.form1;
	if(frm.email.value == \'\')
	{
		alert("Enter Email");
		frm.email.focus();
		return false;
	}
	else if(frm.fname.value == \'\')
	{
		alert("Ener First Name");
		frm.fname.focus();
		return false;
	}
	else if(frm.lname.value == \'\')
	{
		alert("Enter Last Name");
		frm.lname.focus();
		return false;
	}
	else if(frm.uname.value == \'\')
	{
		alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
	else if(frm.pwd.value == \'\')
	{
		alert("Enter Password");
		frm.pwd.focus();
		return false;
	}else if(frm.pwd.value.length < 6)
	{
		alert("Min length for password is 6");
		frm.pwd.focus();
		return false;
	}else if(frm.pwd.value.length > 0)
	{
            var charpos = frm.pwd.value.search("[^A-Za-z0-9\\-_&%$!#@]");  
              if(charpos >= 0) {
		alert("Only alpha-numeric characters allowed in the Password. \\n Allowed Special characters are -, _, &, @, %, $, #, !");
		frm.pwd.focus();
		return false;
            }
	}
	else if(frm.country.value == \'\')
	{
		alert("Select Country");
		frm.country.focus();
		return false;
	}
	else if(frm.company.value == \'\')
	{
		alert("Enter COmpany");
		frm.company.focus();
		return false;
	}
	else if(frm.jtitle.value == \'\')
	{
		alert("Enter Job Title");
		frm.jtitle.focus();
		return false;
	}
	else if(frm.industry.value == \'\')
	{
		alert("Enter Industry");
		frm.industry.focus();
		return false;
	}
	else if(frm.address1.value == \'\')
	{
		alert("Enter Address1");
		frm.address1.focus();
		return false;
	}
	else if(frm.city.value == \'\')
	{
		alert("Ener City");
		frm.city.focus();
		return false;
	}
	else if(frm.phone.value == \'\')
	{
		alert("Enter Phone");
		frm.phone.focus();
		return false;
	}

/*	else if(frm.servers.value == \'\')

	{

		alert("Enter No of Servers");

		frm.servers.focus();

		return false;

	}

	else if(frm.users.value == \'\')

	{

		alert("Enter No of Users");

		frm.users.focus();

		return false;

	}

	else if(frm.workstations.value == \'\')

	{

		alert("Enter No of Workstations");

		frm.workstations.focus();

		return false;

	}

*/	else
	{
            alert(\'elase\');
		frm.act.value = \'edit\';
		return true;
	}
}
</script>
'; ?>

<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
          
          <tr>
            <td height="20" colspan="2" align="center" valign="middle" class="black">Fields marked with<span class="error"> * </span>are required.</td>
          </tr>
          <tr>
            <td colspan="2" align="center" valign="middle" class="black"><?php echo $this->_tpl_vars['msg']; ?>
</td>
          </tr>
		  <tr>
            <td colspan="2" align="center" valign="middle" class="black"><form name="form1" method="post" action="" onSubmit="javascript:return validate();">
		 <input type="hidden" name="act">
		 <table width="100%" border="0" cellspacing="4" cellpadding="0" style="border:1px solid #CCCCCC;">
<tr>
                    <td height="28" colspan="2" align="center" valign="middle" bgcolor="#f2f2f2" ><strong>Personal Information</strong> </td>
            <td colspan="2" align="center" valign="middle" nowrap="nowrap" bgcolor="#f2f2f2" ><strong>Company Information</strong> </td>
           </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">* </span>Email Address:</td>
                    <td align="left" valign="middle"><input name="email" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['email']; ?>
" /></td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">*</span> Company : </td>
                    <td align="left" valign="middle"><input name="company" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['company']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">* </span>First Name:</td>
                    <td align="left" valign="middle"><input name="fname" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['first_name']; ?>
" />                    </td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">*</span> Job Title : </td>
                    <td align="left" valign="middle"><select name="jtitle" class="selfield">
                        <option  value="">---Select---</option>
                        <option value="1" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '1'): ?> selected="selected"<?php endif; ?>>Application Developer</option>
                        <option value="2" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '2'): ?> selected="selected"<?php endif; ?>>C-Level (CEO,CFO,CIO,CMO,CSO,CTO)</option>
                        <option value="3" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '3'): ?> selected="selected"<?php endif; ?>>Database Administrator</option>
                        <option value="4" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '4'): ?> selected="selected"<?php endif; ?>>DBA Manager</option>
                        <option value="5" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '5'): ?> selected="selected"<?php endif; ?>>Developer</option>
                        <option value="6" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '6'): ?> selected="selected"<?php endif; ?>>eCommerce/eBusiness Manager</option>
                        <option value="7" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '7'): ?> selected="selected"<?php endif; ?>>Exchange/Mail Administrator</option>
                        <option value="8" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '8'): ?> selected="selected"<?php endif; ?>>Help Desk Staff/Manager</option>
                        <option value="9" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '9'): ?> selected="selected"<?php endif; ?>>Infrastructure Architect/Manager</option>
                        <option value="10" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '10'): ?> selected="selected"<?php endif; ?>>IT Applications Manager</option>
                        <option value="11" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '11'): ?> selected="selected"<?php endif; ?>>IT Architect</option>
                        <option value="12" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '12'): ?> selected="selected"<?php endif; ?>>IT Consultant</option>
                        <option value="13" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '13'): ?> selected="selected"<?php endif; ?>>IT Director/VP</option>
                        <option value="14" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '14'): ?> selected="selected"<?php endif; ?>>IT Manager</option>
                        <option value="15" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '15'): ?> selected="selected"<?php endif; ?>>IT Security Director</option>
                        <option value="16" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '16'): ?> selected="selected"<?php endif; ?>>Java Developer/Administrator</option>
                        <option value="17" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '17'): ?> selected="selected"<?php endif; ?>>Network Administrator</option>
                        <option value="18" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '18'): ?> selected="selected"<?php endif; ?>>Network Manager</option>
                        <option value="19" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '19'): ?> selected="selected"<?php endif; ?>>Non IT Director/VP</option>
                        <option value="20" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '20'): ?> selected="selected"<?php endif; ?>>Project Manager</option>
                        <option value="21" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '21'): ?> selected="selected"<?php endif; ?>>Software Engineer</option>
                        <option value="22" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '22'): ?> selected="selected"<?php endif; ?>>Student</option>
                        <option value="23" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '23'): ?> selected="selected"<?php endif; ?>>Systems Administrator</option>
                        <option value="24" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '24'): ?> selected="selected"<?php endif; ?>>Systems Analyst/Architect</option>
                        <option value="25" <?php if ($this->_tpl_vars['array'][0]['job_title'] == '25'): ?> selected="selected"<?php endif; ?>>Systems Engineer</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">* </span>Last Name:</td>
                    <td align="left" valign="middle"><input name="lname" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['last_name']; ?>
" /></td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">*</span> Industry : </td>
                    <td align="left" valign="middle"><select name="industry" class="selfield">
                        <option  value="">---Select---</option>
                        <option value="229" <?php if ($this->_tpl_vars['array'][0]['industry'] == '229'): ?> selected="selected"<?php endif; ?>>Banking&#160;&amp; Financing</option>
                        <option value="179" <?php if ($this->_tpl_vars['array'][0]['industry'] == '179'): ?> selected="selected"<?php endif; ?>>Charities/Non-profit</option>
                        <option value="161" <?php if ($this->_tpl_vars['array'][0]['industry'] == '161'): ?> selected="selected"<?php endif; ?>>Chemicals</option>
                        <option value="190" <?php if ($this->_tpl_vars['array'][0]['industry'] == '190'): ?> selected="selected"<?php endif; ?>>Construction &amp; Cement</option>
                        <option value="191" <?php if ($this->_tpl_vars['array'][0]['industry'] == '191'): ?> selected="selected"<?php endif; ?>>Federal &amp; Central Government</option>
                        <option value="168" <?php if ($this->_tpl_vars['array'][0]['industry'] == '168'): ?> selected="selected"<?php endif; ?>>Insurance</option>
                        <option value="231" <?php if ($this->_tpl_vars['array'][0]['industry'] == '231'): ?> selected="selected"<?php endif; ?>>Integrator/Consultancy</option>
                        <option value="180" <?php if ($this->_tpl_vars['array'][0]['industry'] == '180'): ?> selected="selected"<?php endif; ?>>Legal</option>
                        <option value="169" <?php if ($this->_tpl_vars['array'][0]['industry'] == '169'): ?> selected="selected"<?php endif; ?>>Leisure</option>
                        <option value="188" <?php if ($this->_tpl_vars['array'][0]['industry'] == '188'): ?> selected="selected"<?php endif; ?>>Local Government</option>
                        <option value="170" <?php if ($this->_tpl_vars['array'][0]['industry'] == '170'): ?> selected="selected"<?php endif; ?>>Manufacturing</option>
                        <option value="172" <?php if ($this->_tpl_vars['array'][0]['industry'] == '172'): ?> selected="selected"<?php endif; ?>>Media</option>
                        <option value="192" <?php if ($this->_tpl_vars['array'][0]['industry'] == '192'): ?> selected="selected"<?php endif; ?>>Other Government</option>
                        <option value="193" <?php if ($this->_tpl_vars['array'][0]['industry'] == '193'): ?> selected="selected"<?php endif; ?>>Petrochemical &amp; Mining</option>
                        <option value="182" <?php if ($this->_tpl_vars['array'][0]['industry'] == '182'): ?> selected="selected"<?php endif; ?>>Pharmaceuticals &amp; Healthcare</option>
                        <option value="174" <?php if ($this->_tpl_vars['array'][0]['industry'] == '174'): ?> selected="selected"<?php endif; ?>>Real Estate/Property Management</option>
                        <option value="181" <?php if ($this->_tpl_vars['array'][0]['industry'] == '181'): ?> selected="selected"<?php endif; ?>>Recruiting/Training</option>
                        <option value="175" <?php if ($this->_tpl_vars['array'][0]['industry'] == '175'): ?> selected="selected"<?php endif; ?>>Retail</option>
                        <option value="183" <?php if ($this->_tpl_vars['array'][0]['industry'] == '183'): ?> selected="selected"<?php endif; ?>>Software &amp; Services</option>
                        <option value="176" <?php if ($this->_tpl_vars['array'][0]['industry'] == '176'): ?> selected="selected"<?php endif; ?>>Telecommunications</option>
                        <option value="194" <?php if ($this->_tpl_vars['array'][0]['industry'] == '194'): ?> selected="selected"<?php endif; ?>>Training Organization</option>
                        <option value="187" <?php if ($this->_tpl_vars['array'][0]['industry'] == '187'): ?> selected="selected"<?php endif; ?>>Transportation &amp; Logistics</option>
                        <option value="178" <?php if ($this->_tpl_vars['array'][0]['industry'] == '178'): ?> selected="selected"<?php endif; ?>>Utilities</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">*</span> User Name:</td>
                    <td align="left" valign="middle"><input name="uname" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['user_name']; ?>
" readonly="true" />                    </td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap"><span class="error">*</span> Address 1 : </td>
                    <td align="left" valign="middle"><input name="address1" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['address1']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11"><span class="error">* </span>Password:</td>
                    <td align="left" valign="middle"><input name="pwd" type="password" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['password']; ?>
"  /></td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap">Address 2 :</td>
                    <td align="left" valign="middle"><input name="address2" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['address2']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11"><span class="error">*</span> Country:</td>
                    <td align="left" valign="middle"><select name="country" class="selfield">
                        <option  value="">---Select---</option>
                        <option value="AF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AF'): ?> selected="selected"<?php endif; ?>>AFGHANISTAN</option>
                        <option value="AL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AL'): ?> selected="selected"<?php endif; ?>>ALBANIA</option>
                        <option value="DZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DZ'): ?> selected="selected"<?php endif; ?>>ALGERIA</option>
                        <option value="AS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AS'): ?> selected="selected"<?php endif; ?>>AMERICAN SAMOA</option>
                        <option value="AD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AD'): ?> selected="selected"<?php endif; ?>>ANDORRA</option>
                        <option value="AO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AO'): ?> selected="selected"<?php endif; ?>>ANGOLA</option>
                        <option value="AI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AI'): ?> selected="selected"<?php endif; ?>>ANGUILLA</option>
                        <option value="AQ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AQ'): ?> selected="selected"<?php endif; ?>>ANTARTICA</option>
                        <option value="AG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AG'): ?> selected="selected"<?php endif; ?>>ANTIGUA AND BARBUDA</option>
                        <option value="AR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AR'): ?> selected="selected"<?php endif; ?>>ARGENTINA</option>
                        <option value="AM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AM'): ?> selected="selected"<?php endif; ?>>ARMENIA</option>
                        <option value="AW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AW'): ?> selected="selected"<?php endif; ?>>ARUBA</option>
                        <option value="AU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AU'): ?> selected="selected"<?php endif; ?>>AUSTRALIA</option>
                        <option value="AT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AT'): ?> selected="selected"<?php endif; ?>>AUSTRIA</option>
                        <option value="AZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AZ'): ?> selected="selected"<?php endif; ?>>AZERBAIJAN</option>
                        <option value="BH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BH'): ?> selected="selected"<?php endif; ?>>BAHRAIN</option>
                        <option value="BD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BD'): ?> selected="selected"<?php endif; ?>>BANGLADESH</option>
                        <option value="BB" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BB'): ?> selected="selected"<?php endif; ?>>BARBADOS</option>
                        <option value="BY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BY'): ?> selected="selected"<?php endif; ?>>BELARUS</option>
                        <option value="BE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BE'): ?> selected="selected"<?php endif; ?>>BELGIUM</option>
                        <option value="BZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BZ'): ?> selected="selected"<?php endif; ?>>BELIZE</option>
                        <option value="BJ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BJ'): ?> selected="selected"<?php endif; ?>>BENIN</option>
                        <option value="BM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BM'): ?> selected="selected"<?php endif; ?>>BERMUDA</option>
                        <option value="BT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BT'): ?> selected="selected"<?php endif; ?>>BHUTAN</option>
                        <option value="BO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BO'): ?> selected="selected"<?php endif; ?>>BOLIVIA</option>
                        <option value="BA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BA'): ?> selected="selected"<?php endif; ?>>BOSNIA AND HERZOGOVINA</option>
                        <option value="BW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BW'): ?> selected="selected"<?php endif; ?>>BOTSWANA</option>
                        <option value="BV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BV'): ?> selected="selected"<?php endif; ?>>BOUVET ISLAND</option>
                        <option value="BR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BR'): ?> selected="selected"<?php endif; ?>>BRAZIL</option>
                        <option value="IO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IO'): ?> selected="selected"<?php endif; ?>>BRITISH OCEAN TERRITORY</option>
                        <option value="BN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BN'): ?> selected="selected"<?php endif; ?>>BRUNEI</option>
                        <option value="BG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BG'): ?> selected="selected"<?php endif; ?>>BULGARIA</option>
                        <option value="BF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BF'): ?> selected="selected"<?php endif; ?>>BURKINO</option>
                        <option value="BI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BI'): ?> selected="selected"<?php endif; ?>>BURUNDI</option>
                        <option value="KH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KH'): ?> selected="selected"<?php endif; ?>>CAMBODIA</option>
                        <option value="CM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CM'): ?> selected="selected"<?php endif; ?>>CAMEROON</option>
                        <option value="CA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CA'): ?> selected="selected"<?php endif; ?>>CANADA</option>
                        <option value="CV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CV'): ?> selected="selected"<?php endif; ?>>CAPE-VERDE</option>
                        <option value="KY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KY'): ?> selected="selected"<?php endif; ?>>CAYMAN ISLANDS</option>
                        <option value="CF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CF'): ?> selected="selected"<?php endif; ?>>CENTRAL AFRICAN REP.</option>
                        <option value="TD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TD'): ?> selected="selected"<?php endif; ?>>CHAD</option>
                        <option value="CL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CL'): ?> selected="selected"<?php endif; ?>>CHILE</option>
                        <option value="CN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CN'): ?> selected="selected"<?php endif; ?>>CHINA</option>
                        <option value="CX" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CX'): ?> selected="selected"<?php endif; ?>>CHRISTMAS ISLAND</option>
                        <option value="CC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CC'): ?> selected="selected"<?php endif; ?>>COCOS (KEELING) ISLANDS</option>
                        <option value="CO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CO'): ?> selected="selected"<?php endif; ?>>COLOMBIA</option>
                        <option value="KM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KM'): ?> selected="selected"<?php endif; ?>>COMOROS</option>
                        <option value="CG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CG'): ?> selected="selected"<?php endif; ?>>CONGO</option>
                        <option value="CK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CK'): ?> selected="selected"<?php endif; ?>>COOK ISLANDS</option>
                        <option value="CR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CR'): ?> selected="selected"<?php endif; ?>>COSTA RICA</option>
                        <option value="HR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HR'): ?> selected="selected"<?php endif; ?>>CROATIA</option>
                        <option value="CY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CY'): ?> selected="selected"<?php endif; ?>>CYPRUS</option>
                        <option value="CZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CZ'): ?> selected="selected"<?php endif; ?>>CZECH REPUBLIC</option>
                        <option value="CD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CD'): ?> selected="selected"<?php endif; ?>>DEMOCRATIC REPUBLIC OF CONGO</option>
                      <option> </option>
                      <option value="DK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DK'): ?> selected="selected"<?php endif; ?>>DENMARK</option>
                        <option value="DJ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DJ'): ?> selected="selected"<?php endif; ?>>DJIBOUTI</option>
                        <option value="DM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DM'): ?> selected="selected"<?php endif; ?>>DOMINICA</option>
                        <option value="DO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DO'): ?> selected="selected"<?php endif; ?>>DOMINICAN REPUBLIC</option>
                        <option value="TP" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TP'): ?> selected="selected"<?php endif; ?>>EAST TIMOR</option>
                        <option value="EC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'EC'): ?> selected="selected"<?php endif; ?>>ECUADOR</option>
                        <option value="EG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'EG'): ?> selected="selected"<?php endif; ?>>EGYPT</option>
                        <option value="SV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SV'): ?> selected="selected"<?php endif; ?>>EL SALVADOR</option>
                        <option value="GQ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GQ'): ?> selected="selected"<?php endif; ?>>EQUATORIAL GUINEA</option>
                        <option value="ER" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ER'): ?> selected="selected"<?php endif; ?>>ERITREA</option>
                        <option value="EE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'EE'): ?> selected="selected"<?php endif; ?>>ESTONIA</option>
                        <option value="ET" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ET'): ?> selected="selected"<?php endif; ?>>ETHIOPIA</option>
                        <option value="FK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FK'): ?> selected="selected"<?php endif; ?>>FALKLAND ISLANDS (MALVINAS)</option>
                        <option value="FO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FO'): ?> selected="selected"<?php endif; ?>>FAROE ISLANDS</option>
                        <option value="FJ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FJ'): ?> selected="selected"<?php endif; ?>>FIJI</option>
                        <option value="FI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FI'): ?> selected="selected"<?php endif; ?>>FINLAND</option>
                        <option value="FR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FR'): ?> selected="selected"<?php endif; ?>>FRANCE</option>
                        <option value="GF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GF'): ?> selected="selected"<?php endif; ?>>FRENCH GUIANA</option>
                        <option value="PF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PF'): ?> selected="selected"<?php endif; ?>>FRENCH POLYNESIA</option>
                        <option value="GA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GA'): ?> selected="selected"<?php endif; ?>>GABON</option>
                        <option value="GE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GE'): ?> selected="selected"<?php endif; ?>>GEORGIA</option>
                        <option value="DE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'DE'): ?> selected="selected"<?php endif; ?>>GERMANY</option>
                        <option value="GH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GH'): ?> selected="selected"<?php endif; ?>>GHANA</option>
                        <option value="GI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GI'): ?> selected="selected"<?php endif; ?>>GIBRALTAR</option>
                        <option value="GR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GR'): ?> selected="selected"<?php endif; ?>>GREECE</option>
                        <option value="GL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GL'): ?> selected="selected"<?php endif; ?>>GREENLAND</option>
                        <option value="GD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GD'): ?> selected="selected"<?php endif; ?>>GRENADA</option>
                        <option value="GP" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GP'): ?> selected="selected"<?php endif; ?>>GUADELOUPE</option>
                        <option value="GU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GU'): ?> selected="selected"<?php endif; ?>>GUAM</option>
                        <option value="GT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GT'): ?> selected="selected"<?php endif; ?>>GUATEMALA</option>
                        <option value="GN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GN'): ?> selected="selected"<?php endif; ?>>GUINEA</option>
                        <option value="GW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GW'): ?> selected="selected"<?php endif; ?>>GUINEA-BISSAU</option>
                        <option value="GY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GY'): ?> selected="selected"<?php endif; ?>>GUYANA</option>
                        <option value="HT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HT'): ?> selected="selected"<?php endif; ?>>HAITI</option>
                        <option value="HM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HM'): ?> selected="selected"<?php endif; ?>>HEARD AND McDONALD ISLANDS</option>
                        <option value="VA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VA'): ?> selected="selected"<?php endif; ?>>HOLY SEE (VATICAN)</option>
                        <option value="HN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HN'): ?> selected="selected"<?php endif; ?>>HONDURAS</option>
                        <option value="HK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HK'): ?> selected="selected"<?php endif; ?>>HONG KONG</option>
                        <option value="HU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'HU'): ?> selected="selected"<?php endif; ?>>HUNGARY</option>
                        <option value="IS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IS'): ?> selected="selected"<?php endif; ?>>ICELAND</option>
                        <option value="IN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IN'): ?> selected="selected"<?php endif; ?>>INDIA</option>
                        <option value="ID" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ID'): ?> selected="selected"<?php endif; ?>>INDONESIA</option>
                        <option value="IQ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IQ'): ?> selected="selected"<?php endif; ?>>IRAQ</option>
                        <option value="IE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IE'): ?> selected="selected"<?php endif; ?>>IRELAND</option>
                        <option value="IL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IL'): ?> selected="selected"<?php endif; ?>>ISRAEL</option>
                        <option value="IT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'IT'): ?> selected="selected"<?php endif; ?>>ITALY</option>
                        <option value="CI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'CI'): ?> selected="selected"<?php endif; ?>>IVORY COAST</option>
                        <option value="JM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'JM'): ?> selected="selected"<?php endif; ?>>JAMAICA</option>
                        <option value="JP" <?php if ($this->_tpl_vars['array'][0]['country'] == 'JP'): ?> selected="selected"<?php endif; ?>>JAPAN</option>
                        <option value="JO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'JO'): ?> selected="selected"<?php endif; ?>>JORDAN</option>
                        <option value="KZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KZ'): ?> selected="selected"<?php endif; ?>>KAZAKHSTAN</option>
                        <option value="KE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KE'): ?> selected="selected"<?php endif; ?>>KENYA</option>
                        <option value="KI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KI'): ?> selected="selected"<?php endif; ?>>KIRIBATI</option>
                        <option value="KR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KR'): ?> selected="selected"<?php endif; ?>>KOREA, SOUTH</option>
                        <option value="KW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KW'): ?> selected="selected"<?php endif; ?>>KUWAIT</option>
                        <option value="KG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KG'): ?> selected="selected"<?php endif; ?>>KYRGYZSTAN</option>
                        <option value="LA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LA'): ?> selected="selected"<?php endif; ?>>LAOS</option>
                        <option value="LV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LV'): ?> selected="selected"<?php endif; ?>>LATVIA</option>
                        <option value="LB" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LB'): ?> selected="selected"<?php endif; ?>>LEBANON</option>
                        <option value="LS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LS'): ?> selected="selected"<?php endif; ?>>LESOTHO</option>
                        <option value="LR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LR'): ?> selected="selected"<?php endif; ?>>LIBERIA</option>
                        <option value="LY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LY'): ?> selected="selected"<?php endif; ?>>LIBYA</option>
                        <option value="LI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LI'): ?> selected="selected"<?php endif; ?>>LIECHTENSTEIN</option>
                        <option value="LX" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LX'): ?> selected="selected"<?php endif; ?>>LITHUANIA</option>
                        <option value="LU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LU'): ?> selected="selected"<?php endif; ?>>LUXEMBOURG</option>
                        <option value="MO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MO'): ?> selected="selected"<?php endif; ?>>MACAU</option>
                        <option value="MK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MK'): ?> selected="selected"<?php endif; ?>>MACEDONIA</option>
                        <option value="MG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MG'): ?> selected="selected"<?php endif; ?>>MADAGASCAR</option>
                        <option value="MW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MW'): ?> selected="selected"<?php endif; ?>>MALAWI</option>
                        <option value="MY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MY'): ?> selected="selected"<?php endif; ?>>MALAYSIA</option>
                        <option value="MV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MV'): ?> selected="selected"<?php endif; ?>>MALDIVES</option>
                        <option value="ML" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ML'): ?> selected="selected"<?php endif; ?>>MALI</option>
                        <option value="MT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MT'): ?> selected="selected"<?php endif; ?>>MALTA</option>
                        <option value="MH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MH'): ?> selected="selected"<?php endif; ?>>MARSHALL ISLANDS</option>
                        <option value="MQ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MQ'): ?> selected="selected"<?php endif; ?>>MARTINIQUE</option>
                        <option value="MR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MR'): ?> selected="selected"<?php endif; ?>>MAURITANIA</option>
                        <option value="MU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MU'): ?> selected="selected"<?php endif; ?>>MAURITIUS</option>
                        <option value="YT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'YT'): ?> selected="selected"<?php endif; ?>>MAYOTTE</option>
                        <option value="MX" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MX'): ?> selected="selected"<?php endif; ?>>MEXICO</option>
                        <option value="FM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'FM'): ?> selected="selected"<?php endif; ?>>MICRONESIA</option>
                        <option value="MD" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MD'): ?> selected="selected"<?php endif; ?>>MOLDOVA</option>
                        <option value="MC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MC'): ?> selected="selected"<?php endif; ?>>MONACO</option>
                        <option value="MN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MN'): ?> selected="selected"<?php endif; ?>>MONGOLIA</option>
                        <option value="MS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MS'): ?> selected="selected"<?php endif; ?>>MONTSERRAT</option>
                        <option value="MA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MA'): ?> selected="selected"<?php endif; ?>>MOROCCO</option>
                        <option value="MZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MZ'): ?> selected="selected"<?php endif; ?>>MOZAMBIQUE</option>
                        <option value="BU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BU'): ?> selected="selected"<?php endif; ?>>MYANMAR</option>
                        <option value="NA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NA'): ?> selected="selected"<?php endif; ?>>NAMIBIA</option>
                        <option value="NR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NR'): ?> selected="selected"<?php endif; ?>>NAURU</option>
                        <option value="NP" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NP'): ?> selected="selected"<?php endif; ?>>NEPAL</option>
                        <option value="NL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NL'): ?> selected="selected"<?php endif; ?>>NETHERLANDS</option>
                        <option value="AN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AN'): ?> selected="selected"<?php endif; ?>>NETHERLANDS ANTILLES</option>
                        <option value="NZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NZ'): ?> selected="selected"<?php endif; ?>>NEW ZEALAND</option>
                        <option value="NI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NI'): ?> selected="selected"<?php endif; ?>>NICARAGUA</option>
                        <option value="NE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NE'): ?> selected="selected"<?php endif; ?>>NIGER</option>
                        <option value="NG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NG'): ?> selected="selected"<?php endif; ?>>NIGERIA</option>
                        <option value="NU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NU'): ?> selected="selected"<?php endif; ?>>NIUE</option>
                        <option value="NF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NF'): ?> selected="selected"<?php endif; ?>>NORFOLK ISLAND</option>
                        <option value="MP" <?php if ($this->_tpl_vars['array'][0]['country'] == 'MP'): ?> selected="selected"<?php endif; ?>>NORTHERN MARIANA ISLANDS</option>
                        <option value="NO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'NO'): ?> selected="selected"<?php endif; ?>>NORWAY</option>
                        <option value="OM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'OM'): ?> selected="selected"<?php endif; ?>>OMAN</option>
                        <option value="PK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PK'): ?> selected="selected"<?php endif; ?>>PAKISTAN</option>
                        <option value="PW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PW'): ?> selected="selected"<?php endif; ?>>PALAU</option>
                        <option value="PS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PS'): ?> selected="selected"<?php endif; ?>>PALESTINE</option>
                        <option value="PA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PA'): ?> selected="selected"<?php endif; ?>>PANAMA</option>
                        <option value="PG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PG'): ?> selected="selected"<?php endif; ?>>PAPUA NEW GUINEA</option>
                        <option value="PY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PY'): ?> selected="selected"<?php endif; ?>>PARAGUAY</option>
                        <option value="PE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PE'): ?> selected="selected"<?php endif; ?>>PERU</option>
                        <option value="PH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PH'): ?> selected="selected"<?php endif; ?>>PHILIPPINES</option>
                        <option value="PN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PN'): ?> selected="selected"<?php endif; ?>>PITCAIRN</option>
                        <option value="PL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PL'): ?> selected="selected"<?php endif; ?>>POLAND</option>
                        <option value="PT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PT'): ?> selected="selected"<?php endif; ?>>PORTUGAL</option>
                        <option value="PR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PR'): ?> selected="selected"<?php endif; ?>>PUERTO RICO</option>
                        <option value="QA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'QA'): ?> selected="selected"<?php endif; ?>>QATAR</option>
                        <option value="RE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'RE'): ?> selected="selected"<?php endif; ?>>REUNION</option>
                        <option value="RO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'RO'): ?> selected="selected"<?php endif; ?>>ROMANIA</option>
                        <option value="RU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'RU'): ?> selected="selected"<?php endif; ?>>RUSSIA</option>
                        <option value="RW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'RW'): ?> selected="selected"<?php endif; ?>>RWANDA</option>
                        <option value="GS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GS'): ?> selected="selected"<?php endif; ?>>S. GEORGIA AND S. SANDWICH ISLANDS</option>
                        <option value="SH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SH'): ?> selected="selected"<?php endif; ?>>SAINT HELENA</option>
                        <option value="KN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'KN'): ?> selected="selected"<?php endif; ?>>SAINT KITTS AND NEVIS</option>
                        <option value="LC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LC'): ?> selected="selected"<?php endif; ?>>SAINT LUCIA</option>
                        <option value="PM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'PM'): ?> selected="selected"<?php endif; ?>>SAINT PIERRE AND MIQUELON</option>
                        <option value="VC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VC'): ?> selected="selected"<?php endif; ?>>SAINT VINCENT AND GRENADINES</option>
                        <option value="SM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SM'): ?> selected="selected"<?php endif; ?>>SAN MARINO</option>
                        <option value="ST" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ST'): ?> selected="selected"<?php endif; ?>>SAO TOME AND PRINCIPE</option>
                        <option value="SA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SA'): ?> selected="selected"<?php endif; ?>>SAUDI ARABIA</option>
                        <option value="SN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SN'): ?> selected="selected"<?php endif; ?>>SENEGAL</option>
                        <option value="YU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'YU'): ?> selected="selected"<?php endif; ?>>Serbia &amp; Montenegro </option>
                        <option value="SC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SC'): ?> selected="selected"<?php endif; ?>>SEYCHELLES</option>
                        <option value="SL" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SL'): ?> selected="selected"<?php endif; ?>>SIERRA LEONE</option>
                        <option value="SG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SG'): ?> selected="selected"<?php endif; ?>>SINGAPORE</option>
                        <option value="SK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SK'): ?> selected="selected"<?php endif; ?>>SLOVAKIA</option>
                        <option value="SI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SI'): ?> selected="selected"<?php endif; ?>>SLOVENIA</option>
                        <option value="SB" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SB'): ?> selected="selected"<?php endif; ?>>SOLOMAN ISLANDS</option>
                        <option value="SO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SO'): ?> selected="selected"<?php endif; ?>>SOMALIA</option>
                        <option value="ZA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ZA'): ?> selected="selected"<?php endif; ?>>SOUTH AFRICA</option>
                        <option value="ES" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ES'): ?> selected="selected"<?php endif; ?>>SPAIN</option>
                        <option value="LK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'LK'): ?> selected="selected"<?php endif; ?>>SRI LANKA</option>
                        <option value="SR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SR'): ?> selected="selected"<?php endif; ?>>SURINAME</option>
                        <option value="SJ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SJ'): ?> selected="selected"<?php endif; ?>>SVALBARD AND JAN MAYEN</option>
                        <option value="WZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'WZ'): ?> selected="selected"<?php endif; ?>>SWAZILAND</option>
                        <option value="SE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SE'): ?> selected="selected"<?php endif; ?>>SWEDEN</option>
                        <option value="SZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'SZ'): ?> selected="selected"<?php endif; ?>>SWITZERLAND</option>
                        <option value="TW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TW'): ?> selected="selected"<?php endif; ?>>TAIWAN</option>
                        <option value="TJ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TJ'): ?> selected="selected"<?php endif; ?>>TAJIKSTAN</option>
                        <option value="TZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TZ'): ?> selected="selected"<?php endif; ?>>TANZANIA</option>
                        <option value="TH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TH'): ?> selected="selected"<?php endif; ?>>THAILAND</option>
                        <option value="BS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'BS'): ?> selected="selected"<?php endif; ?>>THE BAHAMAS</option>
                        <option value="GM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GM'): ?> selected="selected"<?php endif; ?>>THE GAMBIA</option>
                        <option value="TG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TG'): ?> selected="selected"<?php endif; ?>>TOGO</option>
                        <option value="TK" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TK'): ?> selected="selected"<?php endif; ?>>TOKELAU</option>
                        <option value="TO" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TO'): ?> selected="selected"<?php endif; ?>>TONGA</option>
                        <option value="TT" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TT'): ?> selected="selected"<?php endif; ?>>TRINIDAD AND TOBAGO</option>
                        <option value="TN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TN'): ?> selected="selected"<?php endif; ?>>TUNISIA</option>
                        <option value="TR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TR'): ?> selected="selected"<?php endif; ?>>TURKEY</option>
                        <option value="TM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TM'): ?> selected="selected"<?php endif; ?>>TURKMENISTAN</option>
                        <option value="TC" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TC'): ?> selected="selected"<?php endif; ?>>TURKS AND CAICOS ISLANDS</option>
                        <option value="TV" <?php if ($this->_tpl_vars['array'][0]['country'] == 'TV'): ?> selected="selected"<?php endif; ?>>TUVALU</option>
                        <option value="UG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'UG'): ?> selected="selected"<?php endif; ?>>UGANDA</option>
                        <option value="UA" <?php if ($this->_tpl_vars['array'][0]['country'] == 'UA'): ?> selected="selected"<?php endif; ?>>UKRAINE</option>
                        <option value="AE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'AE'): ?> selected="selected"<?php endif; ?>>UNITED ARAB EMIRATES</option>
                        <option value="GB" <?php if ($this->_tpl_vars['array'][0]['country'] == 'GB'): ?> selected="selected"<?php endif; ?>>UNITED KINGDOM</option>
                        <option value="US" <?php if ($this->_tpl_vars['array'][0]['country'] == 'US'): ?> selected="selected"<?php endif; ?>>UNITED STATES</option>
                        <option value="UY" <?php if ($this->_tpl_vars['array'][0]['country'] == 'UY'): ?> selected="selected"<?php endif; ?>>URUGUAY</option>
                        <option value="UZ" <?php if ($this->_tpl_vars['array'][0]['country'] == 'UZ'): ?> selected="selected"<?php endif; ?>>UZBEKISTAN</option>
                        <option value="VU" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VU'): ?> selected="selected"<?php endif; ?>>VANUATU</option>
                        <option value="VE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VE'): ?> selected="selected"<?php endif; ?>>VENEZUELA</option>
                        <option value="VN" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VN'): ?> selected="selected"<?php endif; ?>>VIETNAM</option>
                        <option value="VG" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VG'): ?> selected="selected"<?php endif; ?>>VIRGIN ISLANDS, BRITISH</option>
                        <option value="VI" <?php if ($this->_tpl_vars['array'][0]['country'] == 'VI'): ?> selected="selected"<?php endif; ?>>VIRGIN ISLANDS, US</option>
                        <option value="WF" <?php if ($this->_tpl_vars['array'][0]['country'] == 'WF'): ?> selected="selected"<?php endif; ?>>WALLIS AND FUTUNA ISLANDS</option>
                        <option value="EH" <?php if ($this->_tpl_vars['array'][0]['country'] == 'EH'): ?> selected="selected"<?php endif; ?>>WESTERN SAHARA</option>
                        <option value="WS" <?php if ($this->_tpl_vars['array'][0]['country'] == 'WS'): ?> selected="selected"<?php endif; ?>>WESTERN SAMOA</option>
                        <option value="YE" <?php if ($this->_tpl_vars['array'][0]['country'] == 'YE'): ?> selected="selected"<?php endif; ?>>YEMEN</option>
                        <option value="ZR" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ZR'): ?> selected="selected"<?php endif; ?>>ZAIRE</option>
                        <option value="ZM" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ZM'): ?> selected="selected"<?php endif; ?>>ZAMBIA</option>
                        <option value="ZW" <?php if ($this->_tpl_vars['array'][0]['country'] == 'ZW'): ?> selected="selected"<?php endif; ?>>ZIMBABWE</option>
                      </select>                    </td>
                    <td align="right" valign="middle" class="ver11"><span class="error">*</span> City : </td>
                    <td align="left" valign="middle"><input name="city" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['city']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle" class="ver11" nowrap="nowrap">State Province: </td>
                    <td align="left" valign="middle"><input name="state" type="text" class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['state']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle" class="ver11">Postal Code:</td>
                    <td align="left" valign="middle"><input name="pcode" type="text" class="txtfield" maxlength="10" value="<?php echo $this->_tpl_vars['array'][0]['zipcode']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle" class="ver11">&nbsp;</td>
                    <td align="left" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle" class="ver11"><span class="error">*</span> Phone:</td>
                    <td align="left" valign="middle"><input name="phone" type="text"  class="txtfield" value="<?php echo $this->_tpl_vars['array'][0]['phone_no']; ?>
" /></td>
                  </tr>
                  <tr>
                    <td height="30" colspan="4" align="center" valign="middle" class="ver11"><input type="image" name="Submit" id="imageField" src="images/submitbtn.gif" /></td>
                  </tr>
                </table>
            </form></td>
          </tr>
        </table>