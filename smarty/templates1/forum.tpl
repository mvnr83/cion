<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>CionSystemsForums</title>
<link rel="stylesheet" href="css/style.css" media="all" />
<link rel="shortcut icon" href="favicon.ico" />
{literal}
<script language="javascript" type="text/javascript">
function createXMLHttpRequest() 
{
   try { return new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) {}
   try { return new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {}
   try { return new XMLHttpRequest(); } catch(e) {}
   alert("XMLHttpRequest not supported");
   return null;
}
var xhReq = createXMLHttpRequest();
function create_topic()
{
	if(document.getElementById('create_topic').style.display=='none')
		document.getElementById('create_topic').style.display='';
	else
	{
		document.getElementById('topic_text').value='';
		document.getElementById('product').selectedIndex=0;
		document.getElementById('create_topic').style.display='none';
	}
}
function createtopic()
{
	if(document.getElementById('create_topic').style.display=='none')
		document.getElementById('create_topic').style.display='';
	else
	{
		document.getElementById('topic_text').value='';
		document.getElementById('product').selectedIndex=0;
		document.getElementById('create_topic').style.display='none';
	}
}
function validate()
{
	var frm = document.create_forum;
	if(frm.title.value=='')
	{
		alert("please eneter title.");
		frm.title.focus();
		return false;
	}	
	else if(frm.topic_text.value=='')
	{
		alert("please eneter topic description.");
		frm.topic_text.focus();
		return false;
	}	
	else if(frm.product.value=='')
	{
		alert("Please select category.");
		frm.product.focus();
		return false;
	}
	else
	{
		frm.keyword.value ="create_topic";
		frm.submit();
	}
}
function createXMLHttpRequest() 
{
   try { return new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) {}
   try { return new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {}
   try { return new XMLHttpRequest(); } catch(e) {}
   alert("XMLHttpRequest not supported");
   return null;
}
var xhReq = createXMLHttpRequest();
function reply_thread(id,pid,tid,rid)
{
	
	if(document.getElementById("topic_text"+rid+"r"+tid+"t"+pid+"m").value=='')
	{
		alert("Please give the Reply") ;
		document.getElementById("topic_text"+rid+"r"+tid+"t"+pid+"m").focus();
		return false;
	}
	document.thread_form.rid.value = rid;
	document.thread_form.tid.value = tid;
	document.thread_form.pid.value = pid;
	document.thread_form.keyword.value='reply';
	document.thread_form.submit();
}
function edit_thread(pid,tid,rid)
{
	var cat1 = document.getElementById('cat1').value;
	var cat2 = document.getElementById('cat2').value;
	
	if(rid==0 && tid==0)
	{
		if(cat1==1)
		{
			if(document.getElementById("parent_category"+pid).value=='')
			{
				alert("Please select category");
				document.getElementById("parent_category"+pid).focus();
				return false;
			}
		}
		if(cat2==1)
		{
			if(document.getElementById("sub_category"+pid).value=='')
			{
				alert("Please select category");
				document.getElementById("sub_category"+pid).focus();
				return false;
			}
		}
	}
	document.thread_form.pid.value = pid;
	document.thread_form.tid.value = tid;
	document.thread_form.rid.value = rid;
	var val = document.getElementById('edit_text'+rid+'t'+tid+'m'+pid);
	document.thread_form.topic.value = val.value;
	document.thread_form.keyword.value = 'edit';
	document.thread_form.submit();
}
function onSumResponse() 
{
	if (xhReq.readyState != 4)  { return; }
	var serverResponse = xhReq.responseText;
	//alert(serverResponse);
	var cell = document.getElementById("get_topics");
	cell.innerHTML = serverResponse;
}
function limitExceed()
{
alert("You will need to create a new topic to continue your discussion.");
return;
}
function thread_expand(id,div)
{
	if(document.getElementById("myParent"+id).style.display=='')
		document.getElementById("myParent"+id).style.display='none';
	else
		document.getElementById("myParent"+id).style.display='';	
	
	if(div=='show_disc')
	{	
		document.getElementById("show_disc"+id).style.display='none';
		document.getElementById("hide_disc"+id).style.display='';	
	}
	else if(div=='hide_disc')
	{	
		document.getElementById("show_disc"+id).style.display='';
		document.getElementById("hide_disc"+id).style.display='none';	
	}			
}
function viewtopic()
{
	if(document.getElementById('create_topic').style.display=='')
	{
		document.getElementById('topic_text').value='';
		document.getElementById('create_topic').style.display='none';
		document.getElementById('addtopiccell').className='';
		
	}
	else
	{
		document.getElementById('create_topic').style.display='';
		document.getElementById('topic_text').focus();
		document.getElementById('addtopiccell').className='grey_bg';
	}
}
function display_reply(rid,tid,r,pid)
{
	document.thread_form.pid.value = pid;
	document.thread_form.rid.value = rid;
	document.thread_form.reply.value = r;
	document.thread_form.tid.value = tid;
	document.getElementById("replyr"+rid+"t"+tid+"m"+pid).style.display = '';
	document.getElementById("topic_text"+rid+"r"+tid+"t"+pid+"m").focus();
}
function viewdetail(pid,tid,rid)
{
	document.getElementById("topic_text"+rid+"r"+tid+"t"+pid+"m").value='';
	document.getElementById("replyr"+rid+"t"+tid+"m"+pid).style.display="none";
}
function edit_topic(id)
{
	document.getElementById("pid").value = id;
	document.getElementById("tid").value = 0;
	document.getElementById("rid").value=0;
	document.getElementById("edit").value = 1;
	if(document.getElementById("topic_edit"+id+"t0r0").style.display=='')
		document.getElementById("topic_edit"+id+"t0r0").style.display='none';
	else
	{
		document.getElementById("topic_edit"+id+"t0r0").style.display='';
		document.getElementById("edit_text0t0m"+id).focus();
	}
}
function display_edit(pid,tid,rid)
{
	document.getElementById("pid").value = pid;
	document.getElementById("tid").value = tid;
	document.getElementById("rid").value=rid;
	document.getElementById("edit").value = 1;
	if(document.getElementById("topic_edit"+pid+"t"+tid+"r"+rid).style.display=='')
		document.getElementById("topic_edit"+pid+"t"+tid+"r"+rid).style.display='none';
	else
	{
		document.getElementById("topic_edit"+pid+"t"+tid+"r"+rid).style.display='';
		document.getElementById("edit_text"+rid+"t"+tid+"m"+pid).focus();
	}
}
/*var topic_text = frm.topic_text.value;
	var product = frm.product.value;
	xhReq.open("GET","create_topic.php?topic_text="+topic_text+"&product="+product);
	xhReq.onreadystatechange=response_topic;
	xhReq.send(null);
function response_topic()
{
	if(xhReq.readyState==4)
	{
		 var serverResponse=xhReq.responseText;
		 document.getElementById(divId).style.display = "block";
	     document.getElementById(divId).innerHTML=serverResponse;
	}
}*/
</script>
{/literal}
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <!-- header begins -->
    <td height="95"align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1000" height="137">
      <param name="movie" value="images/header_forum.swf" />
      <param name="quality" value="high" />
      <embed src="images/header_forum.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="137"></embed>
    </object></td>
  <!-- header ends -->
  </tr>
  <tr>
  <!-- middle content table begins -->
    <td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
    <td width="5%" align="right" valign="bottom"> <img src="images/topleftcorner.gif" width="11" height="11" /></td>
	<td width="90%" class="topshadow" height="11"></td>
	<td width="5%" valign="bottom" align="left"><img src="images/topritecorner.gif" width="10" height="11"/></td>
  </tr>
  <tr>
    <td width="5%" align="right" class="leftshadow"></td>
<!-- forum table begins -->
	<td width="90%" bgcolor="#FFFFFF" valign="top">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <!-- naviagtion menu begins -->
    <td background="images/cion_forum_03.gif" height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="menu" align="center" width="13%"><a href="#">Product Tour </a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Products</a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Solutions</a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Downloads</a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Partners</a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Support</a></td>
        <td width="1%"><img src="images/menudivide.gif" /></td>
        <td class="menu" align="center" width="13%"><a href="#">Contact Us </a></td>
      </tr>
    </table></td>
  <!-- naviagtion menu ends -->
  </tr>
  <tr>
  <!-- welcome notes begins -->
    <td height="40" align="center" bgcolor="#e8e8e8" style="border-top:3px solid #FFFFFF">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8%" align="right"><a href="forums.php">Forums</a></td>
        <td width="14%" align="right"><a href="{if $user_id ne ''}javascript: create_topic();{else}login.php{/if}">Create Topic </a></td>
        <td width="11%">&nbsp;</td>
        <td width="10%">Forum topic :</td>
        <td width="19%"><select name="select">
            <option value="0">-Select topic-</option>
			{html_options options=$products}
          </select>
        </td>
        <td width="12%">Search Forum : </td>
        <td width="17%"><input type="text" name="textfield"  /></td>
        <td width="9%"><img src="images/go_btn.gif" width="52" height="19" /></td>
      </tr>
    </table></td>
    <!-- welcome notes ends -->
  </tr>
  <tr style="display:none" id="create_topic">
    <td height="120" align="center" valign="top">
	<form name="create_forum" method="post">
	<input type="hidden" name="keyword" id="keyword" />
	<table width="94%" border="0" cellspacing="0" cellpadding="0" class="forumtopbg">
  	<tr>
    <td align="center" class="box">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr><td colspan="4" height="50" valign="middle" align="left"><strong>Create topic</strong></td></tr>
	 <tr>
	 <td colspan="2" align="right">Title :&nbsp;</td>
	 <td colspan="2" align="left"><input type="text" name="title" id="title" style="width:415px;">
	 </td></tr>
	 <tr>
	 <td colspan="4">&nbsp;</td></tr>
	 <tr><td colspan="2" align="right">Description :&nbsp;</td>
	 <td colspan="2" align="left"><textarea cols="50" rows="5" name="topic_text" id="topic_text"></textarea></td></tr>
	 <tr><td colspan="4">&nbsp;</td></tr>
	  <tr>
        <td width="18%" colspan="2" align="right">Related to : </td>
        <td width="38%" colspan="2" align="left">&nbsp;<select name="product" id="product">
          <option value="0">-Select topic-</option>
		  {html_options options=$products}
        </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input name="post_topic" type="button" value="Post Topic" class="searchbtn" onclick="javascript: return validate();" />&nbsp;&nbsp;
		<input name="cancel_topic" type="button" value="Cancel" class="searchbtn" onclick="javascript: createtopic();" /></td>
      </tr>
	  <tr><td colspan="4">&nbsp;</td></tr>
    </table>
	</td>
  </tr>
  <tr>
    <td align="left">
	</td>
  </tr>
</table>
</form>
</td>
  </tr>
  <tr>
  <!-- forum post details begins -->
    <td>
	<form name="thread_form" method="post">
<input type="hidden" name="cat1" id="cat1" value="{$category1}" />
<input type="hidden" name="cat2" id="cat2" value="{$category2}" />
<input type="hidden" name="rid" id="rid">
<input type="hidden" name="pid" id="pid">
<input type="hidden" name="tid" id="tid">
<input type="hidden" name="reply" id="reply">
<input type="hidden" name="topic" id="topic" />
<input type="hidden" name="edit" id="edit" />
<input type="hidden" name="keyword" id="keyword" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td width="3%">&nbsp;</td>
  <td class="box" align="center" valign="top">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="forumtopbg">
      <tr>
        <td align="center" width="10%" height="32"><strong>Member</strong></td>
        <td align="center" width="72%" nowrap="nowrap"><strong>Title and Description</strong></td>
		<td>&nbsp;</td>
        <td align="center" width="14%"><strong>Date/Time</strong></td>
      </tr>
	    {section name=cust loop=$arrayForums}
		<tr>
        <td colspan="4" align="center">
		<table width="850" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td width="120" align="center" valign="top" style="padding-top:5px;" height="120"><!--<img src="images/defaultuser.gif" /><br/><strong>-->Posted By:<strong><br />
              {$arrayForums[cust].uname}</strong></td>
            <td bgcolor="#edf1f3" width="1"></td>
			<td width="469" align="left" valign="top" style="padding-left:5px;"><strong>{$arrayForums[cust].title}</strong>
			  <div style="padding-left:10px;">{$arrayForums[cust].msg}</div></td>
            <td bgcolor="#edf1f3"></td>
			<td width="100" align="center" valign="top">{if $user_id eq $arrayForums[cust].postedby}<a href="javascript:edit_topic({$arrayForums[cust].id});" title="Edit Topic">Edit</a> |{/if} {if $user_id eq ''}<a href="login.php" title="Reply topic">Reply</a>{else}{if $arrayForums[cust].threads[row].levelindex eq $reply_limit}<a href="javascript:limitExceed();" title="Reply topic" >Reply</a>{else}<a href="javascript: display_reply(0,0,1,{$arrayForums[cust].id});" title="Reply topic">Reply</a>{/if}{/if}</td>
           <td width="1" bgcolor="#edf1f3" style="width:1px;"></td>
		   <td width="180" align="center" valign="top">{$arrayForums[cust].date|date_format:"%m/%d/%y&nbsp;%H:%M"}</td>
          </tr>
		  <tr bgcolor="#e8f7ff">
      <td align="left" colspan="4" height="32" style="padding-left:5px;"><strong>Related to : {$arrayForums[cust].product_name} </strong></td>
      <td align="center" colspan="3">
	  <div id="show_disc{$arrayForums[cust].id}" style="display:block">
						{if $arrayForums[cust].count_replies neq 0}<a href="javascript:thread_expand({$arrayForums[cust].id},'show_disc');" title="Show Replies">Show Discussion ({$arrayForums[cust].count_replies})</a>{else}Show Discussion ({$arrayForums[cust].count_replies}){/if}</div>						
						<div id="hide_disc{$arrayForums[cust].id}" style="display:none">
						{if $arrayForums[cust].count_replies neq 0}<a href="javascript:thread_expand({$arrayForums[cust].id},'hide_disc');" title="Hide Replies">Hide Discussion ({$arrayForums[cust].count_replies})</a>{/if}</div>
	  </td>
    </tr>
	<tr id="topic_edit{$arrayForums[cust].id}t0r0" style="display:none">
	<td colspan="7">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
		<tr>
		<td height="24"  bgcolor="#e8f7ff" valign="middle" align="left" colspan="7">&nbsp;<strong>&nbsp;Edit Topic</strong></td>
		</tr>
		<tr><td colspan="4" height="10"></td></tr>
		<tr>
		<td width="20"></td>
		<td colspan="3" align="left">
		<input name="edit_title0t0m{$arrayForums[cust].id}" id="edit_title0t0m{$arrayForums[cust].id}" type="text" value="{$arrayForums[cust].title}">
		</td>
		</tr>
		<tr>
		<td width="20"></td>
		<td colspan="3" align="left"><textarea name="edit_text0t0m{$arrayForums[cust].id}" id="edit_text0t0m{$arrayForums[cust].id}" cols="50" rows="5" style="overflow:auto" wrap="soft">{$arrayForums[cust].msg}</textarea></td>
		</tr>
		<tr><td colspan="4" height="7"></td></tr>
		<tr>
		  <td></td>
		<td>Related to:&nbsp;&nbsp;<select name="product{$arrayForums[cust].id}" id="product{$arrayForums[cust].id}">{html_options options=$products selected=$arrayForums[cust].category}</select>&nbsp;&nbsp;&nbsp;</td>
		<td  align="right"><input name="Save{$arrayForums[cust].id}" type="button" value=" Save " onclick="javascript:edit_thread({$arrayForums[cust].id},0,0);">&nbsp;&nbsp;<input name="cancel{$arrayForums[cust].id}" type="button"  value=" Cancel " onclick="javascript: edit_topic({$arrayForums[cust].id});"></td>
		<td width="42"  align="right">&nbsp;</td>
		</tr>
		<tr>
		  <td></td>
		  <td height="4"></td>
		  <td  align="right"></td>
		  <td  align="right"></td>
		  </tr>
		<tr><td colspan="6" height="5"></td></tr>
		</table>
	</td>
	</tr>
	<tr style="display:none;" id="replyr0t0m{$arrayForums[cust].id}">
  <td colspan="7" align="center">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
	<tr bgcolor="#C6C6C6" height="1">
	<td colspan="4"></td>
  </tr>
	<tr>
	<td  height="24" bgcolor="#e8f7ff" align="left" colspan="4"><a name="reply"></a>&nbsp;Reply</td>
	</tr>
	<tr>
	  <td height="10" colspan="4" bgcolor="#FFFFFF"></td>
	  </tr>
	<tr>
	  <td width="100"></td>
	<td align="left" bgcolor="#FFFFFF" colspan="3"><textarea name="topic_text0r0t{$arrayForums[cust].id}m" id="topic_text0r0t{$arrayForums[cust].id}m" cols="50" rows="5" style="overflow:auto"></textarea></td>
	</tr>
	<tr height="5">
	  <td colspan="4"></td>
	  </tr>
	
	<tr>
	  <td colspan="3" align="right"><input name="Cancel0r0t{$arrayForums[cust].id}m" type="button"  value=" Cancel " onClick="javascript:viewdetail('{$arrayForums[cust].id}','0','0');">&nbsp;&nbsp;<input name="replyCancel0r0t{$arrayForums[cust].id}m" type="button" value=" Post Reply " onClick="javascript:reply_thread('{$user_id}','{$arrayForums[cust].id}','0','0');"></td>
	<td width="" align="right" bgcolor="#FFFFFF">&nbsp;</td>
	</tr>
</table>
</td>
</tr>
     </table>
<table style="padding-top:5px" width="100%" border="0" id="my{$arrayForums[cust].name}" cellspacing="0" cellpadding="0" style="display:none">
  <tr>
  <td width="3%">&nbsp;</td>
  <td align="left" valign="top">
		  {section name=row loop=$arrayForums[cust].threads}
		  {assign var=pad value=$arrayForums[cust].threads[row].index}
		  <table width="100%" cellpadding="0" cellspacing="0" border="0" height="100" class="forumtopbg">
		{if $smarty.section.row.index % 2 == 0}
		<tr bgcolor="{$alternate_colour}" valign="top" id="mycell{$arrayForums[cust].threads[row].name}" style="padding-left:{$pad}px">
		{else}
		<tr bgcolor="{$normal_colour}" valign="top" id="{$arrayForums[cust].threads[row].name}" style="padding-left:{$pad}px">
		{/if}
		{if $arrayForums[cust].threads[row].rid eq 0}
		<a name="Thread{$arrayForums[cust].threads[row].tid}"></a>
		{else}
		<a name="Reply{$arrayForums[cust].threads[row].rid}"></a>
		{/if}
		<td width="10"></td>
		<td width="35"  align="left" valign="top">
		{$arrayForums[cust].threads[row].uname|capitalize}
		</td>
		{if $smarty.section.row.index % 2 == 0}
		<td width="1" bgcolor="{$normal_colour}"></td>
		{else}
		<td width="1" bgcolor="{$alternate_colour}"></td>
		{/if}
		<td align="left" width="500" valign="top" style="padding-left:5px;">
		{$arrayForums[cust].threads[row].msg}</td>
		{if $smarty.section.row.index % 2 == 0}
		<td width="1" bgcolor="{$normal_colour}"></td>
		{else}
		<td width="1" bgcolor="{$alternate_colour}"></td>
		{/if}
		<td align="center" width="140">{if $user_id eq ''}<a href="login.php" title="Reply thread">Reply</a>{else}{if $user_id eq $arrayForums[cust].threads[row].postedby} <a href="javascript:display_edit({$arrayForums[cust].threads[row].pid},{$arrayForums[cust].threads[row].tid},{$arrayForums[cust].threads[row].rid});" title="Edit Thread">Edit</a> | {/if}{if $arrayForums[cust].threads[row].levelindex eq $reply_limit}<a href="javascript:limitExceed();" title="Reply thread">Reply</a>{else}<a href="javascript: display_reply('{$arrayForums[cust].threads[row].rid}','{$arrayForums[cust].threads[row].tid}',1,'{$arrayForums[cust].threads[row].pid}');" title="Reply thread">Reply</a>{/if}{/if}</td>					
		{if $smarty.section.row.index % 2 == 0}
		<td width="1" bgcolor="{$normal_colour}"></td>
		{else}
		<td width="1" bgcolor="{$alternate_colour}"></td>
		{/if}
		<td width="75" align="right">{$arrayForums[cust].threads[row].date|date_format:"%m/%d/%y&nbsp;%H:%M"}</td>
		</tr>
		</table>
		<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
		<tr id="topic_edit{$arrayForums[cust].id}t{$arrayForums[cust].threads[row].tid}r{$arrayForums[cust].threads[row].rid}" style="display:none">
		
		<td colspan="4" align="left">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
			  <td colspan="3" align="left" bgcolor="#e8f7ff"  valign="middle">&nbsp;Edit Topic</td>
			</tr>
			
			<tr>
			  <td colspan="3" align="left" height="10"></td>
			  </tr>
			<tr>
			  <td width="20" align="left">&nbsp;</td>
			<td colspan="2" align="left"><textarea name="edit_text{$arrayForums[cust].threads[row].rid}t{$arrayForums[cust].threads[row].tid}m{$arrayForums[cust].id}" id="edit_text{$arrayForums[cust].threads[row].rid}t{$arrayForums[cust].threads[row].tid}m{$arrayForums[cust].id}" cols="50" rows="5" style="overflow:auto" wrap="soft">{$arrayForums[cust].threads[row].msg}</textarea></td>
			</tr>
			<tr>
			  <td></td>
			  <td height="7" colspan="2"></td>
			  </tr>
			<tr>
			  <td  align="right">&nbsp;</td>
			<td width="850"  align="left"><input name="Save{$arrayForums[cust].threads[row].rid}t{$arrayForums[cust].threads[row].tid}m{$arrayForums[cust].id}" type="submit" value=" Save " onclick="javascript:edit_thread({$arrayForums[cust].id},{$arrayForums[cust].threads[row].tid},{$arrayForums[cust].threads[row].rid});">&nbsp;&nbsp;<input name="cancel{$arrayForums[cust].threads[row].rid}t{$arrayForums[cust].threads[row].tid}m{$arrayForums[cust].id}" type="button"  value=" Cancel " onclick="javascript: display_edit({$arrayForums[cust].id},{$arrayForums[cust].threads[row].tid},{$arrayForums[cust].threads[row].rid});"></td>
			<td width="70"  align="right">&nbsp;</td>
			</tr>
			<tr><td colspan="6" height="5"></td></tr>
			<tr bgcolor="#e8f7ff"  height="2" style="border:1px;"><td colspan="6">&nbsp;</td></tr>
			</table>
		</td>
		</tr>
		<tr style="display:none;" id="replyr{$arrayForums[cust].threads[row].rid}t{$arrayForums[cust].threads[row].tid}m{$arrayForums[cust].threads[row].pid}">
		<td colspan="4" align="center">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
		<tr bgcolor="#C6C6C6" height="1">
		<td colspan="4"></td>
		</tr>
		<tr>
		<td  height="24" align="left" bgcolor="#e8f7ff" colspan="4"><a name="reply"></a>&nbsp;Reply</td>
		</tr>
		<tr>
		<td bgcolor="#FFFFFF"></td>
		<td height="10" colspan="2" bgcolor="#FFFFFF"></td>
		</tr>
		<tr>
		<td width="20">&nbsp;</td>
		<td align="left" bgcolor="#FFFFFF" colspan="2"><textarea name="topic_text{$arrayForums[cust].threads[row].rid}r{$arrayForums[cust].threads[row].tid}t{$arrayForums[cust].threads[row].pid}m" id="topic_text{$arrayForums[cust].threads[row].rid}r{$arrayForums[cust].threads[row].tid}t{$arrayForums[cust].threads[row].pid}m" cols="50" rows="5" style="overflow:auto"></textarea></td>
		</tr><tr>
		<td ></td>
		<td height="1" colspan="2"></td>
		</tr>
		<tr>
		<td colspan="3" align="right" bgcolor="#FFFFFF" height="10"></td>
		</tr>
		<tr>
		<td align="right" bgcolor="#FFFFFF">&nbsp;</td>
		<td width="850" align="left" valign="top" bgcolor="#FFFFFF"><input name="Cancel{$arrayForums[cust].threads[row].rid}r{$arrayForums[cust].threads[row].tid}t{$arrayForums[cust].threads[row].pid}m" type="button"  value=" Cancel " onClick="javascript:viewdetail('{$arrayForums[cust].threads[row].pid}','{$arrayForums[cust].threads[row].tid}','{$arrayForums[cust].threads[row].rid}');">&nbsp;&nbsp;<input name="reply{$arrayForums[cust].threads[row].rid}r{$arrayForums[cust].threads[row].tid}t{$arrayForums[cust].threads[row].pid}m" type="button" value=" Post Reply " onClick="javascript:reply_thread('{$id_adver}','{$arrayForums[cust].threads[row].pid}','{$arrayForums[cust].threads[row].tid}','{$arrayForums[cust].threads[row].rid}');"></td>
		<td width="94" colspan="2" align="right" bgcolor="#FFFFFF">&nbsp;</td>
		</tr>
		<tr height="5">
		<td colspan="3" ></td>				
		</tr>
		<tr bgcolor="#e8f7ff"  style="border:1px;"><td colspan="6"></td></tr>
		</table>
		</td>
		</tr>
		</table>
			{/section}
						</td>
  <td width="3%"><!-- empty space --></td>
  </tr>
</table>
</td>
</tr>
{sectionelse}
<tr height="50"><td align="center" colspan="7">No topics Found</td></tr>
	{/section}
    </table></td>
  <td width="3%"></td>
  </tr>
</table>
</form>
</td>
  <!-- forum post details ends -->
  </tr>
</table>
</td>
<!-- forum table ends -->
	<td width="5%" class="riteshadow">&nbsp;</td>
  </tr>
</table>
</td>
  <!-- middle content table ends -->
  </tr>
  <tr>
  <!-- footer begins -->
    <td align="center">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	 <tr>
	   <td width="4%" align="right"></td>
    <td align="right"  height="15"></td>
    <td  align="center" bgcolor="#FFFFFF"></td>
    <td></td>
    <td width="4%" ></td>
  </tr>
  <tr>
    <td width="4%" align="right" ></td>
    <td align="right" width="1%" class="leftshadow"></td>
    <td  class="footer" align="center" height="27">Product Tour | Products | Solutions |  Partners | Support | Contact Us | About Us | Advisors | Careers | Feedback | My Accounts  | Home</td>
    <td width="1%" class="riteshadow"></td>
    <td width="4%">sdsd</td>
  </tr>
  <tr>
    <td width="4%" align="right">&nbsp;</td>
    <td align="right" valign="top"><img src="images/btmleftcorner.gif" width="11" height="11" /></td>
    <td width="90%" class="btmshadow" align="center"></td>
    <td  align="left" valign="top"><img src="images/btmritecorner.gif" width="10" height="11" /></td>
    <td width="4%" align="left"></td>
  </tr>
  </table>
</td>
<!-- FOOTER ENDS -->
  </tr>
</table>

</body>
</html>
