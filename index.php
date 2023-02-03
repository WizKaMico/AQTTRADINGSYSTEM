<?php
include_once('ADMIN/connection/connection.php');
include_once('session_user.php'); 
require_once "ShoppingCart.php";

 
$result=mysqli_query($conn, "SELECT * FROM client where user_id='$session_id'")or die('Error In Session');
$row=mysqli_fetch_array($result);

$member_id = $row['user_id']; // you can your integerate authentication module here to get logged in member

$shoppingCart = new ShoppingCart();
if (! empty($_GET["action"])) {
    switch ($_GET["action"]) {
        case "add":
            if (! empty($_POST["quantity"])) {
                
                $productResult = $shoppingCart->getProductByCode($_GET["code"]);
                
                $cartResult = $shoppingCart->getCartItemByProduct($productResult[0]["id"], $member_id);
                
                if (! empty($cartResult)) {
                    // Update cart item quantity in database
                    $newQuantity = $cartResult[0]["quantity"] + $_POST["quantity"];
                    $shoppingCart->updateCartQuantity($newQuantity, $cartResult[0]["id"]);
                } else {
                    // Add to cart table
                    $shoppingCart->addToCart($productResult[0]["id"], $_POST["quantity"], $member_id);
                }
            }
            break;
        case "remove":
            // Delete single entry from the cart
            $shoppingCart->deleteCartItem($_GET["id"]);
            break;
        case "empty":
            // Empty cart
            $shoppingCart->emptyCart($member_id);
            break;
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CHECK/style.css">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="city.js"></script> 

<script>  
window.onload = function() {  

  // ---------------
  // basic usage
  // ---------------
  var $ = new City();
  $.showProvinces("#province");
  $.showCities("#city");

  // ------------------
  // additional methods 
  // -------------------

  // will return all provinces 
  console.log($.getProvinces());
  
  // will return all cities 
  console.log($.getAllCities());
  
  // will return all cities under specific province (e.g Batangas)
  console.log($.getCities("Batangas")); 
  
}
</script>
<link rel="stylesheet" href="PBOT/style.css">
</head>
<body class="animsition">

<?php
$cartItem = $shoppingCart->getMemberCartItem($member_id);
$item_quantity = 0;
$item_price = 0;
if (! empty($cartItem)) {
    if (! empty($cartItem)) {
        foreach ($cartItem as $item) {
            $item_quantity = $item_quantity + $item["quantity"];
            $item_price = $item_price + ($item["price"] * $item["quantity"]);
        }
    }
}





 /* Calculate Cart Total Items */

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


if(isset($_POST["proceed_payment"])) {
    $name = $_POST ['name'];
    $email = $_POST ['email'];
    $code = $_POST ['code'];
    $payment_type = $_POST['payment_type'];


     require 'mailler/autoload.php';
    
      $subject = 'AQT MANAGEMENT PURCHASE | ORDER CONFIRMATION : '.strtoupper($email).' ';
 
  
    $message = '
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>AQT MANAGEMENT PURCHASE | ORDER CONFIRMATION</title>
  

</head>
<body>
<!-- partial:index.partial.html -->
<!doctype html>
<html>

<head>
  <meta name="viewport" content="width=device-width" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>AQT MANAGEMENT PURCHASE | ORDER CONFIRMATION</title>
  <style>
    /* -------------------------------------
          GLOBAL RESETS
      ------------------------------------- */

    /*All the styling goes here*/

    img {
      border: none;
      -ms-interpolation-mode: bicubic;
      max-width: 100%;
    }

    body {
      background-color: #f2f2f7;
      font-family: sans-serif;
      -webkit-font-smoothing: antialiased;
      font-size: 15px;
      line-height: 1.4;
      margin: 0;
      padding: 0;
      -ms-text-size-adjust: 100%;
      -webkit-text-size-adjust: 100%;
    }

    table {
      border-collapse: separate;
      mso-table-lspace: 0pt;
      mso-table-rspace: 0pt;
      width: 100%;
    }

    table td {
      font-family: sans-serif;
      font-size: 15px;
      vertical-align: top;
    }

    /* -------------------------------------
          BODY & CONTAINER
      ------------------------------------- */

    .body {
      background-color: #f2f2f7;
      width: 100%;
    }

    /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */

    .container {
      display: block;
      margin: 0 auto !important;
      /* makes it centered */
      max-width: 580px;
      padding: 10px;
      width: 580px;
    }

    /* This should also be a block element, so that it will fill 100% of the .container */

    .content {
      box-sizing: border-box;
      display: block;
      margin: 0 auto;
      max-width: 580px;
      padding: 10px;
    }

    /* -------------------------------------
          HEADER, FOOTER, MAIN
      ------------------------------------- */

    .main {
      background: #ffffff;
      border-radius: 3px;
      width: 100%;
    }

    .wrapper {
      box-sizing: border-box;
      padding: 20px;
    }

    .content-block {
      padding-bottom: 10px;
      padding-top: 10px;
    }

    .footer {
      clear: both;
      margin-top: 10px;
      text-align: center;
      width: 100%;
    }

    .footer td,
    .footer p,
    .footer span,
    .footer a {
      color: #8e8e93;
      font-size: 12px;
      text-align: center;
    }

    /* -------------------------------------
          TYPOGRAPHY
      ------------------------------------- */

    h1,
    h2,
    h3,
    h4 {
      color: #1c1c1e;
      font-family: sans-serif;
      font-weight: 400;
      line-height: 1.5;
      margin: 0;
      margin-bottom: 30px;
    }

    h1 {
      font-size: 35px;
      font-weight: 300;
      text-align: center;
      text-transform: capitalize;
    }

    p,
    ul,
    ol {
      color: #1c1c1e;
      font-family: sans-serif;
      font-size: 15px;
      font-weight: normal;
      margin: 0;
      margin-bottom: 15px;
    }

    p li,
    ul li,
    ol li {
      list-style-position: inside;
      margin-left: 5px;
    }

    a {
      color: #007aff;
      text-decoration: underline;
    }

    /* -------------------------------------
          BUTTONS
      ------------------------------------- */

    .btn {
      box-sizing: border-box;
      width: 100%;
    }

    .btn>tbody>tr>td {
      padding-bottom: 15px;
    }

    .btn table {
      width: auto;
    }

    .btn table td {
      background-color: #ffffff;
      border-radius: 5px;
      text-align: center;
    }

    .btn a {
      background-color: #ffffff;
      border: solid 1px #007aff;
      border-radius: 5px;
      box-sizing: border-box;
      color: #007aff;
      cursor: pointer;
      display: inline-block;
      font-size: 15px;
      font-weight: bold;
      margin: 0;
      padding: 12px 25px;
      text-decoration: none;
      text-transform: capitalize;
    }

    .btn-primary table td {
      background-color: #007aff;
    }

    .btn-primary a {
      background-color: #007aff;
      border-color: #007aff;
      color: #ffffff;
    }

    /* -------------------------------------
          OTHER STYLES THAT MIGHT BE USEFUL
      ------------------------------------- */

    .last {
      margin-bottom: 0;
    }

    .first {
      margin-top: 0;
    }

    .align-center {
      text-align: center;
    }

    .align-right {
      text-align: right;
    }

    .align-left {
      text-align: left;
    }

    .clear {
      clear: both;
    }

    .mt0 {
      margin-top: 0;
    }

    .mb0 {
      margin-bottom: 0;
    }

    .preheader {
      color: transparent;
      display: none;
      height: 0;
      max-height: 0;
      max-width: 0;
      opacity: 0;
      overflow: hidden;
      mso-hide: all;
      visibility: hidden;
      width: 0;
    }

    .powered-by a {
      text-decoration: none;
    }

    hr {
      border: 0;
      border-bottom: 1px solid #f2f2f7;
      margin: 20px 0;
    }

    /* -------------------------------------
          RESPONSIVE AND MOBILE FRIENDLY STYLES
      ------------------------------------- */

    @media only screen and (max-width: 620px) {
      table[class=body] h1 {
        font-size: 28px !important;
        margin-bottom: 10px !important;
      }
      table[class=body] p,
      table[class=body] ul,
      table[class=body] ol,
      table[class=body] td,
      table[class=body] span,
      table[class=body] a {
        font-size: 16px !important;
      }
      table[class=body] .wrapper,
      table[class=body] .article {
        padding: 10px !important;
      }
      table[class=body] .content {
        padding: 0 !important;
      }
      table[class=body] .container {
        padding: 0 !important;
        width: 100% !important;
      }
      table[class=body] .main {
        border-left-width: 0 !important;
        border-radius: 0 !important;
        border-right-width: 0 !important;
      }
      table[class=body] .btn table {
        width: 100% !important;
      }
      table[class=body] .btn a {
        width: 100% !important;
      }
      table[class=body] .img-responsive {
        height: auto !important;
        max-width: 100% !important;
        width: auto !important;
      }
    }

    /* -------------------------------------
          PRESERVE THESE STYLES IN THE HEAD
      ------------------------------------- */

    @media all {
      .ExternalClass {
        width: 100%;
      }
      .ExternalClass,
      .ExternalClass p,
      .ExternalClass span,
      .ExternalClass font,
      .ExternalClass td,
      .ExternalClass div {
        line-height: 100%;
      }
      .apple-link a {
        color: inherit !important;
        font-family: inherit !important;
        font-size: inherit !important;
        font-weight: inherit !important;
        line-height: inherit !important;
        text-decoration: none !important;
      }
      .btn-primary table td:hover {
        background-color: #8e8e93 !important;
      }
      .btn-primary a:hover {
        background-color: #8e8e93 !important;
        border-color: #8e8e93 !important;
      }
    }
  </style>
</head>

<body class="">
  <span class="preheader">This is preheader text. Some clients will show this text as a preview.</span>
  <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="body">
    <tr>
      <td>&nbsp;</td>
      <td class="container">
        <div class="content">

          <!-- START CENTERED WHITE CONTAINER -->
          <table role="presentation" class="main">

            <!-- START MAIN CONTENT AREA -->


            <tr>
              <td class="wrapper">
                <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>
                       <center></center>
                       <br>
                       <br>
                       <p>Hi! '.strtoupper($name).',</p>
                      <p>WELCOME AQT MANAGEMENT PURCHASE | ORDER RECIEVED </p><br>
                       <p><h1><b>'.strtoupper($code).'</b></h1></p><br>
     
                 
                      <p>Have a safe and blessed week ahead and thank you for trusting, and we hope to see you posting our products in the socialmedia soon.</p>
                      <p>Best Regards,</p>
                      <p> AQT MANAGEMENT PURCHASE</p>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>

            <!-- END MAIN CONTENT AREA -->
          </table>
          <!-- END CENTERED WHITE CONTAINER -->

          <!-- START FOOTER -->
          <div class="footer">
            <table role="presentation" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="content-block">
                  <span class="apple-link"> AQT MANAGEMENT PURCHASE : </span>
                   <a href="#"></a>.
                </td>
              </tr>
              <tr>
                <td class="content-block powered-by">
                  Powered by <a href="#""> AQT MANAGEMENT PURCHASE</a>.
                </td>
              </tr>
            </table>
          </div>
          <!-- END FOOTER -->

        </div>
      </td>
      <td>&nbsp;</td>
    </tr>
  </table>
</body>

</html>

  
</body>
</html>';

   
    //Load composer's autoloader

    $mail = new PHPMailer(true);                            
    try {
        //Server settings
        $mail->isSMTP();                                     
        $mail->Host = 'smtp.hostinger.com';                      
        $mail->SMTPAuth = true;                             
        $mail->Username = 'juan2worldsecurity@juan2world.com';     
        $mail->Password = '@Devcore101213';             
        // $mail->SMTPOptions = array(
        //     'ssl' => array(
        //     'verify_peer' => false,
        //     'verify_peer_name' => false,
        //     'allow_self_signed' => true
        //     )
        // );                         
        $mail->SMTPSecure = 'tls';                           
        $mail->Port = 587;                                   

        //Send Email
        $mail->setFrom('juan2worldsecurity@juan2world.com');
        
        //Recipients
        $mail->addAddress($email);              
        $mail->addReplyTo('juan2worldsecurity@juan2world.com');
        
        //Content
        $mail->isHTML(true);                                  
        $mail->Subject = $subject;
        $mail->Body    = $message;

        $mail->send();
    
       $_SESSION['result'] = 'Message has been sent';
     $_SESSION['status'] = 'ok';
    } catch (Exception $e) {
     $_SESSION['result'] = 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
     $_SESSION['status'] = 'error';
    }   

  // action="index.php?view=<?php echo 'ADDORDER'; ?>&code=<?php echo $code;
     header('location: index.php?view=ADDORDER&code='.$code);    

}
$order = 0;
if (! empty ($name) && ! empty ($payment_type) && ! empty ($email) && ! empty ($code)) {
    // able to insert into database
    
    $order = $shoppingCart->insertOrder ( $_POST, $member_id, $item_price);
    if(!empty($order)) {
        if (! empty($cartItem)) {
            if (! empty($cartItem)) {
                foreach ($cartItem as $item) {
                    $shoppingCart->insertOrderItem ( $order, $item["id"], $item["price"], $item["quantity"]);
                }
            }
        }
    }
}
?>


	
	<!-- Header -->
	<header >
		<!-- Header desktop -->
		<div class="container-menu-desktop" >
			<!-- Topbar -->
			<div class="top-bar"  style="background-color:#fdb813;">
				<div class="content-topbar flex-sb-m h-full container" >
					<div class="left-top-bar">
						<!-- Free shipping for standard order over $100 -->
					</div>

					<div class="right-top-bar flex-w h-full">
						
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop" >
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="ADMIN/pages/logo/aqt.png">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.php?view=<?php echo 'HOME'; ?>">HI <?php echo strtoupper($row['name']); ?></a>
							</li>
                <li>
               <a href="index.php?view=<?php echo 'HOME'; ?>">HOME</a>
              </li>

							<li>
								<a href="index.php?view=<?php echo 'MYORDER'; ?>">TRACK ORDER</a>
							</li>

                <li>
                <a href="index.php?view=<?php echo 'ORDER'; ?>">MY ORDER</a>
              </li>

              <li>
                <a href="logout.php">LOGOUT</a>
              </li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
					
					     <?php if (! empty($cartItem)) { ?>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<?php echo $item_quantity; ?>">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

					    <?php } ?>

						
					</div>
				</nav>
			</div>	
		</div>



		<!-- Modal Search -->
	</header>

   
	
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">

					<?php foreach ($cartItem as $item) { ?>
					<li class="header-cart-item flex-w flex-t m-b-12">
						<a href="index.php?action=remove&id=<?php echo $item["cart_id"]; ?>&view=<?php echo 'HOME'; ?>">
						<div class="header-cart-item-img">
							<img src="ADMIN/pages/FRAME/<?php echo $item["photo"];  ?>" alt="IMG">
						</div>
						</a>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
							 <?php echo $item["name"]; ?>
							</a>

							<span class="header-cart-item-info">
								  <?php echo $item["quantity"]; ?> x <?php echo "₱".$item["price"]; ?>
							</span>
						</div>
					</li>
				<?php } ?>

			
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: ₱ <?php echo $item_price; ?>
					</div>

					<div class="header-cart-buttons flex-w w-full">
						
						<a href="index.php?view=<?php echo 'PROCESS'; ?>" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10" style="width:100%;">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>



  <?php if(!empty($_GET['view'])){ ?>
  <?php if($_GET['view'] == 'HOME'){ ?>
  <?php include('activity/home.php'); ?>
  <?php } else if($_GET['view'] == 'PROCESS'){ ?>
  <?php include('activity/process.php'); ?> 
  <?php } else if($_GET['view'] == 'MYORDER') { ?>
  <?php include('activity/myorder.php'); ?>   
  <?php } else if($_GET['view'] == 'ADDORDER'){ ?>
  <?php include('activity/process_order.php'); ?>
  <?php } else if($_GET['view'] == 'SPECIFIC'){ ?>
  <?php include('activity/detail.php'); ?>
   <?php } else if($_GET['view'] == 'ORDER'){ ?>
  <?php include('activity/order.php'); ?>
  <?php } else { ?>
  
  <?php } ?>	
  <?php } else { ?>
  <?php include('activity/home.php'); ?>
  <?php } ?>	


  <?php
              include_once('ADMIN/connection/connection.php');
              $sql = "SELECT * FROM tbl_order";

              //use for MySQLi-OOP
              $query = $conn->query($sql);
              while($row = $query->fetch_assoc()){
             ?>   
  <section class="custom-social-proof">
    <div class="custom-notification">
      <div class="custom-notification-container">
        <div class="custom-notification-image-wrapper">
          <img src="ADMIN/pages/logo/aqt.png">
        </div>
        <div class="custom-notification-content-wrapper">
          <p class="custom-notification-content">
            
           <?php echo $row['email']; ?><br>Purchased <b>a</b> Product Worth ₱<b><?php echo $row['amount']; ?></b>    
            <small>1 hour ago</small>
        
          </p>
        </div>
      </div>
      <div class="custom-close"></div>
    </div>
  </section>
    <?php } ?>

  	<!-- partial:index.partial.html -->
<div class="chatbot chatbot--closed">
  <div class="chatbot__header">
    <p><strong>GOT A QUESTION ?</strong> <span class="u-text-highlight">ASK AQTCHATBOT</span></p>
    <svg class="chatbot__close-button icon-speech" viewBox="0 0 32 32">
      <use xlink:href="#icon-speech" />
    </svg>
    <svg class="chatbot__close-button icon-close" viewBox="0 0 32 32">
      <use xlink:href="#icon-close" />
    </svg>
  </div>
  <div class="chatbot__message-window">
    <ul class="chatbot__messages">
      <li class="is-ai animation">
        <div class="is-ai__profile-picture">
          <svg class="icon-avatar" viewBox="0 0 32 32">
            <use xlink:href="#avatar" />
          </svg>
        </div>
        <span class="chatbot__arrow chatbot__arrow--left"></span>
        <p class='chatbot__message'>Hi there 🖐. I’m AQTCHATBOT, your virtual assistant. I'm here to help with your general enquiries.</p>
      </li>
      <!-- Answer and response added here -->
    </ul>
  </div>
  <div class="chatbot__entry chatbot--closed">
    <input type="text" class="chatbot__input" placeholder="Write a message..." />
    <svg class="chatbot__submit" viewBox="0 0 32 32">
      <use xlink:href="#icon-send" />
    </svg>
  </div>
</div>

<!-- Symbols -->
<svg>
  <!-- Close icon -->
  <symbol id="icon-close" viewBox="0 0 32 32">
    <title>Close</title>
    <path d="M2.624 8.297l2.963-2.963 23.704 23.704-2.963 2.963-23.704-23.704z" />
    <path d="M2.624 29.037l23.704-23.704 2.963 2.963-23.704 23.704-2.963-2.963z" />
  </symbol>

  <!-- Speech icon -->
  <symbol id="icon-speech" viewBox="0 0 32 32">
    <title>Speech</title>
    <path d="M21.795 5.333h-11.413c-0.038 0-0.077 0-0.114 0l-0.134 0.011v2.796c0.143-0.006 0.273-0.009 0.385-0.009h11.277c0.070 0 7.074 0.213 7.074 7.695 0 5.179-2.956 7.695-9.036 7.695h-3.792c-0.691 0-1.12 0.526-1.38 1.159l-1.387 3.093-1.625 3.77 0.245 0.453h2.56l2.538-5.678h2.837c7.633 0 11.84-3.727 11.84-10.494 0.001-8.564-7.313-10.492-9.875-10.492z" />
    <path d="M10.912 24.259c-0.242-0.442-0.703-0.737-1.234-0.737-0 0-0 0-0 0h-0.56c-0.599-0.011-1.171-0.108-1.71-0.28l0.042 0.012c-1.82-0.559-4.427-2.26-4.427-7.424 0-6.683 5.024-7.597 7.109-7.686v-2.8c-2.042 0.095-9.91 1.067-9.91 10.483 0 4.832 1.961 7.367 3.606 8.64 1.38 1.067 3.109 1.744 4.991 1.843l0.033 0.019 2.805 5.211 1.41-3.273z" />
  </symbol>

  <!-- Send icon -->
  <symbol id="icon-send" viewBox="0 0 23.97 21.9">
    <title>Send</title>
    <path d="M0.31,9.43a0.5,0.5,0,0,0,0,.93l8.3,3.23L23.15,0Z"/>
    <path d="M9,14.6H9V21.4a0.5,0.5,0,0,0,.93.25L13.22,16l6,3.32A0.5,0.5,0,0,0,20,19l4-18.4Z"/>
  </symbol>
  
  <!-- Avatar icon -->
  <symbol id="avatar" width="32" height="32" viewBox="0 0 44.25 44">
    <title>Avatar</title>
    <path style="fill: #7226e0; fill-rule: evenodd;" d="M1035.88,1696.25a22,22,0,1,1-22.13,22A22.065,22.065,0,0,1,1035.88,1696.25Z" transform="translate(-1013.75 -1696.25)"/>
    <path style="fill: #fff; fill-rule: evenodd;" d="M1030.18,1725.16h2.35a0.335,0.335,0,0,0,.34-0.33v-5.23h5.94v5.23a0.342,0.342,0,0,0,.34.33h2.36a0.342,0.342,0,0,0,.34-0.33v-12.36a0.34,0.34,0,0,0-.34-0.32h-2.36a0.34,0.34,0,0,0-.34.32v4.51h-5.94v-4.51a0.333,0.333,0,0,0-.34-0.32h-2.35a0.333,0.333,0,0,0-.34.32v12.36a0.335,0.335,0,0,0,.34.33" transform="translate(-1013.75 -1696.25)"/>
  </symbol>
  
</svg>


	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32" style="background-color:#fdb813;">
		<div class="container">
			<div class="row">
				

			</div>

			<div class="p-t-40">
		

				<p class="stext-107 cl6 txt-center" style="color:black;">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Created by AQT</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>



<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<script src='https://cdnjs.cloudflare.com/ajax/libs/fetch/0.10.1/fetch.min.js'></script><script  src="PBOT/script.js"></script>


    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script><script  src="CHECK/script.js"></script>

</body>
</html>