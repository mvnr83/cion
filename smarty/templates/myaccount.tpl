{literal}
    <script src="Scripts/ajaxtabs.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function validate()
{
    
	var frm = document.form1;
	if(frm.email.value == '')
	{
		alert("Enter Email");
		frm.email.focus();
		return false;
	}
	else if(frm.fname.value == '')
	{
		alert("Ener First Name");
		frm.fname.focus();
		return false;
	}
	else if(frm.lname.value == '')
	{
		alert("Enter Last Name");
		frm.lname.focus();
		return false;
	}
	else if(frm.uname.value == '')
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
	}else if(frm.pwd.length < 6)
	{
		alert("Min length for password is 6");
		frm.pwd.focus();
		return false;
	}else if(frm.pwd.value.length > 0)
	{
            var charpos = frm.pwd.value.search("[^A-Za-z0-9\-_&%$!#@]");  
              if(charpos >= 0) {
		alert("Only alpha-numeric characters allowed in the Password. \n Allowed Special characters are -, _, &, @, %, $, #, !");
		frm.pwd.focus();
		return false;
            }
	}
	else if(frm.country.value == '')
	{
		alert("Select Country");
		frm.country.focus();
		return false;
	}
	else if(frm.company.value == '')
	{
		alert("Enter COmpany");
		frm.company.focus();
		return false;
	}
	else if(frm.jtitle.value == '')
	{
		alert("Enter Job Title");
		frm.jtitle.focus();
		return false;
	}
	else if(frm.industry.value == '')
	{
		alert("Enter Industry");
		frm.industry.focus();
		return false;
	}
	else if(frm.address1.value == '')
	{
		alert("Enter Address1");
		frm.address1.focus();
		return false;
	}
	else if(frm.city.value == '')
	{
		alert("Ener City");
		frm.city.focus();
		return false;
	}
	else if(frm.phone.value == '')
	{
		alert("Enter Phone");
		frm.phone.focus();
		return false;
	}

/*	else if(frm.servers.value == '')

	{

		alert("Enter No of Servers");

		frm.servers.focus();

		return false;

	}

	else if(frm.users.value == '')

	{

		alert("Enter No of Users");

		frm.users.focus();

		return false;

	}

	else if(frm.workstations.value == '')

	{

		alert("Enter No of Workstations");

		frm.workstations.focus();

		return false;

	}

*/	
        
        frm.act.value = 'edit';
        return true;
	
}
</script>
{/literal}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="2%">&nbsp;</td>
    <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><h2 class="navigation_protitle"><a href="index.php" style="text-decoration:none;" title="Home">Home</a></span> <span style="font-size:17px; color:#999999;">&raquo;</span> <span>My</span> Account</h2></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
            <td align="left" valign="top"><span class="black1">Thank you for your interest. The item you have requested will be presented immediately after you provide some basic personal and corporate information.</span></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="4%">&nbsp;</td>
            <td width="94%" height="350" align="left" valign="top"><ul id="countrytabs" class="shadetabs1">
                <!--<li><a href="#" rel="#default" class="selected"><span>Tab 1</span></a></li>-->
                <li><a href="contact_info.php" rel="countrycontainer"><span>Contact Information</span></a></li>
              <li><a href="mydownloads.php" rel="downloadcontainer"><span>My Downloads</span></a></li>
              <li><a href="mybilling.php" rel="billingcontainer"><span>My Billing</span></a></li>
              <!-- <li><a href="external4.htm" rel="#iframe"><span>Tab 4</span></a></li>-->
                <!--<li><a href="http://www.dynamicdrive.com"><span>Dynamic Drive</span></a></li>-->
              </ul>
                <div id="countrydivcontainer"  style="overflow-y: scroll;border:1px solid #bcbcbc; width:100%; height:100%; margin-bottom: 1em; margin-top:27px; padding: 10px"> </div>
              {literal}
              <script type="text/javascript">

var countries=new ddajaxtabs("countrytabs", "countrydivcontainer")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()

                  </script>
              {/literal} </td>
            <td width="4%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="2%">&nbsp;</td>
  </tr>
</table>
