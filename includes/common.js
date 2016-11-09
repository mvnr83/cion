<script language="javascript">
function validation()
{
	thisobj = document.form1;
	if(thisobj.Fname.value=="")
	{
		alert("First Name Cannot be Blank, Please Enter Your First Name");
		thisobj.Fname.focus();
		return false;
	}
	if(!checkstr(thisobj.Fname.value))
	{
		alert('First Name Should be Characters, Please Enter Your First Name');
		thisobj.Fname.focus();
		return false;
	}
	if(thisobj.Lname.value=="")
	{
		alert("Last Name Cannot be Blank, Please Enter Your Last Name");
		thisobj.Lname.focus();
		return false;
	}
	if(!checkstr(thisobj.Lname.value))
	{
		alert('Last Name Should be Characters, Please Enter Your Last Name');
		thisobj.Lname.focus();
		return false;
	}
	if(thisobj.Company.value=="")
	{
		alert("Company Name Cannot be Blank, Please Enter Your company Name");
		thisobj.Company.focus();
		return false;
	}
	if(!checkstr(thisobj.Company.value))
	{
		alert('Company Name Should be Characters, Please Enter Your Company Name');
		thisobj.ord_lname.focus();
		return false;
	}
  if(thisobj.Email.value.length==0)
	{  	
	  alert("E-mail Cannot be Blank, Please Enter a Valid Email Address");
		thisobj.Email.focus();
		return false;
  }
	if(!isValidEmail(thisobj.Email.value))
	{
		alert("Please Enter a valid Email Address");
		thisobj.Email.focus();
        return false;
   	}
	if(thisobj.Comments.value=="")
	{
		alert("Comments Cannot be Blank, Please leave your comments");
		thisobj.Comments.focus();
		return false;
	}
	thisobj.keyword.value ="submit";
	thisobj.submit();

	return true;
}
function checkstr(str)
{
	var inval=true;
	if(str!="")
	{
		for(var i=0;i<str.length;i++)
		{
			if(!((str.charAt(i)>='a' && str.charAt(i)<='z' ) || (str.charAt(i)>='A' && str.charAt(i)<='Z' ) || (str.charAt(i)==' ')))
			{
				inval=false;
				break;
			}
		}
	}
	return inval;
}

function isValidEmail(email) {
    if (! allValidChars(email)) {  // check to make sure all characters are valid
        return false;
    }
    if (email.indexOf("@") < 1) { //  must contain @, and it must not be the first character
        return false;
    } else if (email.lastIndexOf(".") <= email.indexOf("@")) {  // last dot must be after the @
        return false;
    } else if (email.indexOf("@") == email.length) {  // @ must not be the last character
        return false;
    } else if (email.indexOf("..") >=0) { // two periods in a row is not valid
	return false;
    } else if (email.indexOf(".") == email.length) {  // . must not be the last character
	return false;
    }
    return true;
}

function allValidChars(email) {
  var parsed = true;
  var validchars = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
  for (var i=0; i < email.length; i++) {
    var letter = email.charAt(i).toLowerCase();
    if (validchars.indexOf(letter) != -1)
      continue;
    parsed = false;
    break;
  }
  return parsed;
}
</script>