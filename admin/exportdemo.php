<?
// Connect database.
include("includes/application_start.php");
include("includes/checksession.php");

// Get data records from table.
$result=mysql_query("select * from demo order by demo_id asc");

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
header("Content-Disposition: attachment;filename=demorequest.xls ");
header("Content-Transfer-Encoding: binary ");

xlsBOF();

/*
Make a top line on your excel sheet at line 1 (starting at 0).
The first number is the row number and the second number is the column, both are start at '0'
*/

xlsWriteLabel(0,0,"Demo Requested Members");

// Make column labels. (at line 3)
xlsWriteLabel(2,0,"No.");
xlsWriteLabel(2,1,"Product");
xlsWriteLabel(2,2,"Name");
xlsWriteLabel(2,3,"Phone");
xlsWriteLabel(2,4,"Email");
xlsWriteLabel(2,5,"Company");


$xlsRow = 3;

// Put data records from mysql by while loop.
while($row=mysql_fetch_array($result)){

xlsWriteNumber($xlsRow,0,$row['demo_id']);
xlsWriteLabel($xlsRow,1,$row['product']);
xlsWriteLabel($xlsRow,2,$row['name']);
xlsWriteLabel($xlsRow,3,$row['phone']);
xlsWriteLabel($xlsRow,4,$row['email']);
xlsWriteLabel($xlsRow,5,$row['company']);


$xlsRow++;
}
xlsEOF();
exit();
?>
