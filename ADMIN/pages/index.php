<?php 
include('../connection/connection.php');
include('../connection/session.php'); 
 date_default_timezone_set('Asia/Manila');
$result=mysqli_query($conn, "select * from users where user_id='$session_id'")or die('Error In Session');
$row=mysqli_fetch_array($result);

// location login
$location=mysqli_query($conn, "select * from  suc_login where user_id='".$row['user_id']."'")or die('Error In Session');
$lrow=mysqli_fetch_array($location);

//Shopee Login
$sshop=mysqli_query($conn, "select * from  shopee_activation")or die('Error In Session');
$srow=mysqli_fetch_array($sshop);

//lazada login
$lshop=mysqli_query($conn, "select * from  lazada_activation")or die('Error In Session');
$lazrow=mysqli_fetch_array($lshop);


  
    $activity  =  $_GET['view']; 
    $date_attemp = date('Y-m-d'); 
    $user_id = $row['user_id'];
    mysqli_query($conn,"INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$user_id','$activity','$date_attemp')");  

 
 ?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   AQT | HOME
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <div class="logo">
       
        <a href="#" class="simple-text logo-normal">
        <!--  AQT MANAGEMENT -->
          <div class="logo-image-big">
            <img src="logo/aqt.png">
          </div>
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <?php if($_GET['view'] == 'MY ACCOUNT'){ ?>
          <li>
            <a href="./?view=<?php echo 'DASHBOARD'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">Dashboard</p>
            </a>
          </li>
          <li class="active ">
            <a href="./index.php?view=<?php echo 'MY ACCOUNT'; ?>" style="color:black;">
              <i class="nc-icon nc-single-02" style="color:black;"></i>
              <p style="color:black;">My Account</p>
            </a>
          </li>
          <li>
            <a href="./index.php?view=<?php echo 'PRODUCTS'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>My Products</p>
            </a>
          </li>   
            <li>
            <a href="./index.php?view=<?php echo 'LAZADA'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>LAZADA</p>
            </a>
          </li>
            <li>
            <a href="./index.php?view=<?php echo 'SHOPEEC'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>SHOPEE</p>
            </a>
          </li>      
          <?php } else if($_GET['view'] == 'PRODUCTS'){ ?>
            <li>
            <a href="./?view=<?php echo 'DASHBOARD'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">Dashboard</p>
            </a>
          </li>
           <li>
            <a href="./?view=<?php echo 'MY ACCOUNT'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">My Account</p>
            </a>
          </li>
          <li class="active ">
            <a href="./index.php?view=<?php echo 'PRODUCTS'; ?>" style="color:black;">
              <i class="nc-icon nc-single-02" style="color:black;"></i>
              <p style="color:black;">My Products</p>
            </a>
          </li>   

            <li>
            <a href="./index.php?view=<?php echo 'LAZADA'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>LAZADA</p>
            </a>
          </li>
            <li>
            <a href="./index.php?view=<?php echo 'SHOPEEC'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>SHOPEE</p>
            </a>
          </li>   

          <?php } else if($_GET['view'] == 'LAZADA'){ ?>

           <li>
            <a href="./?view=<?php echo 'DASHBOARD'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">Dashboard</p>
            </a>
          </li>
           <li>
            <a href="./?view=<?php echo 'MY ACCOUNT'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">My Account</p>
            </a>
          </li>

          <li>
            <a href="./index.php?view=<?php echo 'PRODUCTS'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>My Products</p>
            </a>
          </li>

          <li class="active ">
            <a href="./index.php?view=<?php echo 'LAZADA'; ?>" style="color:black;">
              <i class="nc-icon nc-single-02" style="color:black;"></i>
              <p style="color:black;">LAZADA</p>
            </a>
          </li>   

            <li>
            <a href="./index.php?view=<?php echo 'SHOPEEC'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>SHOPEE</p>
            </a>
          </li>     




         <?php } else if($_GET['view'] == 'SHOPEEC'){ ?>   

              <li>
            <a href="./?view=<?php echo 'DASHBOARD'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">Dashboard</p>
            </a>
          </li>
           <li>
            <a href="./?view=<?php echo 'MY ACCOUNT'; ?>">
              <i class="nc-icon nc-bank"></i>
              <p style="color:black;">My Account</p>
            </a>
          </li>

          <li>
            <a href="./index.php?view=<?php echo 'PRODUCTS'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>My Products</p>
            </a>
          </li>

            <li>
            <a href="./index.php?view=<?php echo 'LAZADA'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>LAZADA</p>
            </a>
          </li>

          <li class="active ">
            <a href="./index.php?view=<?php echo 'SHOPEEC'; ?>" style="color:black;">
              <i class="nc-icon nc-single-02" style="color:black;"></i>
              <p style="color:black;">SHOPEE</p>
            </a>
          </li>   

           

          <?php } else { ?>
          <li class="active">
            <a href="./?view=<?php echo 'DASHBOARD'; ?>" style="color:black;">
              <i class="nc-icon nc-bank" style="color:black;"></i>
              <p style="color:black;">Dashboard</p>
            </a>
          </li>
          <li>
            <a href="./index.php?view=<?php echo 'MY ACCOUNT'; ?>">
              <i class="nc-icon nc-single-02"></i>
              <p>My Account</p>
            </a>
          </li>
          <li>
            <a href="./index.php?view=<?php echo 'PRODUCTS'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>My Products</p>
            </a>
          </li>
            <li>
            <a href="./index.php?view=<?php echo 'LAZADA'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>LAZADA</p>
            </a>
          </li>
            <li>
            <a href="./index.php?view=<?php echo 'SHOPEEC'; ?>" >
              <i class="nc-icon nc-single-02"></i>
              <p>SHOPEE</p>
            </a>
          </li>   
          <?php } ?>
         
          <li class="active-pro">
            <a href="../logout.php">
              <i class="nc-icon nc-button-power"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>

            <?php date_default_timezone_set('Asia/Manila'); ?>
            <a class="navbar-brand" href="javascript:;">HI! <?php echo strtoupper($row['fullname']); ?><br>
            <p style="font-size:15px;"><i class="nc-icon nc-pin-3"></i> <?php echo $lrow['region']; ?></p> | <p style="font-size:15px;"><i class="fa fa-calendar-o"></i> <?php echo date('F d, Y'); ?></p> </a>

          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
         
            <ul class="navbar-nav">
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="../logout.php">Logout</a>
                </div>
              </li>
            
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <?php if($_GET['view'] == 'MY ACCOUNT'){ ?>
      
      <div class="content">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-user">
              <div class="image">
                <img src="../assets/img/damir-bosnjak.jpg" alt="...">
              </div>
              <div class="card-body">
                <div class="author">
                  <a href="#" >
                    <img class="avatar border-gray" src="../assets/img/mike.png" alt="...">
                    <h5 class="title"><?php echo strtoupper($row['fullname']); ?></h5>
                  </a>
                  <p class="description">
                    <i class="nc-icon nc-pin-3"></i> <?php echo $lrow['region']; ?>
                  </p>
                </div>
              </div>
            </div>
         
          </div>


      <!--     <div class="col-md-4">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY LOCATION</h5>
              </div>
              <div class="card-body">
                
              </div>
            </div>
          </div> -->

          <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY PROFILE</h5>
              </div>
              <div class="card-body">
                <form action="FRAME/edit_profile.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Fullname</label>
                        <input type="text" name="fullname" class="form-control" value="<?php echo strtoupper($row['fullname']); ?>" required>
                      </div>
                    </div>
                   
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" value="<?php echo strtoupper($row['email']); ?>">
                         <input type="hidden" class="form-control" name="user_id" value="<?php echo strtoupper($row['user_id']); ?>">
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" name="submit" class="btn btn-primary btn-round" style="width:100%;">Update Profile</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <?php 

          $shop_login=mysqli_query($conn, "select * from  shopee_login")or die('Error In Session');
          $slog=mysqli_fetch_array($shop_login);

          ?>

          <?php 

          $laz_login=mysqli_query($conn, "select * from  lazada_login")or die('Error In Session');
          $lazlog=mysqli_fetch_array($laz_login);

          ?>


           <div class="col-md-6">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">SHOPEE CONNECT</h5>
              </div>
              <div class="card-body">
                <?php if(empty($slog['id'])){ ?>
                <form action="../action/shopee_log.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" required>
                      </div>
                    </div>
                   
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" required>
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                     <div class="col-md-12 pr-1">
                      <div class="form-group">
                      <button type="submit" name="add" class="btn btn-primary btn-round" style="width:100%;">SUBMIT</button>
                    </div>
                  </div>
                 </div> 
                </form>
              <?php } else { ?>
               <H5>CONNECTING PLEASE KEY-IN THE CREDENTIALS / IF CREDENTIALS IS CONNECTED MAKE SURE ITS IN STATUS 200</H5> 
              <?php } ?>  
              </div>
            </div>
          </div>

             <div class="col-md-6">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">LAZADA CONNECT</h5>
              </div>
              <div class="card-body">
                <?php if(empty($lazlog['id'])){ ?>
                <form action="../action/lazada_log.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control"  required>
                      </div>
                    </div>
                   
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" required>
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                     <div class="col-md-12 pr-1">
                      <div class="form-group">
                      <button type="submit" name="add" class="btn btn-primary btn-round" style="width:100%;">SUBMIT</button>
                    </div>
                  </div>
                 </div> 
                </form>
                  <?php } else { ?>
               <H5>CONNECTING PLEASE KEY-IN THE CREDENTIALS / IF CREDENTIALS IS CONNECTED MAKE SURE ITS IN STATUS 200</H5> 
              <?php } ?>  
              </div>
            </div>
          </div>



          <?php if(!empty($srow['id'])) { ?>


            <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY SHOPEE</h5>
              </div>
              <div class="card-body">
                <?php include '../shopee/shop.get_shop_info.php'; ?>
              </div>
            </div>
          </div>


          <?php }else { ?>  

          <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">CONNECT SHOPEE</h5>
              </div>
              <div class="card-body">
                <form action="../action/shopee.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SHOP ID</label>
                        <input type="text" class="form-control" name="shop_id" value="" placeholder="ENTER SHOPID" required>
                      </div>
                    </div>
                   
                  </div>
                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SHOP INFO</label>
                        <select class="form-control" name="credential">
                           <option value="SHOP_INFO">SHOP INFO</option>
                           <option value="SHOP_PRODUCT">SHOP PRODUCT</option>
                           <option value="ORDER_LIST">ORDER LIST</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>ACCESS TOKEN</label>
                        <input type="text" class="form-control" name="access_token" value="" placeholder="ENTER ACCESS TOKEN">
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" name="add" class="btn btn-primary btn-round" style="width:100%;">ADD SHOPPEE</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        <?php } ?>


          <?php if(!empty($lazrow['id'])) { ?>


            <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY LAZADA</h5>
              </div>
              <div class="card-body">
                <?php include '../lazada/lazada.php'; ?>
              </div>
            </div>
          </div>


          <?php }else { ?>  

          <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">CONNECT LAZDA</h5>
              </div>
              <div class="card-body">
                <form action="../action/lazada.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>APP ID</label>
                        <input type="text" class="form-control" name="app_key" value="" placeholder="ENTER APP KEY" required>
                      </div>
                    </div>
                   
                  </div>
               
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>APP SECRET</label>
                        <input type="text" class="form-control" name="app_secret" value="" placeholder="ENTER APP SECRET">
                      </div>
                    </div>
                  </div>

                    <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>APP TOKEN</label>
                        <input type="text" class="form-control" name="user_token" value="" placeholder="ENTER ACCESS TOKEN">
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" name="add" class="btn btn-primary btn-round" style="width:100%;">ADD LAZADA</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        <?php } ?>
        </div>
      </div>

      <?php }else if($_GET['view'] == 'SHOPEE'){ ?>

      <div class="content">
        <div class="row">
        
  

          <?php if(!empty($srow['credential'] == 'SHOP_INFO')) { ?>


            <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY SHOPEE PRODUCT</h5>
              </div>
              <div class="card-body">
                <?php include '../shopee/product.get_item_list.php'; ?>
              </div>
            </div>
          </div>


            <div class="col-md-4">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY SHOPEE STORE</h5>
              </div>
              <div class="card-body">
              
              </div>
            </div>
          </div>



          <?php }else { ?>  

          <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">GET SHOPEE PRODUCT</h5>
              </div>
              <div class="card-body">
                <form action="../action/shopee.php" method="POST">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SHOP ID</label>
                        <input type="text" class="form-control" name="shop_id" value="" placeholder="ENTER SHOPID" required>
                      </div>
                    </div>
                   
                  </div>
                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SHOP INFO</label>
                        <select class="form-control" name="credential">
                           <option value="SHOP_PRODUCT">SHOP PRODUCT</option>
                           <option value="ORDER_LIST">ORDER LIST</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>ACCESS TOKEN</label>
                        <input type="text" class="form-control" name="access_token" value="" placeholder="ENTER ACCESS TOKEN">
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" name="add" class="btn btn-primary btn-round" style="width:100%;">ADD SHOPPEE</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

            <div class="col-md-4">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY SHOPEE STORE</h5>
              </div>
              <div class="card-body">
                
              </div>
            </div>
          </div>
        <?php } ?>
        </div>
      </div>

       <?php }else if($_GET['view'] == 'SHOPEEC'){ ?>

          <div class="content">
        <div class="row">


         


            <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">SHOPEE CONNECT</h5>
              </div>
              <div class="card-body">

                <?php 

                $schop=mysqli_query($conn, "select * from shopee_login")or die('Error In Session');
                $scrow=mysqli_fetch_array($schop);

                ?>

                <?php if(!empty($scrow['id'])){ ?>

             

                <form action="#" method="POST" enctype="multipart/form-data">   
                  <div class="row" class="col-md-12">
                    <div class="update ml-auto mr-auto">
                        <center>
                        	    <img src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=https%3A%2F%2Faqtmanagement.online/pages/download/shopee_product.xlsx"/>
                        	</center>    
                      <button type="submit" name="save" class="btn btn-primary btn-round" style="width:100%; background-color:#fd5f32; border-color:#fd5f32;">SHOPEE CONNECT (OFFLINE)</button>
                    </div>
                  </div>
                </form>

                   <div class="col-md-12">
                  <div class="card card-user">
                    <div class="card-header">
                      <h5 class="card-title">MY PRODUCT</h5>
                    </div>
                    <div class="card-body">
                      <iframe src="FRAME/shopee_login.php?user_id=<?php echo $row['user_id']; ?>" style="width:100%; height:600px; border:none;"></iframe>
                    </div>
                  </div>
                </div>


                <?php } else { ?>  
               

              <?php } ?>
              
              </div>
            </div>
          </div>

        </div>
      </div>









       <?php }else if($_GET['view'] == 'LAZADA'){ ?>

          <div class="content">
        <div class="row">




            <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">LAZADA CONNECT</h5>
              </div>
              <div class="card-body">

                <?php 

                $lchop=mysqli_query($conn, "select * from lazada_login")or die('Error In Session');
                $lcrow=mysqli_fetch_array($lchop);

                ?>

                <?php if(!empty($lcrow['id'])){ ?>

                <form action="#" method="POST" enctype="multipart/form-data">   
                  <div class="row" class="col-md-12">
                    <div class="update ml-auto mr-auto">
                        	<center>
                        	    <img src="https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=https%3A%2F%2Faqtmanagement.online/pages/download/lazada_offline_product.xlsx&choe=UTF-8"/>
                        	</center>    
                      <button type="submit" name="save" class="btn btn-primary btn-round" style="width:100%; background-color:#151a71; border-color:#151a71;">LAZADA CONNECT (OFFLINE)</button>
                    </div>
                  </div>
                </form>

                   <div class="col-md-12">
                  <div class="card card-user">
                    <div class="card-header">
                      <h5 class="card-title">MY PRODUCT</h5>
                    </div>
                    <div class="card-body">
                      <iframe src="FRAME/lazada_login.php?user_id=<?php echo $row['user_id']; ?>" style="width:100%; height:600px; border:none;"></iframe>
                    </div>
                  </div>
                </div>

              
                 <?php } else { ?>  
               

              <?php } ?>

              </div>
            </div>
          </div>

        </div>
      </div>


       <?php }else if($_GET['view'] == 'PRODUCTS'){ ?>

      <div class="content">
        <div class="row">


            <div class="col-md-9">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY PRODUCT</h5>
              </div>
              <div class="card-body">
                <iframe src="FRAME/?user_id=<?php echo $row['user_id']; ?>" style="width:100%; height:600px; border:none;"></iframe>
              </div>
            </div>
          </div>


            <div class="col-md-3">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">ADD PRODUCT</h5>
              </div>
              <div class="card-body">

                <form action="FRAME/upload.php" method="POST" enctype="multipart/form-data">
                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SKU</label>
                        <input type="text" class="form-control" name="sku" value="<?php  echo rand(666666,999999); ?>" readonly>
                      </div>
                    </div>
                   
                  </div>
                 <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>PRODUCT NAME</label>
                        <input type="text" class="form-control" name="product_name" required>
                      </div>
                    </div>
                   
                  </div>

                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>QTY</label>
                        <input type="number" class="form-control" name="qty" required>
                      </div>
                    </div>
                   </div>

                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>PRICE</label>
                        <input type="number" step=".01" class="form-control" name="price" required>
                      </div>
                    </div>                   
                  </div>


                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>EXPIRATION DATE</label>
                        <input type="date" class="form-control" name="expiration_date">
                      </div>
                    </div>
                  </div>

                    <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>SIZE</label>
                          <select class="form-control" name="size" required="">
                          <?php
            
                          $sql = "SELECT * FROM tbl_size";

                          //use for MySQLi-OOP
                          $query = $conn->query($sql);
                          while($row = $query->fetch_assoc()){
                            ?>
                       <option value="<?php echo $row['size']; ?>"><?php echo $row['size']; ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                  </div>

                   <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>CATEGORY</label>
                          <select class="form-control" name="category" required="">
                          <?php
            
                          $sql = "SELECT * FROM tbl_category";

                          //use for MySQLi-OOP
                          $query = $conn->query($sql);
                          while($row = $query->fetch_assoc()){
                            ?>
                       <option value="<?php echo $row['category']; ?>"><?php echo $row['category']; ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-12 pr-1">
                      <div class="form-group">
                        <label>IMAGE</label>
                        <input type="file" class="form-control" name="photo" required>
                        <?php date_default_timezone_set('Asia/Manila'); ?>

                         <input type="hidden" class="form-control" name="date_created" value="<?php echo date('Y-m-d'); ?>" required>
                         <input type="hidden" class="form-control" name="created_by" value="<?php echo $row['user_id']; ?>" required>
                      </div>
                    </div>
                  </div>
                
                
                  
                  <div class="row">
                    <div class="update ml-auto mr-auto">
                      <button type="submit" name="save" class="btn btn-primary btn-round" style="width:100%;">ADD PRODUCT</button>
                    </div>
                  </div>
                </form>
              
              </div>
            </div>
          </div>

        </div>

          <div class="row">


            <div class="col-md-12">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">MY PRODUCT STORE ORDERS</h5>
              </div>
              <div class="card-body">
                <iframe src="../../myorder/" style="width:100%; height:600px; border:none;"></iframe>
              </div>
            </div>
          </div>

         </div> 

      </div>

      <?php } else { ?>


       

               
      <div class="content">
        <div class="row">
        

        

         

        <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_lazada.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                    
                       <?php 

                       $lchops=mysqli_query($conn, "select *,COUNT(id) as TOTAL from lazada_offline_product")or die('Error In Session');
                       $lcrows=mysqli_fetch_array($lchops);

                      ?>
                      <p class="card-category">Lazada Products</p>
                      <p class="card-title"><?php echo $lcrows['TOTAL']; ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_shopee.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                        <?php 

                       $l_chops=mysqli_query($conn, "SELECT *, COUNT(id) as total FROM `shopee_product`")or die('Error In Session');
                       $l_crows=mysqli_fetch_array($l_chops);

                      ?>
                      <p class="card-category">Shopee Product</p>
                      <p class="card-title"><?php echo $l_crows['total']; ?><p>

                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/aqt.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <?php 

                       $schops_sold=mysqli_query($conn, "SELECT *, COUNT(id) as total FROM `tbl_product`")or die('Error In Session');
                       $s_crows=mysqli_fetch_array($schops_sold);

                      ?>
                      <p class="card-category">Web Product </p>
                      <p class="card-title">
                        <p class="card-title"><?php echo $s_crows['total']; ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>


               <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_lazada.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                    
                       <?php 

                       $laz_sol=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `lazada_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $lazol=mysqli_fetch_array($laz_sol);

                      ?>
                      <p class="card-category">Lazada Sold</p>
                      <p class="card-title"> <?php echo number_format($lazol['total'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_shopee.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                        <?php 

                       $shosol=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `shopee_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $shopsol=mysqli_fetch_array($shosol);

                      ?>
                      <p class="card-category">Shopee Sold</p>
                      <p class="card-title"><?php echo number_format($shopsol['total'],2,".",","); ?><p>

                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/aqt.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <?php 

                       $schops_sold=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $s_crows=mysqli_fetch_array($schops_sold);

                      ?>
                      <p class="card-category">Web Sold </p>
                      <p class="card-title">
                        <p class="card-title"><?php echo number_format($s_crows['total'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>


            <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $e_prod=mysqli_query($conn, "SELECT *,COUNT(id) as total FROM `tbl_order`")or die('Error In Session');
                      $e_prow=mysqli_fetch_array($e_prod);


                      ?>
                      <p class="card-category">Store Purchase</p>
                      <p class="card-title"><?php echo $e_prow['total']; ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>


          <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $e_proc=mysqli_query($conn, "SELECT *,SUM(amount) as total FROM `tbl_order`")or die('Error In Session');
                      $e_prowc=mysqli_fetch_array($e_proc);






                      ?>
                      <p class="card-category">Store Expected Income To Be Collected</p>
                      <p class="card-title">₱ <?php echo number_format($e_prowc['total'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>


           <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $er_proc=mysqli_query($conn, "SELECT *,SUM(amount) as total FROM `tbl_order` WHERE order_status = 'COMPLETE'")or die('Error In Session');
                      $er_prowc=mysqli_fetch_array($er_proc);






                      ?>
                      <p class="card-category">Store Income</p>
                      <p class="card-title">₱ <?php echo number_format($er_prowc['total'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>


             <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $Pprod=mysqli_query($conn, "SELECT SUM(qty * price) as TOTAL FROM `tbl_product` ORDER BY `created_by` ASC")or die('Error In Session');
                      $pprow=mysqli_fetch_array($Pprod);

                      ?>
                      <p class="card-category">Total Product Amount</p>
                      <p class="card-title">₱ <?php echo number_format($pprow['TOTAL'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $Pp_rod=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                      $pp_row=mysqli_fetch_array($Pp_rod);

                      ?>
                      <p class="card-category">Sytem Income</p>
                      <p class="card-title">₱ <?php echo number_format($pp_row['total'],2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>
           <div class="col-lg-4 col-md-3 col-sm-3">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                       <?php 

                      $P_prod=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                      $p_prow=mysqli_fetch_array($P_prod);

                       $l_schops=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `lazada_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $l_scrows=mysqli_fetch_array($l_schops);


                         $sschops_sold=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `shopee_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $ss_crows=mysqli_fetch_array($sschops_sold);


                        $er_proc=mysqli_query($conn, "SELECT *,SUM(amount) as total FROM `tbl_order` WHERE order_status = 'COMPLETE'")or die('Error In Session');
                      $er_prowc=mysqli_fetch_array($er_proc);



                       $total_amount_earn = $p_prow['total'] + $l_scrows['total'] +  $ss_crows['total'] + $er_prowc['total'];





                      ?>
                      <p class="card-category">Overall Income</p>
                      <p class="card-title">₱ <?php echo number_format($total_amount_earn,2,".",","); ?><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  
                </div>
              </div>
            </div>
          </div>
          


          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_lazada.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                    
                      <p class="card-category">Lazada Product (PDF)</p>
                      <p class="card-title">
                        <?php echo "<a href='../../myorder/lazada_pdf.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>PRINT PDF</a>"; ?>
                        <?php echo "<a href='../../myorder/csv_lazada.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>DOWNLOAD</a>"; ?>
                      <p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/logo_shopee.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <?php 

                       $schops_sold=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `shopee_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $s_crows=mysqli_fetch_array($schops_sold);

                      ?>
                      <p class="card-category">Shopee Product (PDF)</p>
                      <p class="card-title">
                        <?php echo "<a href='../../myorder/shopee_pdf.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>PRINT PDF</a>"; ?>
                           <?php echo "<a href='../../myorder/csv_shopee.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>DOWNLOAD</a>"; ?>

                      <p>

                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>

              <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                     <img src="logo/aqt.png" style="width:30%;">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <?php 

                       $schops_sold=mysqli_query($conn, "SELECT *, SUM(new_price * new_qty) as total FROM `shopee_product_update_history` WHERE type = 'SOLD'")or die('Error In Session');
                       $s_crows=mysqli_fetch_array($schops_sold);

                      ?>
                      <p class="card-category">Web Product (PDF)</p>
                      <p class="card-title"><p class="card-title"><?php echo "<a href='../../myorder/web_pdf.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>PRINT PDF</a>"; ?>
                      <?php echo "<a href='../../myorder/csv_web.php' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span>DOWNLOAD</a>"; ?>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>



         
    
          
        </div>
        <div class="row">
          <div class="col-md-8">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title">Products</h5>
                <p class="card-category">24 Hours performance</p>
              </div>
              <div class="card-body ">
                <center><iframe src="../action/line.php" style="width:100%; height:500px; border:none;"></iframe></center>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-history"></i> Updated 3 minutes ago
                </div>
              </div>
            </div>
          </div>
            <div class="col-md-4">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title">Products</h5>
                <p class="card-category">24 Hours performance</p>
              </div>
              <div class="card-body ">
                <center><iframe src="../action/pie.php" style="width:100%; height:500px; border:none;"></iframe></center>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="fa fa-history"></i> Updated 3 minutes ago
                </div>
              </div>
            </div>
          </div>
        </div>
      
      </div>
     <?php } ?>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
           
            <div class="credits ml-auto">
              <span class="copyright">
                © <script>
                  document.write(new Date().getFullYear())
                </script>, AQT MANAGEMENT
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initChartsPages();
    });
  </script>


</body>

</html>
