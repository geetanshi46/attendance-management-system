<?php include 'header.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4); /* your pink gradient */
            min-height: 100vh;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            text-align: center;
        }
        .container {
    padding-top: 40px; /* reduced spacing */
}

.navbar {
    padding-top: 0.4rem;
    padding-bottom: 0.4rem;
}

        table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
        }
        .btn-custom {
            background-color: #ff5e62;
            border: none;
            transition: background 0.3s;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .btn-custom:hover {
            background-color: #ff9966;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3 class="mb-4">Student List</h3>
        <?php
        // Database connection
        $host = "localhost";
        $user = "root";
        $pass = "";
        $db = "attendence_db";
        $conn = mysqli_connect($host, $user, $pass, $db);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Fetch all students
        $sql = "SELECT * FROM student_details ORDER BY id ASC";
        $result = mysqli_query($conn, $sql) or die("Query failed: " . mysqli_error($conn));

        if (mysqli_num_rows($result) > 0) {
            echo "<div class='table-responsive'><table class='table table-striped table-hover w-75 mx-auto'>
            <thead class='table-dark'>
                <tr>
                    <th>ID</th>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['roll_no']}</td>
                    <td>{$row['name']}</td>
                    <td>
                        <a href='edit_student.php?id={$row['id']}' class='btn btn-custom btn-sm'>Edit</a>
                        <a href='delete_student.php?id={$row['id']}' class='btn btn-custom btn-sm' onclick=\"return confirm('Are you sure you want to delete this student?');\">Delete</a>
                    </td>
                </tr>";
            }
            echo "</tbody></table></div>";
        } else {
            echo "<p class='text-white'>No students found.</p>";
        }

        mysqli_close($conn);
        ?>
    </div>
</body>
</html>
