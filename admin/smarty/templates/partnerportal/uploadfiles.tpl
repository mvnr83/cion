{literal}
<script type="text/javascript">
function showSelected(e1,e2){
var selObj = document.getElementById('upto');
var selIndex = selObj.selectedIndex;
var valueObj = selObj.options[selIndex].value;

	if(valueObj == "su"){
	document.getElementById(e1).style.display = "block";
	document.getElementById(e2).style.display = "none";
	document.form.sel.value = "su";
	}
	else if(valueObj == "sp"){
	document.getElementById(e1).style.display = "none";
	document.getElementById(e2).style.display = "block";
	document.form.sel.value = "sp";
	}
	else{
	document.getElementById(e1).style.display = "none";
	document.getElementById(e2).style.display = "none";
	}
}

function getvalid(e){
var selObj = document.getElementById(e);
var selIndex = selObj.selectedIndex;
var valueObj = selObj.options[selIndex].value;
if(valueObj == ""){
	alert("Please Select One Option");
	selObj.focus();
	return false;
	}	
}

function req(f,msg){
var req = document.getElementById(f);
if(req.value == "")
{
alert(msg);
req.focus();
return false;
}
}

function validateFileExtension() {
var fld = document.getElementById('file');
var selObj = document.getElementById('ftype');
var selIndex = selObj.selectedIndex;
var valueObj = selObj.options[selIndex].value;
	if(!/(\.bmp|\.gif|\.jpg|\.jpeg)$/i.test(fld.value)&&(valueObj == 'image')) {
		alert("Invalid image file type.");
		fld.focus();
		return false;
	}
	else if(!/(\.doc|\.xsl|\.ppt|\.pdf)$/i.test(fld.value)&&(valueObj == 'doc')) {
		alert("Invalid image file type.");
		fld.focus();
		return false;
	}
	return true;
}

function selvalid(){
	var selObj = document.getElementById('upto');
var selIndex = selObj.selectedIndex;
var valueObj = selObj.options[selIndex].value;
if(valueObj == ""){
	alert("Please Select One Option");
	selObj.focus();
	return false;
	}
if(valueObj == "su"){
	if(getvalid('userselect') == false){
	return false;		
	}
		
}
else if(valueObj == "sp"){
	if(getvalid('partnerselect') == false){
	return false;	
	}
	}
	
	if(req('title','Please Enter the Title') == false)
	{
	return false;	
	}

	if(getvalid('ftype') == false){
	return false;				
	}	
	
	if(req('file','Please Select a File') == false)
	{
	return false;	
	}
	else if(validateFileExtension()== false)
	{
	return false;
	}
	
	
	return true;

}

</script>

{/literal}

<form name="form" method="post" action="" onsubmit="return selvalid()" enctype="multipart/form-data">
<input type="hidden" name="sel" id="sel"> 
  <table width="100%" border="0" cellspacing="5" cellpadding="0">
    <tr>
      <td colspan="2" align="center"><span class="Sub_menu">{$msg}</span></td>
    </tr>
    <tr>
      <td colspan="2" align="center" valign="top"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #d4ddec">
        
        <tr>
          <td align="center" valign="middle" background="images/login_bg.gif" class="wite" height="25"> Upload Files<!--<table width="409" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">

                              <tr>

                                <td height="29" align="center" valign="middle" class="wite"> Member Details </td>

                              </tr>

                          </table>--></td>
        </tr>
        <tr>
          <td align="left" valign="top">
          
          
              <table width="100%" border="0" cellspacing="5" cellpadding="0">
 <tr>
    <td width="28%" align="right">Upload to :</td>
    <td width="72%" align="left"><select name="upto" id="upto" onchange="showSelected('user','partner')" style="width:150px;font-size:12px;padding:2px;">
    <option value="" selected="selected">- Select -</option>
    <option value="su">- Single User -</option>
    <option value="sp">- Single Partner -</option>
    <option value="ap">- All Partners -</option>
    </select>    </td>
  </tr>
  <tr align="right">
    <td colspan="2">
    <div id="user" style="display:none">
    <table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td width="28%" align="right">User :</td>
    <td width="72%" align="left"><select name="userselect" id="userselect" style="width:150px;font-size:12px;padding:2px;">
      <option value="" selected="selected">- Select -</option>

{section name=emp loop=$earray}


	  <option value="{$earray[emp].emp_id}">{$earray[emp].first_name}</option>

{/section}
  
   
    </select></td>
  </tr>
</table>
    </div>
    
    <div id="partner" style="display:none">
    <table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td width="28%" align="right">Partner :</td>
     <td width="72%" align="left"><select name="partnerselect" id="partnerselect" style="width:150px;font-size:12px;padding:2px;">
      <option value="" selected="selected">- Select -</option>
      
{section name=par loop=$parray}
	 <option value="{$parray[par].id}">{$parray[par].company}</option>
{/section}
    </select></td>
  </tr>
</table>
    </div>    </td>
    </tr>
    <tr>
      <td align="right">Title :</td>
      <td><input type="text" name="title" id="title" /></td>
    </tr>
    <tr>
      <td align="right"> File Type :</td>
      <td><select name="ftype" id="ftype" style="width:150px;font-size:12px;padding:2px;">
        <option value="" selected="selected">- Select -</option>
        <option value="image">- Image -</option>
        <option value="doc">- Document -</option>
      </select></td>
    </tr>
    
    <tr>
  <td align="right">Select Files :</td>
 <td><input type="file" name="image" id="file" /></td>
  </tr>
  <tr>
    <td align="left">&nbsp;</td>
    <td align="left"><input type="submit" value="Upload" name="action" /></td>
  </tr>

  <tr>
    <td colspan="2" align="left">&nbsp;</td>
    </tr>
</table>
            
            </td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width="400" valign="top" >&nbsp;</td>
      <td width="300" valign="top" >&nbsp;</td>
    </tr>
  </table>
</form>
