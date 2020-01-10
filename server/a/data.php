<?php
//setting header to json
header('Content-Type: application/json');

//database
define('DB_HOST', '127.0.0.1');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'datas');

//get connection
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

if(!$mysqli){
  die("Connection failed: " . $mysqli->error);
}
$datepassed = $_GET['datec'];

if($datepassed == '0'){
    $query = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'happy'  ");
    $query1 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'sad'   ");
    $query2 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'neutral'  ");
    $query3 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'angry'   ");
    $query4 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'surprised'   ");
    $query5 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'scared'   ");
    $query6 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'disgust'   ");

}

if($datepassed != '0'){
    $query = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'happy' and DATE(date) = '$datepassed'");
    $query1 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'sad' and DATE(date) = '$datepassed' ");
    $query2 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'neutral' and DATE(date) = '$datepassed' ");
    $query3 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'angry'  and DATE(date) = '$datepassed'");
    $query4 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'surprised' and DATE(date) = '$datepassed' ");
    $query5 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'scared' and DATE(date) = '$datepassed' ");
    $query6 = sprintf("SELECT count(*) as a FROM `emotion` WHERE emoji = 'disgust' and DATE(date) = '$datepassed' ");

}

//query to get data from the table

//execute query
$result = $mysqli->query($query);


//execute query
$result1 = $mysqli->query($query1);


//execute query
$result2 = $mysqli->query($query2);


//execute query
$result3 = $mysqli->query($query3);

//execute query
$result4 = $mysqli->query($query4);


//execute query
$result5 = $mysqli->query($query5);

//execute query
$result6 = $mysqli->query($query6);



//loop through the returned data
$happy = array();
foreach ($result as $row) {
  $happy[] = $row;
}

//loop through the returned data
$sad = array();
foreach ($result1 as $row) {
  $sad[] = $row;
}
//loop through the returned data
$neutral = array();
foreach ($result2 as $row) {
  $neutral[] = $row;
}
//loop through the returned data
$angry = array();
foreach ($result3 as $row) {
  $angry[] = $row;
}
//loop through the returned data
$surprised = array();
foreach ($result4 as $row) {
  $surprised[] = $row;
}

//loop through the returned data
$scared = array();
foreach ($result5 as $row) {
  $scared[] = $row;
}
//loop through the returned data
$disgust = array();
foreach ($result6 as $row) {
  $disgust[] = $row;
}

$data = [];
$data[0] = $happy[0];
$data[1] = $sad[0];
$data[2] = $neutral[0];
$data[3] = $angry[0];
$data[4] = $surprised[0];
$data[5] = $scared[0];
$data[6] = $disgust[0];

//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);