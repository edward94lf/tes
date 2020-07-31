<?php
$connection = mysqli_connect('localhost','root','','amazon');
if (!$connection) {
    die('Could not connect: ' . mysqli_error());
}

//mysql_connect("localhost","root","") or die(mysql_error());
//mysql_select_db("proyek desa") or die(mysql_error());

?>
