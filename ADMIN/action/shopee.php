<?php
  session_start();
  include '../connection/connection.php';

  if(isset($_POST['add'])){
  
    $shop_id = $_POST['shop_id'];
    $access_token = $_POST['access_token'];
     $credential  = $_POST['credential'];



    
    $sql = "INSERT INTO shopee_activation (shop_id, access_token, credential) VALUES ('$shop_id', '$access_token', '$credential')";

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