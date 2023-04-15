<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ltr";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "UPDATE `statistics` SET `trouble_shift`= 0,`trouble_line`='-',`accumulated_dt`=0,`busiest_tech`='-' WHERE 1";
$result = mysqli_query($conn, $sql);


?>