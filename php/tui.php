<?php
    include 'data/data.php';
    $dt = new database;
    $dt->select("SELECT ten, sl FROM tui");
?>
<table style="border: solid 1px black;">
<?php
    while ($row = $dt->fetch()){
?>
	<tr><td style="border: solid 1px black;">
<?php
	    foreach ($row as $value) { echo $value; echo " ";}
?>
	</tr></td>
<?php
	}
?>
</table>