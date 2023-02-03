<?php
session_start();
include_once('../../connection/connection.php');
if(isset($_POST['bulk_update_submit'])){
    $idArr = $_POST['checked_id'];
    $size = $_POST['size'];
    $user_id = $_POST['user_id'];
    $category = $_POST['category'];
    $description = $_POST['description'];
  
    foreach($idArr as $id){
        $sql = "SELECT * FROM tbl_product WHERE id = '$id'";
        $query = $conn->query($sql);
        while($row = $query->fetch_assoc()){
        // $assigned_id = $row['user_id'];   
      
      
        mysqli_query($conn,"UPDATE tbl_product SET size = '$size', category = '$category', description = '$description' WHERE id = '$id'");
       
        // mysqli_query($conn,"UPDATE tbl_order_item SET item_price = '$price' WHERE product_id = '$id'");
        }
    }
    $_SESSION['success_msg'] = 'Successful';
    header('location: index.php?user_id='.$user_id);
}
?>