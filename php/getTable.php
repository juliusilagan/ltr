<?php
require 'functionConverter.php';
if ($_SERVER["REQUEST_METHOD"] == "GET") {

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

$sql = "SELECT `id`,`line_id`,`station_id`,`problem_id`,`remarks`,`reported_by`,`report_time`,`fix_button` FROM `Reports` WHERE status = '1';";

$result = mysqli_query($conn, $sql);

if (!$result) {
die("Error executing query: " . mysqli_error($conn));
}

// initialize an array to hold the rows from the result set
$rows = array();

// process the result set returned by the query
while ($row = mysqli_fetch_assoc($result)) {
// add each row to the $rows array
foreach ($row as $key => $value) {
    if ($key == "line_id") {
        $row[$key]=dbToDisplay_line($value);
    }
    if ($key == "station_id") {
        $row[$key] = dbToDisplay_station($value);
    }
    if ($key == "problem_id") {
        $row[$key] = dbToDisplay_problem($value);
    }
}
$rows[] = $row;
}

// close the database connection
mysqli_close($conn);

// encode the $rows array as a JSON string
$json = json_encode($rows);

// output the JSON string
header('Content-Type: application/json');
echo $json;
}
?>