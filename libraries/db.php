<?php 

$working_locally = true;


if (!$working_locally){

// if working remotely
	define('DB_NAME', 'kandan_gem_tv');
	define('DB_HOST', 'localhost');
	define('DB_USER', 'kandan_admin');
	define('DB_PASS', 'fishskills31');
	define('DB_PORT', '3306');
} else {

// if working locally
	define('DB_NAME', 'gem_tv_kandan_com_au');
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASS', 'coop');
	define('DB_PORT', '3306');

}




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