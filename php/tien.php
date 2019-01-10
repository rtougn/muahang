<?php
    include 'data/data.php';
    $dt = new database;
    $dt->select("SELECT tien FROM tien WHERE id='1'");
    $row = $dt->fetch();
    $g = $row['tien'];
    echo $g;   
?>