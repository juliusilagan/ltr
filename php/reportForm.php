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
    $line = $_POST["line"];
    $station = $_POST["station"];
    $problemType = $_POST["problemType"];
    $reportedBy = $_POST["name"];
    $remarks = isset($_POST["rmrk"]) ? $_POST["rmrk"] : "No Remarks";
    $timeStamp = date('Y-m-d H:i:s');

    // Determine the current shift
    $currentHour = date('H');
    $shift = ($currentHour > 6 && $currentHour < 19) ? "A" : "B";
    $fixed_time = "";

    $stmt = $pdo->prepare("SELECT number FROM `lines` WHERE id = ?");
    $stmt->execute([$line]);
    $line_id = $stmt->fetchColumn();

    $stmt = $pdo->prepare("SELECT name FROM `stations` WHERE id = ?");
    $stmt->execute([$station]);
    $station_id = $stmt->fetchColumn();

    $stmt = $pdo->prepare("SELECT id FROM `problem_types` WHERE name = ?");
    $stmt->execute([$problemType]);
    $problemType_id = $stmt->fetchColumn();

    $line_id_toDb = dbToDisplay_line($line);
    $station_id_toDB = dbToDisplay_station($station);

    // Insert the report into the Reports table
    $stmt = $pdo->prepare("INSERT INTO Reports (line_id, station_id, problem_id, remarks, reported_by, shift, report_time) VALUES (?, ?, ?, ?, ?, ?, ?)");
    if ($stmt->execute([$line, $station, $problemType_id, $remarks, $reportedBy, $shift, $timeStamp])) {
        echo "Report submitted successfully!";
    } else {
        error_log("Error submitting report: " . $stmt->errorInfo()[2]);
        die("Internal Server Error");
    }

    // Update the status of the report in the all_reports table
    $sql = "UPDATE all_reports SET status = '1' WHERE line_number = " . $pdo->quote($line_id_toDb) . " AND station_name = " . $pdo->quote($station_id_toDB) . " AND problem_type = " . $pdo->quote($problemType);
    echo $sql; // Output the SQL statement with values attached

    $stmt = $pdo->prepare($sql);
    if ($stmt->execute()) {
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
