<?php
  session_start();
  include_once('../../connection/connection.php');

  if(isset($_POST['submit'])){
                 
                $user_id = $_POST['user_id']; 
                $prod_id = $_POST['prod_id'];
                $product_name   = $_POST['product_name'];
                $parent_sku = $_POST['parent_sku'];
                $price = $_POST['price'];
                $image_per_variation = $_POST['image_per_variation'];
                $stock = $_POST['stock'];
                $cover_image = $_POST['image_per_variation'];
                $item_image_1 = $_POST['image_per_variation'];
                $item_image_2 = $_POST['image_per_variation'];
                $item_image_3 = $_POST['image_per_variation'];
                $item_image_4 = $_POST['image_per_variation'];
                $item_image_5 = $_POST['image_per_variation'];
                $item_image_6 = $_POST['image_per_variation'];
                $item_image_7 = $_POST['image_per_variation'];
                $item_image_8 = $_POST['image_per_variation'];
                $sample_channel_1 = 'On';
                $sample_channel_2 = 'On';
                $sample_channel_3 = 'On';
                $activity = 'ADDING PRODUCT TO SHOPEE PROD.ID:'.$prod_id.'';
                date_default_timezone_set('Y-m-d');
                $date_added = date('Y-m-d');

     $sql1 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$user_id','$activity','$date_added')";            
    $sql = "INSERT INTO shopee_convert (prod_id, category,  name,  product_description, parent_sku,  variation_integration_no,  variation_name1, option_variation_1,  image_per_variation, variation_name2, option_variation_2,  price, stock, sku, cover_image, item_image_1,  item_image_2,  item_image_3,  item_image_4,  item_image_5,  item_image_6,  item_image_7,  item_image_8,  weight,  length,  width, height,  sample_channel_1,  sample_channel_2,  sample_channel_3) VALUES ('$prod_id', '$category',  '$product_name',  '$product_description', '$parent_sku',  '$variation_integration_no',  '$variation_name1', '$option_variation_1',  '$image_per_variation', '$variation_name2', '$option_variation_2',  '$price', '$stock', '$parent_sku', '$cover_image', '$item_image_1',  '$item_image_2',  '$item_image_3',  '$item_image_4',  '$item_image_5',  '$item_image_6',  '$item_image_7',  '$item_image_8',  '$weight',  '$length',  '$width', '$height',  '$sample_channel_1',  '$sample_channel_2',  '$sample_channel_3')";

    //use for MySQLi OOP
    if($conn->query($sql) && $conn->query($sql1)){
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

  header('location: index.php?user_id='.$user_id);
?>