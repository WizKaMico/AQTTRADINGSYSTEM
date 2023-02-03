<?php
// $conn = mysqli_connect("localhost","u659776478_aqt","@Light101213","u659776478_aqt");
 $conn = mysqli_connect("localhost","root","","aqt");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>