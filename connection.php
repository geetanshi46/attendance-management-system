<?php
$host = "localhost";
$user = "root";
$password = ""; // leave blank for XAMPP
$dbname = "attendence_db"; // your database name

$conn = mysqli_connect($host, $user, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
