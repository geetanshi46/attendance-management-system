<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
body {
    font-family: 'Poppins', sans-serif;
}

.navbar-custom {
    background: #1e1e2f;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
}

.navbar-brand, .nav-link {
    color: white !important;
    font-weight: 500;
    transition: all 0.3s ease;
}

.navbar-brand:hover, .nav-link:hover {
    color: #ffe066 !important;
    text-shadow: 0 0 5px rgba(255, 224, 102, 0.7);
}

.navbar {
    border-radius: 0 0 12px 12px;
}
</style>


<nav class="navbar navbar-expand-lg navbar-custom">
  <div class="container d-flex justify-content-center">
    <a class="navbar-brand mx-3" href="#">Attendance App</a>
    <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item mx-2">
          <a class="nav-link" href="add_student.php">Add Student</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link" href="view_students.php">View Students</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link" href="logout.php">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

