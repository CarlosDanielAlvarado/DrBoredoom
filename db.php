<?php
$servername="localhost";
$username="id18143489_admonboredom";
$password="D14db5c2e1+V";
$dbname="id18143489_marker";

$conn=new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
	die("Error de conexion".$conn->connect_error);
}else{
	
}

?>