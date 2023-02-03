<?php

  include '../connection/connection.php';
  $credential = 'SHOP_INFO';
 
  $result=mysqli_query($conn, "select * from shopee_activation where credential='$credential'")or die('Error In Session');
$row=mysqli_fetch_array($result);

if(!empty($row['credential'])){
date_default_timezone_set('Asia/Manila');
$partner_id = 1009753; //app_id of Shopee App
$api_path = '/api/v2/shop/get_shop_info'; //shopee API path
$timestamp = time(); //UNIX format of time, 5mins expiration time
$access_token = $row['access_token'];; //access_token from /api/v2/shop/auth_partner
$shop_id = $row['shop_id']; //unique shopee shop id
$secretkey = '230f3d65fe3aebbc0ce042818209818fd5b39d7724494577897351a199a0f461';

$tokenBaseString = $partner_id.$api_path.$timestamp.$access_token.$shop_id;
$sign = hash_hmac('sha256', $tokenBaseString, $secretkey, false);


$curl = curl_init();


curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://partner.test-stable.shopeemobile.com/api/v2/shop/get_shop_info?access_token='.$access_token.'&partner_id=1009753&shop_id=63644&sign='.$sign.'&timestamp='.$timestamp.'',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

if($e = curl_error($curl)) {
    echo $e;
} else {
     
    // Decoding JSON data
   $array = json_decode(json_encode($response), true);
    


    echo $array;
    // Outputting JSON data in
    // Decoded form
   

   
            
    
}
 
// Closing curl
curl_close($curl);

} else {

   echo 'GENERATE TOKEN';

}
?>

