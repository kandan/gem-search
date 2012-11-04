<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>
<?php 

//phpinfo();

$db = mysql_connect("127.0.0.1", "root", "coop");

if (!$db) {
	die('ccCould not connect' . mysql_error());
	}

echo '<br>Connected successfully<br><br>';

?>
</body>
</html>
 