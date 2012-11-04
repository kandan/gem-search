<?php 

define('DB_NAME', 'gemtv_kandan_com_au');

// working remotely
define('DB_HOST', 'MYSQL-5.kandan.com.au');
define('DB_USER', 'mygemt1000');

define('DB_PASS', 'npJ7B8Bt');
define('DB_PORT', '3306');

// if working locally
// define('DB_HOST', 'localhost');
// define('DB_USER', 'root');
// 
// define('DB_PASS', 'root');
// define('DB_PORT', '8888');


define('DB_HOST_PORT', DB_HOST.':'.DB_PORT);
$dsn = 'mysql:host=' . DB_HOST . ';port=' . DB_PORT . ';dbname=' . DB_NAME;
define('dsn', $dsn);


if (!$dbconn = mysql_connect(DB_HOST_PORT, DB_USER, DB_PASS)) {
  echo 'Could not connect to mysql on ' . DB_HOST . "\n DB_CREDS";
  exit;
} else {
	
	//echo 'connected';
	
}

if (!mysql_select_db(DB_NAME, $dbconn)) {
  echo 'Could not use database ' . DB_NAME . "\n";
  echo mysql_error() . "\n";
  exit;
} else {
	
	//echo 'Connected to database ' . DB_HOST_PORT. "<br/>";
	
}
?>