<?php
  session_start();
  include '../connection/connection.php';

  if(isset($_POST['add'])){
  
    $email = $_POST['email'];
    $password = $_POST['password'];



    
    $sql = "INSERT INTO lazada_login (email, password) VALUES ('$email', '$password')";

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