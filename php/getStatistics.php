
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

$sql = "SELECT * FROM `statistics`";

$result = mysqli_query($conn, $sql);

$data = array();
$bool = true;
if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        $data[] = array(
            'trouble_shift' => $row['trouble_shift'],
            'trouble_line' => $row['trouble_line'],
            'accumulated_dt' => $row['accumulated_dt']." min(s)",
            'busiest_tech' => $row['busiest_tech']
        );
    }
}

mysqli_close($conn);

header('Content-Type: application/json');
echo json_encode($data);
?>

