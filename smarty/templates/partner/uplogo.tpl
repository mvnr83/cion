<form name="upform" action="" method="post" enctype="multipart/form-data">
<table width="50%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <td colspan="2" align="center">{$msg}</td>
    </tr>
  <tr>
    <td width="50%" rowspan="2" align="center"><span class="ver11"><img src="
    {if $comlogo != ""}
    {$comlogo}
    {elseif $partner[0].company_logo == ""}
        images/company_logo/default_logo.jpg
        {else}
        {$partner[0].company_logo}
        {/if}
        "  border="0" alt="{$partner[0].company}" /></span></td>
    <td><input type="file" name="logo" id="fileField"></td>
  </tr>
  <tr>
    <td><input type="submit" name="submit" value="Upload"></td>
  </tr>
</table>
</form>
