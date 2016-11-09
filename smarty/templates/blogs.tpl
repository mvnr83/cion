<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>CionSystemsBlog</title>
<link rel="stylesheet" href="css/blog_style.css" media="all" />
<link rel="stylesheet" href="css/styl.css" media="all" />
{literal}
<script language="javascript" src="js/ajax_functions.js"></script>
<script language="javascript">
function addcomment(blogid)
{
	frm = document.blog_frm;
	var divId = "div_"+blogid;
	if(frm.add_c.value == "")
	{
		document.getElementById(divId).style.display = "block";
		frm.add_c.value = blogid;
	}
	else
	{
		document.getElementById(divId).style.display = "none";
		frm.add_c.value = "";
	}
}

function clear_comment(id)
{
	var divId = "div_"+id;
	document.getElementById(divId).style.display = 'none';
	frm.add_c.value = "";
}

function check(id)
{
	frm = document.blog_frm;
	var des = "desc_"+id;
	if(document.getElementById(des).value == '')
	{
		alert("Write Comment");
		return false;
	}
	else
	{
		frm.act.value = 'add';
		frm.bid.value = id;
		frm.dec.value = document.getElementById(des).value;
		frm.action = "blogs.php";
		frm.submit();
		return true;
	}
}

function hide_comments(id)
{
	divId = "comment_"+id;
	document.getElementById(divId).style.display = "none";
}
</script>
{/literal}
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" class="header" valign="bottom"><table width="82%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td width="10"></td>
    <td align="left"><a href="blogs.php"><img src="images/bloglogo.gif" alt="CionSystemsBlog" border="0" /></a></td>
    <td align="right"><a href="index.php"><img src="images/homepage.gif" alt="Homepage" border="0" /></a></td>
  <td width="10"></td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td align="center"><table width="82%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="10" class="leftshadow">&nbsp;</td>
    <td bgcolor="#FFFFFF" height="565" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td height="20">&nbsp;</td>
	<td>&nbsp;</td>
	</tr>
  <tr>
    <td width="240" align="center" valign="top"><table width="90%" bgcolor="#f2f2f2" border="0" cellspacing="0" cellpadding="0" class="border">
  <tr>
    <td class="titlehead" align="center"><span>Blog List</span></td>
  </tr>
  <tr>
    <td class="border"><ul>
	<li><a href="blogs.php">All Blogs ({$blog_count})</a></li>
	{section name=cust loop=$blog_products}
	<li><a href="blogs.php?product={$blog_products[cust].id}">{$blog_products[cust].product_name} ({$blog_products[cust].blog_count})</a></li>
	{/section}
	</ul></td>
  </tr>
<tr>
    <td class="titlehead" align="center"><span>Products</span></td>
  </tr>
  <tr>
    <td class="border"><ul>
	{section name=cust loop=$products}
	<li><a href="{$products[cust].html_file_name}">{$products[cust].product_name}</a></li>
	{/section}
	</ul></td>
  </tr>
  <tr>
    <td class="titlehead" align="center"><span>Subscribe to our NewsLetter</span></td>
  </tr>
  <tr>
    <td class="border" align="center"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
  <tr>
    <td rowspan="5" width="35"></td>
    <td align="left" class="mail">Contact Email </td>
    <td rowspan="5" width="35"></td>
  </tr>
  <tr>
    <td align="left"><input type="text" name="textfield" /></td>
    </tr>
  <tr>
    <td align="left" class="mail">Country</td>
    </tr>
  <tr>
    <td align="left"><input type="text" name="textfield2" /></td>
    </tr>
  <tr>
    <td height="35" align="left"><img src="images/sub.gif" alt="subscribe" width="70" height="24" /></td>
    </tr>
</table>
</td>
  </tr>
  <tr>
    <td class="titlehead" align="center"><span>Archive</span></td>
  </tr>
  <tr>
    <td class="border"><ul>
	{section name=cust loop=$recent_blogs}
	<li><a href="blogs.php?id={$recent_blogs[cust].id}">{$recent_blogs[cust].blog_title}</a></li>
	{/section}
	</ul></td>
  </tr>
</table>
</td>
    <td valign="top" align="center">
	<form name="blog_frm" method="post" action="">
	<input type="hidden" value="" name="act" id="act" />
	<input type="hidden" value="" name="bid" id="bid" />
	<input type="hidden" value="" name="dec" id="dec" />
	<input type="hidden" value="" name="add_c" id="add_c">
	<input type="hidden" value="" name="comm_c" id="comm_c">
	{section name=list loop=$items}
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <!-- post no1 starts -->
    <td valign="top" align="center">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" valign="top"><img src="images/blue.gif" height="5" width="100%" /></td>
    <td rowspan="2" height="61" width="30" class="date"><div class="postdate">{$items[list].blog_posted_date|date_format:"%d"}<br />
<span>{$items[list].blog_posted_date|date_format:"%b,%y"}</span></div></td>
    <td rowspan="2" width="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="left"><div class="posttitle">{$items[list].blog_title}</div>
	<div class="postedby">{$items[list].blog_posted_date|date_format:"%I:%M:%S %p"}   posted by  {$items[list].author_name}</div></td>
    <td align="center" width="20%">&nbsp;</td>
  </tr>
  <tr>
    <td width="85%" colspan="2"><img src="images/blogimg.gif" style="float:right; padding-left:10px; padding-right:5px"/>
        <p align="justify">{$items[list].blog_description}</p>      </td>
    <!--<td><img src="images/prod1.gif"  align="right"/></td>-->
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td height="35" colspan="2">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><div class="greyline"><!--emptyspace--></div></td>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td height="30" colspan="2" align="left" class="comment"><a href="javascript:addcomment('{$items[list].id}')">&nbsp;Add comment</a>  &bull;  <a href="javascript: blog_comments('{$items[list].id}');">Read comments [{$items[list].comments_count}]</a> </td>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><div class="greyline"><!--emptyspace--></div></td>
    <td colspan="2"></td>
  </tr>
  <tr>
  	<td colspan="4"><div id="comment_{$items[list].id}"></div></td>
  </tr>
  <tr>
  	<td colspan="4">
		<div id="div_{$items[list].id}" style="display:none">	
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
					  <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" background="images/login_bg.gif">
                              <tr>
                                <td height="29" align="center" valign="middle" class="wite"> Add Comment </td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="91" align="right" valign="middle">&nbsp;</td>
                                <td width="10" align="center" valign="middle">&nbsp;</td>
                                <td width="253" align="center" valign="middle">&nbsp;</td>
                                <td width="246" align="left" valign="middle">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle" class="Sub_menu">Post Comment :</td>
                                <td align="center" valign="middle">&nbsp;</td>
                                <td height="25" align="left" valign="middle" class="aril"><textarea rows="5" cols="30" name="desc" id="desc_{$items[list].id}"></textarea></td>
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
                                <td height="23" align="center" valign="middle">
                                    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td width="114" align="left" valign="top"><input name="submit2" type="button" class="formbutton" value="Submit"  onclick="javascript:check('{$items[list].id}');" /></td>
										 <td width="114" align="left" valign="top"><input name="submit2" type="button" class="formbutton" value="Cancel"  onclick="javascript: return clear_comment('{$items[list].id}');" /></td>
                                      </tr>
                                    </table>                                  </td>
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
                          </table></td>
                        </tr>
                      </table>
	</div>		</td>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
	</td>
<!-- post no2 ends -->
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
{/section}
</form>
</td>
  </tr>
</table>
</td>
    <td width="10" class="riteshadow">&nbsp;</td>
  </tr>
</table>
</td>
  </tr>
</table>
</body>
</html>