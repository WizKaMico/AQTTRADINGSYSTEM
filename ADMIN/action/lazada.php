<?php
  session_start();
  include '../connection/connection.php';

  if(isset($_POST['add'])){
  
    $app_key = $_POST['app_key'];
    $app_secret = $_POST['app_secret'];
     $user_token  = $_POST['user_token'];



    
    $sql = "INSERT INTO lazada_activation (app_key, app_secret, user_token) VALUES ('$app_key', '$app_secret', '$user_token')";

    //use for MySQLi OOP
    if($conn->query($sql)){
      $_SESSION['success'] = 'USER ADDED SUCCESFULLY';
    }
    ///////////////

    //use for MySQLi Procedural
    // if(mysqli_query($conn, $sql)){
    //  $_SESSION['success'] = 'Member added successfully';
    // }
    //////////////
    
    else{
      $_SESSION['error'] = 'Something went wrong while adding';
    }
  }
  else{
    $_SESSION['error'] = 'Fill up add form first';
  }

  header('location: ../pages/index.php?view=MY ACCOUNT');
?>