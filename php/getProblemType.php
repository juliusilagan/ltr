<?php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ltr";

    try {
        // Create a PDO instance
        $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

        // Set the PDO error mode to exception
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if (!isset($_GET["station"]) || empty($_GET["station"])) {
            die("Station parameter is missing or empty");
        }
        $line = $_GET["line"];
        $station = $_GET["station"];
        



        $stmt = $pdo->prepare("SELECT number FROM `lines` WHERE id = ?");
        $stmt->execute([$line]);
        $line_id = $stmt->fetchColumn();

        $stmt = $pdo->prepare("SELECT name FROM `stations` WHERE id = ?");
        $stmt->execute([$station]);
        $station_id = $stmt->fetchColumn();

        $sql = "SELECT `problem_type` FROM `all_reports` WHERE `line_number` = '$line_id' AND `station_name` = '$station_id' AND `status` = '0';";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        $data = array();
        $bool = true;

        if ($stmt->rowCount() > 0) {
            while ($row = $stmt->fetch()) {
                if ($bool) {
                    $data[] = array(
                        'value' => "default",
                        'text' => "Select Problem"
                    );
                    $bool = false;
                }
                $data[] = array(
                    'value' => $row['problem_type'],
                    'text' => $row['problem_type']
                );
            }
        }

        $pdo = null;

        header('Content-Type: application/json');
        echo json_encode($data);
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
}
?>