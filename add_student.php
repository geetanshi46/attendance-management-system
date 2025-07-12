<?php include 'header.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            min-height: 100vh;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            text-align: center;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            background-color: #1e1e2f;
            color: #ffffff;
            width: 350px;
            margin: 120px auto 30px auto; /* spacing below navbar, centers card */
            padding: 20px;
        }
        .form-control {
            background-color: #32364a;
            border: none;
            color: white;
        }
        .form-control:focus {
            background-color: #3b3f53;
            color: white;
        }
        .btn-custom {
            background-color: #ff5e62;
            border: none;
            transition: background 0.3s;
        }
        .btn-custom:hover {
            background-color: #ff9966;
        }
    </style>
</head>
<body>
    <div class="card">
        <h3 class="text-center mb-3">Add Student</h3>
        <form action="insert_student.php" method="POST">
            <div class="mb-3 text-start">
                <label for="roll_no" class="form-label">Roll Number</label>
                <input type="text" name="roll_no" id="roll_no" class="form-control" required>
            </div>
            <div class="mb-3 text-start">
                <label for="name" class="form-label">Student Name</label>
                <input type="text" name="name" id="name" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-custom w-100">Add Student</button>
        </form>
    </div>
</body>
</html>
