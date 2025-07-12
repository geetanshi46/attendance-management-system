<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

// Database connection
$host = "localhost";
$user = "root";
$pass = "";
$db = "attendence_db";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Collect form data
$roll_no = $_POST['roll_no'];
$name = $_POST['name'];

// Insert data into student_details table
$sql = "INSERT INTO student_details (roll_no, name) VALUES ('$roll_no', '$name')";

if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Student added successfully!'); window.location.href='add_student.php';</script>";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
