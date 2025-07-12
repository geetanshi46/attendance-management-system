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

// Get student ID to delete
$id = $_GET['id'];

// Delete student from database
$sql = "DELETE FROM student_details WHERE id = $id";

if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Student deleted successfully!'); window.location.href='view_students.php';</script>";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
