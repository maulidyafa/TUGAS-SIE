<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sie_fp";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the database
$result = $conn->query("SELECT kota FROM kota");

// Convert the result to JSON
$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Close the connection
$conn->close();

// Return JSON data
// header('Content-Type: application/json');
echo json_encode($data[0]['kota']);
echo json_encode($data);
?>
