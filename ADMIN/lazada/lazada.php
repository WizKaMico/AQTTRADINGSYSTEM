<?php

  include '../connection/connection.php';

    $result=mysqli_query($conn, "select * from lazada_activation")or die('Error In Session');
$row=mysqli_fetch_array($result);

date_default_timezone_set('Asia/Manila');
$app_id = $row['app_key'];
$secret = $row['app_secret'];
$user_token = $row['user_token'];

function hmac_sha256($data, $key){
    return hash_hmac('sha256', $data, $key);
}
function msectime() {
   list($msec, $sec) = explode(' ', microtime());
   return $sec . '000';
}
$timeStamp = msectime();

function generateSign($apiName,$params,$secret)
{
    ksort($params);

    $stringToBeSigned = '';
    $stringToBeSigned .= $apiName;
    foreach ($params as $k => $v)
    {
        $stringToBeSigned .= "$k$v";
    }
    unset($k, $v);
    return strtoupper(hmac_sha256($stringToBeSigned,$secret));
}

$options = array(
                'app_key' => $app_id,
                'timestamp' => $timeStamp,
                'sign_method' =>'sha256',
                'userToken'=> $user_token,
                'dateStart'=> date('Y-m-d'),
                'dateEnd'=> date('Y-m-d'),
                'offerId'=> '', #You can get this from conversion report.
                'limit' => 10,
                'page' => 1,
            );

$signature = generateSign('/marketing/conversion/report',$options,$secret);
$url = "https://api.lazada.co.th/rest/marketing/conversion/report";
#List of available endpoint - https://open.lazada.com/doc/doc.htm?spm=affiliate.home.0.0.5b81623b6bdk7G#?docId=108065&nodeId=10443
$i=0;
foreach ($options as $key => $value)
{
    if($i == 0){
        $url .= "?" ."$key=" . urlencode($value);
    }else{
        $url .= "&" ."$key=" . urlencode($value);
    }
    $i++;   
}
$url.= '&sign='.$signature;


$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
));

$response = curl_exec($curl);
curl_close($curl);
echo $response;