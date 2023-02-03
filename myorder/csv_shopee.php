<?php 
// Load the database connection
require_once('../ADMIN/connection/connection.php');
 
//CSV Filename
$fname = 'shopee.csv';
 
// Header Row Data: Array
$header = ["ID","SKU", "Name", "Price", "Qty"];
 
// Selecting all authors query
$qry = $conn->query("SELECT * FROM `shopee_product` order by `id` asc");
 
if($qry->num_rows <= 0){
    echo "<script> alert('No data has fetched.'); location.href = './'; </script>";
    exit;
}
 
//Open a File
$file = fopen("php://memory","w");
 
// Attach Header
fputcsv($file, $header,',');
 
 
// Loop the authors and put it into the CSV file
while($row = $qry->fetch_assoc()){
    fputcsv($file, [$row['id'], $row['product_id'], $row['product_name'], $row['price'], $row['qty']],',');
}
 
fseek($file,0);
 
// Add headers to download the file
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="'.$fname.'";');
 
// Read File 
fpassthru($file);
exit;