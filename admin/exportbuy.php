<?
// Connect database.
include("includes/application_start.php");
include("includes/checksession.php");

// Get data records from table.
$result=mysql_query("select * from buy order by buy_id asc");

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
header("Content-Disposition: attachment;filename=BUY_members.xls ");
header("Content-Transfer-Encoding: binary ");

xlsBOF();

/*
Make a top line on your excel sheet at line 1 (starting at 0).
The first number is the row number and the second number is the column, both are start at '0'
*/

xlsWriteLabel(0,0,"BUY Members List");

// Make column labels. (at line 3)
xlsWriteLabel(2,0,"No.");
xlsWriteLabel(2,1,"Product Name");
xlsWriteLabel(2,2,"Person Name");
xlsWriteLabel(2,3,"Phone");
xlsWriteLabel(2,4,"email");
xlsWriteLabel(2,5,"Company Name");
xlsWriteLabel(2,6,"Designation");
xlsWriteLabel(2,7,"Number of Domains");
xlsWriteLabel(2,8,"Number of Users");
xlsWriteLabel(2,9,"Description");

$xlsRow = 3;

// Put data records from mysql by while loop.
while($row=mysql_fetch_array($result)){

xlsWriteNumber($xlsRow,0,$row['buy_id']);
xlsWriteLabel($xlsRow,1,$row['product']);
xlsWriteLabel($xlsRow,2,$row['name']);
xlsWriteLabel($xlsRow,3,$row['phone']);
xlsWriteLabel($xlsRow,4,$row['email']);
xlsWriteLabel($xlsRow,5,$row['company']);
xlsWriteLabel($xlsRow,6,$row['designation']);
xlsWriteLabel($xlsRow,7,$row['domains']);
xlsWriteLabel($xlsRow,8,$row['users']);
xlsWriteLabel($xlsRow,9,$row['description']);

$xlsRow++;
}
xlsEOF();
exit();
?>
