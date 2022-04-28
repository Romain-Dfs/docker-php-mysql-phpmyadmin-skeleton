<?php

echo "Hello\n\n";

$host = "mysql";
$user = getenv('MYSQL_USER');
$password = getenv('MYSQL_PASSWORD');
$connect = new mysqli($host, $user, $password);

if ( $connect->connect_error ) {
    die("Connection failed : " . $connect->connect_error);
}

echo "Connect to MySQL server successfully !\n\n";
echo "Welcome on the app !";