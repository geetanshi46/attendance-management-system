<?php include 'header.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
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
            margin: 120px auto 30px auto;
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

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Handle update
    $id = $_POST['id'];
    $roll_no = $_POST['roll_no'];
    $name = $_POST['name'];

    $sql = "UPDATE student_details SET roll_no='$roll_no', name='$name' WHERE id=$id";
    if (mysqli_query($conn, $sql)) {
        echo "<script>alert('Student updated successfully!'); window.location.href='view_students.php';</script>";
        exit();
    } else {
        echo "Error updating record: " . mysqli_error($conn);
    }
} else {
    // Display form with existing data
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $sql = "SELECT * FROM student_details WHERE id=$id";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
    } else {
        echo "<script>alert('No student selected to edit.'); window.location.href='view_students.php';</script>";
        exit();
    }
}
?>

<div class="card">
    <h3 class="text-center mb-3">Edit Student</h3>
    <form method="POST">
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
        <div class="mb-3 text-start">
            <label for="roll_no" class="form-label">Roll Number</label>
            <input type="text" name="roll_no" id="roll_no" class="form-control" value="<?php echo $row['roll_no']; ?>" required>
        </div>
        <div class="mb-3 text-start">
            <label for="name" class="form-label">Student Name</label>
            <input type="text" name="name" id="name" class="form-control" value="<?php echo $row['name']; ?>" required>
        </div>
        <button type="submit" class="btn btn-custom w-100">Update Student</button>
    </form>
</div>

</body>
</html>
