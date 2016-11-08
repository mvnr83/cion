<?php
require_once("includes/application_start.php");
require_once("admin/includes/db_connect.php");
$countryId=intval($_GET['country']);
$query="SELECT * FROM us_states";
$result=mysql_query($query);
?>
<select name="state" id="state" class="selfield">
 <option value="">Select State</option>
  <?php while($row=mysql_fetch_array($result)) { ?>
 <option value="<?php echo $row['state_extended']?>" <?php if(isset($_GET['statev']) && ($_GET['statev']==$row['state_extended'])){ ?> selected="selected"<?php }?>><?php echo $row['state_extended']?></option>
<?php } ?>