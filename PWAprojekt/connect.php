<?php
$servername = "localhost";
$username = "root";
$password = "";
$databasename = "vjesti";

$dbc = mysqli_connect($servername, $username, $password, $databasename) or die('Error
connecting to MySQL server.'.mysqli_error());
mysqli_set_charset($dbc, "utf8");

?>