<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sie_fp";

// Create connection
// $conn = new mysqli($servername, $username, $password, $dbname);

// Create connection
// $conn = mysqli_connect($servername, $username, $password);

// Check connection
// if (!$conn) {
//   die("Connection failed: " . mysqli_connect_error());
// }
// echo "Connected successfully";

// Check connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// }


$conn = new mysqli($servername, $username, $password, $dbname);

if($conn==true) {}
else {
    mysql_close($con);
}

// Fetch data from the database
// $result = $conn->query("SELECT kota FROM kota");

// Convert the result to JSON
// $data = array();
// while ($row = $result->fetch_assoc()) {
//     $data[] = $row;
// }

// Close the connection
// $conn->close();

// Return JSON data
// header('Content-Type: application/json');
// echo json_encode($data[0]['kota']);
// echo json_encode($data);
?>
