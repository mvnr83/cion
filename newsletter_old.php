<?php

	if(isset($_POST['news']))  
	 { 
	 $sql_chk = "select id from newsletter where email = '".$_POST[email]."'";
	 $res_chk = @mysql_query($sql_chk);
		if(@mysql_num_rows($res_chk)>0)
		{
		$msg = "<span style='color:#0066FF;'>Email address already exists</span>";
		$smarty->assign("newmsg",$newmsg);
		}
	
	 else{
		$sql = "insert into newsletter (name,email) values ('".$_POST['name']."','".addslashes(mysql_real_escape_string($_POST['email']))."')";
$rs = mysql_query($sql);
if($rs) 
{
$newmsg = "<span style='color:#0066FF;'>Email address subscribed to our newsletter</span>";

}
else
{
$newmsg = "Email address was not subscribed to our newsletter durring a mysql error";
$smarty->assign("newmsg",$newmsg);
}
}
     // let the user access the main page  
} 
?>
<div style="display: none;" id="light" class="white_content">

<table width="100%" border="0" cellspacing="3" cellpadding="0">
  <tr>
    <td><h2><span>Sign up for our IT Newsletter</span></h2></td>
    <td><a href="javascript:void(0)" onClick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><img src="images/closebtn.gif" title="Close" alt="Close" border="0"/></a></td>
  </tr>
  <tr>
    <td colspan="2" align="center"> 
    <?php 
if($newmsg != "")
{
echo $newmsg;
}
else{
?>
 <form name="form" method="post" action="" onsubmit="return validate(this)">
                <table width="90%" border="0" cellspacing="5" cellpadding="0">
                  
                  <tr>
                    <td align="right">Name :</td>
                    <td align="left"><input type="text" name="name" class="txtfield" id="name" />
                  
	  				              </td>
                    </tr>
                  
                  <tr>
                    <td align="right">Email :</td>
                     <td align="left"><input type="text" name="email" class="txtfield"  id="email"/></td>
                    </tr>
                  
                  <tr>
                    <td align="center" colspan="2"><input type="submit" name="news" value="Submit" /></td>
                  </tr>
                </table>
                </form>
   
                <?php 
				}
?>
                </td>
    
  </tr>
</table>
 </div>
		<div style="display: none;" id="fade" class="black_overlay"></div>