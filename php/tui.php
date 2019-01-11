<?php
    include 'data/data.php';
    $dt = new database;
    $dt->select("SELECT ten, sl FROM tui");
echo "<table style='border: solid 1px black;'>";
    while ($row = $dt->fetch()){
echo "<tr>";
	    foreach ($row as $value) { echo "<td style='border: solid 1px black;'>"; echo $value; echo "</td>";}
echo "</tr>";
	}
echo "</table>";
?>