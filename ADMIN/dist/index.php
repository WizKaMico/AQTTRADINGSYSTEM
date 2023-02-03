<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - simple responsive fullscreen slider</title>
  <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="slide-window">
  
    <ol id="slides" start="1">
    
    	<?php
							include_once('../connection/connection.php');
							$sql = "SELECT * FROM lazada_offline_product";

							//use for MySQLi-OOP
							$query = $conn->query($sql);
							while($row = $query->fetch_assoc()){
      ?>							    
      <li class="slide color-0 alive" style="background-image:url(<?php echo $row['photo']; ?>);"></li>
      <?php } ?>
     
    
    </ol>
 
    <span class="nav fa fa-chevron-left fa-3x" id="left"></span>
    <span class="nav fa fa-chevron-right fa-3x" id="right"></span>
    
   
    
</div>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>

</body>
</html>
