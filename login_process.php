<?php
session_start();
include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST["username"]);
    $password = trim($_POST["password"]);

    // Prevent SQL Injection
    $username = mysqli_real_escape_string($conn, $username);

    // Check if user exists
    $sql = "SELECT * FROM users WHERE username='$username' LIMIT 1";
    $result = mysqli_query($conn, $sql);

    if ($result && mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        if (password_verify($password, $row['password'])) {
            //  Correct login
            $_SESSION['username'] = $username;
            header("Location: dashboard.php");
            exit();
        } else {
            echo " Incorrect password.";
        }
    } else {
        echo " User not found.";
    }
}
?>
