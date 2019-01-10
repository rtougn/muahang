<?php
include 'data/data.php';
include 'check/checkvalue.php';
$dt = new database;

if(checknull($_POST['ten']) && checknumber($_POST['soluong'])){
	$t=$_POST['ten'];
	$sl=$_POST['soluong'];

	$dt->select("SELECT tien FROM tien WHERE id='1'");
	$row = $dt->fetch();
	$g = $row['tien'];

	$dt->select("SELECT gia FROM hang WHERE ten='$t'");
	$row = $dt->fetch();
	$gia = $row['gia'];

	$dt->select("SELECT sl FROM tui WHERE ten='$t'");
	$row = $dt->fetch();
	$sltui = $row['sl'];

	$ttien=$gia*$sl;

	if($ttien < $g){
	$g=$g-$ttien;
	$dt->command("UPDATE tien SET tien=$g where id='1'");

	$sltui=$sltui+$sl;
	$dt->command("UPDATE tui SET sl=$sltui where ten='$t'");
	echo "Đã mua";
	} else echo "Không đủ tiền";
}
else echo "Thất bại";
?>