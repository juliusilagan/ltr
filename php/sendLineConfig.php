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

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $line1 = $_GET["switch_line1"] ?? "";
    $line2 = $_GET["switch_line2"] ?? "";
    $line3 = $_GET["switch_line3"] ?? "";
    $line4 = $_GET["switch_line4"] ?? "";
    $line5 = $_GET["switch_line5"] ?? "";
    $line7 = $_GET["switch_line7"] ?? "";
    $line8 = $_GET["switch_line8"] ?? "";
    $line10 = $_GET["switch_line10"] ?? "";
    $line11 = $_GET["switch_line11"] ?? "";
    $line12 = $_GET["switch_line12"] ?? "";

    $array = [$line1, $line2, $line3, $line4, $line5, $line7, $line8, $line10, $line11, $line12];

    foreach ($array as $key => $value) {
        
        if($value == "on"){
            $value = 1;
            $key+=2;
            $sql = "UPDATE `lines` SET `line_status` = $value WHERE `lines`.`id` = '$key';";

            $result = mysqli_query($conn, $sql);
            if($result){
                echo "Query executed successfully";
            }else{
                echo "Error executing query:" . mysqli_error($conn);
            }
        }else if($value == "off"){
            $value = 0;
            $key+=2;
            $sql = "UPDATE `lines` SET `line_status` = $value WHERE `lines`.`id` = '$key';";

            $result = mysqli_query($conn, $sql);
            if ($result) {
                echo "Query executed successfully";
            } else {
                echo "Error executing query:" . mysqli_error($conn);
            }
        }
    }
}



// $sql = "SELECT * FROM `lines` WHERE `number` != 'Repair' AND `line_status` = 1";

// $result = mysqli_query($conn, $sql);

// $data = array();
// $bool = true;
// if (mysqli_num_rows($result) > 0) {
//     while($row = mysqli_fetch_assoc($result)) {
//         $adjustRow = $row['id']-2;
//         $data[] = array(
//             'value' => $adjustRow,
//             'text' => $row['line_status']
//         );
//     }
// }

// mysqli_close($conn);

// header('Content-Type: application/json');
// echo json_encode($data);

?>