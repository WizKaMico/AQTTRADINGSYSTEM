<?php 
include('connection/connection.php');
include('connection/session.php'); 
 
$result=mysqli_query($conn, "select * from users where user_id='$session_id'")or die('Error In Session');
$row=mysqli_fetch_array($result);
 
 ?>

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
        <div class="imgBx"></div>
        <div class="formBx">
          <form action="action/verify.php" method="POST">
             <img src="pages/logo/aqt.png" style="width:100%;">
            <h2>Hi! <?php echo strtoupper($row['fullname']); ?></h2>
            <input type="hidden" name="user_id" value="<?php echo $row['user_id']; ?>"/>
            <input type="number" name="code" placeholder="Enter 6-Digit Verification Code" required/>
            <input type="submit" name="verify" value="Verify" style="width:100%;" />
          
          </form>
        </div>
      </div>
      
    </div>
  </section>
</body>
<!-- partial -->
  <script  src="js/script.js"></script>

</body>
</html>
