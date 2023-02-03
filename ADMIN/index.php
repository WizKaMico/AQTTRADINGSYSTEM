<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>AQT</title>
  <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AQT</title><link rel="stylesheet" href="css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<body>
  <section>
    <div class="container">
      <div class="user signinBx">
        <div class="imgBx" style="background-color:white;">
          <iframe src="dist/" style="width:100%; height:410px; margin-top:50px; border:none;"></iframe> 
        </div>
        <div class="formBx">
          <form action="action/login.php" method="POST">
            <img src="pages/logo/aqt.png" style="width:100%;">
            <input type="email" name="email" placeholder="Email" required=""/>
            <input type="password" name="password" placeholder="Password" required=""/>
            <input type="submit" name="login" value="Login" />
            <p class="signup">
              Don't have an account ?
              <a href="#" onclick="toggleForm();">Sign Up.</a>
            </p>
          </form>
        </div>
      </div>
      <div class="user signupBx">
        <div class="formBx">
          <form action="action/register.php" method="POST">
            <h2>Create an account</h2>
            <input type="text" name="fullname" placeholder="Fullname" required=""/>
            <input type="email" name="email" placeholder="Email Address" required=""/>
            <input type="password" name="password" placeholder="Create Password" required=""/>
            <input type="text" name="captcha_code" value="<?php echo 'AQT-'; echo rand(6666,9999); ?>" style="border:none;" readonly=""/>
            <input type="text" name="captcha_input" placeholder="Captcha Verification" require=""/>
            <input type="submit" name="register" value="Sign Up" />
            <p class="signup">
              Already have an account ?
              <a href="#" onclick="toggleForm();" style="width:100%;">Sign in.</a>
            </p>
          </form>
        </div>
        <div class="imgBx"></div>
      </div>
    </div>
  </section>
</body>
<!-- partial -->
  <script  src="js/script.js"></script>

</body>
</html>
