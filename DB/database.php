

<?php
$servername = "localhost";
$username = "root";
$password = "4321";


// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if (mysqli_connect_error()) {
  die("Database connection failed: " . mysqli_connect_error());
}
echo "Connected successfully, we are good to go.and in 1 2 3 4 5, we are live <br>";

// Create Database
$sql = "CREATE DATABASE codewithawaDB";
if ($conn->query($sql) === TRUE) {
	echo "Database created successfully";
}   else {
	echo "Error creating database: " . $conn->error;
} 



$conn->close();
?>