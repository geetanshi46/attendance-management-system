<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
include 'header.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
       body {
    background: linear-gradient(135deg, #ff9a9e, #fad0c4);
    min-height: 100vh;
    font-family: 'Segoe UI', sans-serif;
    margin: 0;
    text-align: center;
}



        .card {
    background-color: #1e1e2f;
    color: white;
    padding: 30px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    width: 320px;
    margin: 120px auto 30px auto; /* Adds top space below navbar only */
}

        .btn-custom {
            background-color: #ff5e62;
            border: none;
            transition: background 0.3s;
            margin: 10px 0;
        }
        .btn-custom:hover {
            background-color: #ff9966;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Welcome, <?php echo $_SESSION['username']; ?>!</h2>
        <p class="mb-4">Manage your Student Attendance system easily.</p>
        <a href="add_student.php" class="btn btn-custom btn-block btn-lg w-100">Add Student</a>
        <a href="view_students.php" class="btn btn-custom btn-block btn-lg w-100">View Students</a>
        <a href="logout.php" class="btn btn-secondary btn-block btn-lg w-100">Logout</a>
    </div>
</body>
</html>
