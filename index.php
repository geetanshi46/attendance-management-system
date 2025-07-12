<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
    
    <form class="loginform" method="post" action="login_process.php">
    <h3 class="form-heading">Login to your account</h3>
    <div class="inputgroup">
    <i class="fa fa-user icon"></i>
    <input type="text" id="txtusername" name="username" placeholder="Username" required>
</div>

    <div class="inputgroup">
    <i class="fa fa-lock icon"></i>
    <input type="password" id="txtpassword" name="password" placeholder="Password" required>
</div>
    <button type="submit" class="btnlogin" id="btnlogin1">Log In</button>
    <a href="#" class="forgot-password">Forgotten password?</a>
    
</form>


    <script src="js/jquery.js"></script>
    <script src="js/login.js"></script>

    
</body>
</html>
