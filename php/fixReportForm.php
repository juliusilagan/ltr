<?php
require 'functionConverter.php';
date_default_timezone_set('Asia/Singapore');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to the MySQL database using PDO
    $dsn = "mysql:host=localhost;dbname=ltr";
    $username = "root";
    $password = "";
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];
    try {
        $pdo = new PDO($dsn, $username, $password, $options);
    } catch (PDOException $e) {
        error_log("Connection failed: " . $e->getMessage());
        die("Internal Server Error");
    }

    // Get the form data
    $id = $_POST["id_number"];
    $line = $_POST["prodLine"];
    $station = $_POST["stationName"];
    $problemType = $_POST["probType"];
    $reportedBy = $_POST["techName"];
    $remarks = $_POST["remarks"];
    $timeStamp = date('Y-m-d H:i:s');

    $line_id = displayToDB_line($line);
    $station_id = displayToDb_station($station);
    $problem_id = displayToDb_problem($problemType);

    $sql = "UPDATE Reports SET fixed_by = ?, final_remarks = ?, fixed_time = ? WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    if ($stmt->execute([$reportedBy, $remarks, $timeStamp, $id])) {
        echo "Record updated successfully";
    } else {
        error_log("Error updating record: " . $stmt->errorInfo()[2]);
        die("Internal Server Error");
    }

    echo $sql; // Debugging line


    $stmt = $pdo->prepare("UPDATE Reports SET status = '0' WHERE id = ? AND line_id = ?");
    if ($stmt->execute([$id, $line_id])) {
        echo "Record updated successfully";
    } else {
        error_log("Error updating record: " . $stmt->errorInfo()[2]);
        die("Internal Server Error");
    }



    $stmt = $pdo->prepare("UPDATE all_reports SET status = '0' WHERE line_number = ? AND station_name = ? AND problem_type = ?");
    if ($stmt->execute([$line, $station, $problemType])) {
        echo "Record updated successfully";
    } else {
        error_log("Error updating record: " . $stmt->errorInfo()[2]);
        die("Internal Server Error");
    }

    // Close the connection
    $pdo = null;

    // Log the report
    $report = "$line, $station, $problemType, $remarks, $reportedBy";
    error_log($report);
}
?>