   <table border="0" cellpadding="0" cellspacing="2" width="98%" align="left">
   <tr>
   		<td class="comment" align="center"><a href="javascript: hide_comments('{$bid}');">Hide</a></td>
		
	</tr>
  {section name=list loop=$items}
  
  <tr><td align="left" style="padding-left:10px">
  
  <table width="84%" {if $smarty.section.list.iteration%2 neq '0'} bgcolor="#FFFFFF"{else}bgcolor="#f2f2f2"{/if} border="0">
  
  <tr >
  		<td align="left" width="64%" style="padding-left:5px"><strong>{$items[list].posted_date|date_format:"%I:%M:%S %p"}&nbsp;&nbsp;Posted By:&nbsp;&nbsp;<span class="ver11 bold">{$items[list].com_author_name}</span></strong></td>
		
		<td colspan="3" align="right" width="36%" style="padding-right:10px"><strong>{$items[list].posted_date|date_format}</strong></td>
  </tr>
  <tr height="10">
  	<td colspan="4">&nbsp;</td>
  </tr>
  <tr>
  	<td colspan="4" style="padding-left:20px"><p align="justify">{$items[list].blog_comments|wordwrap:75:"<br />\n"}</p></td>
	</tr>
	<tr height="10">
  	<td colspan="4">&nbsp;</td>
  </tr>
	
	</table></td></tr>
	{/section}
	<tr><td  class="comment" align="center"><a href="javascript: hide_comments('{$bid}');">Hide</a></td></tr>
	</table>
	 