<?
// Connect database.
include("includes/application_start.php");
include("includes/checksession.php");

// Get data records from table.
$result=mysql_query("select * from mvp order by id asc");

// Functions for export to excel.
function xlsBOF() {
echo pack("ssssss", 0x809, 0x8, 0x0, 0x10, 0x0, 0x0);
return;
}
function xlsEOF() {
echo pack("ss", 0x0A, 0x00);
return;
}
function xlsWriteNumber($Row, $Col, $Value) {
echo pack("sssss", 0x203, 14, $Row, $Col, 0x0);
echo pack("d", $Value);
return;
}
function xlsWriteLabel($Row, $Col, $Value ) {
$L = strlen($Value);
echo pack("ssssss", 0x204, 8 + $L, $Row, $Col, 0x0, $L);
echo $Value;
return;
}
header("Pragma: public");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Content-Type: application/force-download");
header("Content-Type: application/octet-stream");
header("Content-Type: application/download");;
header("Content-Disposition: attachment;filename=MVP_members.xls ");
header("Content-Transfer-Encoding: binary ");

xlsBOF();

/*
Make a top line on your excel sheet at line 1 (starting at 0).
The first number is the row number and the second number is the column, both are start at '0'
*/

xlsWriteLabel(0,0,"MVP Members List");

// Make column labels. (at line 3)
xlsWriteLabel(2,0,"No.");
xlsWriteLabel(2,1,"First Name");
xlsWriteLabel(2,2,"Last Name");
xlsWriteLabel(2,3,"Address 1");
xlsWriteLabel(2,4,"Address 2");
xlsWriteLabel(2,5,"City");
xlsWriteLabel(2,6,"Country/State");
xlsWriteLabel(2,7,"Postalcode");
xlsWriteLabel(2,8,"Phone");
xlsWriteLabel(2,9,"MVP Profile Link");
xlsWriteLabel(2,10,"Email");
xlsWriteLabel(2,11,"Product requested");
xlsWriteLabel(2,12,"Additional Information");

$xlsRow = 3;

// Put data records from mysql by while loop.
while($row=mysql_fetch_array($result)){

xlsWriteNumber($xlsRow,0,$row['id']);
xlsWriteLabel($xlsRow,1,$row['first_name']);
xlsWriteLabel($xlsRow,2,$row['last_name']);
xlsWriteLabel($xlsRow,3,$row['address1']);
xlsWriteLabel($xlsRow,4,$row['address2']);
xlsWriteLabel($xlsRow,5,$row['city']);
xlsWriteLabel($xlsRow,6,$row['country']);
xlsWriteLabel($xlsRow,7,$row['postalcode']);
xlsWriteLabel($xlsRow,8,$row['phone']);
xlsWriteLabel($xlsRow,9,$row['mvp_profile']);
xlsWriteLabel($xlsRow,10,$row['email']);
xlsWriteLabel($xlsRow,11,$row['product_req']);
xlsWriteLabel($xlsRow,12,$row['additional_info']);

$xlsRow++;
}
xlsEOF();
exit();
?>
