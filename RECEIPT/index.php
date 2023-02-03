<?php 

$code = $_GET['code'];
include('../ADMIN/connection/connection.php');
$result=mysqli_query($conn, "SELECT *,tbl_order.code as tcode,tbl_order.amount as tamount FROM tbl_order LEFT JOIN client ON tbl_order.customer_id = client.user_id  where tbl_order.code='$code'");
$xrow=mysqli_fetch_array($result);

?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>AQT MANAGEMENT | RECIEPT </title>
  

</head>
<body>
<!-- partial:index.partial.html -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
    body {
        font-family: 'Helvetica Neue', Helvetica, "Segoe UI", Arial, sans-serif;
        font-size: 13px;
    }
</style>

<div class="container" style="margin-top: 40px;">
    <div class="row">
        <div class="col-md-6 col-xs-6">AQT MANAGEMENT</div>
        <?php date_default_timezone_set('Asia/Manila'); ?>
        <div class="col-md-6 col-xs-6" style="text-align: right;"><?php echo date('F j Y H:i:s'); ?></div>
    </div>
</div>

<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div class="col-md-7 col-xs-7" style="text-align: right;"> 
            <img style="width: 35%;height: 100px;"src="../myorder/aqt.png" alt="" />
        </div>
        <div class="col-md-5 col-xs-5" style="text-align: right; padding-top: 20px;">
            <div style="font-size: 18px; font-weight: bold; padding-bottom: 6px;"> ORDERED FROM  : AQT MANAGEMENT </div>
            <?php $houseloc =  $xrow['address'].','.$xrow['city'].','.$xrow['province'];  ?>
            <div style="padding-bottom: 6px;"> ADDRESS : <?php echo strtoupper($houseloc); ?></div>
        </div>
    </div>
</div>

<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div style="text-align: center; font-size: 30px; font-weight: 300; letter-spacing: 3;"> TRANSACTION RECEIPT </div>
        <div style="text-align: center; font-size: 16px; font-weight: 500; letter-spacing: 1;"> Transaction Type </div>
    </div>
</div>

<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div class="title-section" style="font-size: 16px; letter-spacing: 1; border-bottom: 2px #666666 solid; padding-bottom: 10px;"> RECEPIENT DETAILS </div>
        <table style="width: 100%; margin-top: 20px;">
            <thead style="letter-spacing: 1; font-weight: 300;">
                <tr>
                    <td style="padding: 10px 0;"> NAME </td> 
                     <td style="padding: 10px 0;"> CLIENT ADDRESS </td> 
                    <td style="text-align: center;">  CODE </td> 
                    <td style="text-align: right;"> EMAIL </td>
                </tr>
            </thead>
            <tbody style="font-size: 22px;">
                <tr>
                    <td><?php echo strtoupper($xrow['name']); ?> </td> 
                     <td><?php echo strtoupper($houseloc); ?> </td> 
                    <td style="text-align: center;"> <?php echo strtoupper($xrow['tcode']); ?> </td>
                    <td style="text-align: right;"> <?php echo strtoupper($xrow['email']); ?> </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div class="title-section" style="font-size: 16px; letter-spacing: 1; border-bottom: 2px #666666 solid; padding-bottom: 10px;"> TRANSACTION DETAILS </div>
            <div class="row" style="margin-top: 20px;">
                 <table style="width: 100%; margin-top: 20px;">
                    <thead style="letter-spacing: 1; font-weight: 300;">
                        <tr>
                            <td style="padding: 10px 0;"> PRODUCT </td> 
                             <td style="text-align: center;"> NAME </td> 
                            <td style="text-align: center;">  QTY </td> 
                             <td style="text-align: center;">  PRICE </td> 
                
                        </tr>
                    </thead>
                    <tbody style="font-size: 22px;">
                        <?php
                          
                            $sql = "SELECT *,tbl_product.name as pname,tbl_order_item.quantity as pquant FROM  tbl_order LEFT JOIN tbl_order_item ON tbl_order.id = tbl_order_item.order_id LEFT JOIN tbl_product ON tbl_order_item.product_id = tbl_product.id WHERE tbl_order.code = '$code'";

                            //use for MySQLi-OOP
                            $query = $conn->query($sql);
                            while($row = $query->fetch_assoc()){
                        ?>
                        <tr>
                            <td><img src="../ADMIN/pages/FRAME/<?php echo $row['photo']; ?>" style="width:100%; height:50px;"></td> 
                             <td style="text-align: center;"><?php echo strtoupper($row['pname']); ?> </td> 
                             <?php $total = $row['item_price'] * $row['pquant']; ?>
                              <td style="text-align: center;"><?php echo strtoupper($row['pquant']); ?> / price per pcs. <?php echo strtoupper($row['item_price']); ?> </td> 
                            <td style="text-align: center;"> <?php echo strtoupper($total); ?> </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
                <hr>
            </div>
            <hr style="border-top: 1px solid #666666;">
            <div class="row" style="margin-top: 20px;">
                <div class="col-md-6 col-xs-6">
                    <div style="letter-spacing: 1; font-weight: 300; padding: 10px 0;"> TRANSACTION AMOUNT TO PAY </div>
                    <div style="font-size: 22px;"> ₱ <?php echo strtoupper($xrow['tamount']); ?> </div>
                </div>
                
                <hr>
            </div>
            <hr style="border-top: 1px solid #666666;">
    </div>
</div>

<div class="container" style="margin-top: 50px; font-weight: 300;">
    <div class="col-md-12" style="text-align: center;">
        <div> The transaction shown on your recepit is correct at the time of downloading. </div>
        <div> If you think something is incorrect, please contact us on 000 00 000 </div>
    </div>
</div>
<!-- partial -->
  
</body>
</html>
