<?php
function checknull($x){
    if(!empty($x))return true; else return false;
}   
function checknumber($x){
    if(is_numeric($x))return true; else return false;
}
?>