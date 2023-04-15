<?php
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

$sql = "SELECT * FROM stations";

$result = mysqli_query($conn, $sql);

$data = array();
$bool = true;

if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        if($bool){
        $data[] = array(
            'value' => "default",
            'text' => "Select Station"
        );
            $bool = false;
        }
        $data[] = array(
            'value' => $row['id'],
            'text' => $row['name']
        );
    }

}

mysqli_close($conn);

header('Content-Type: application/json');
echo json_encode($data);

}
?>
