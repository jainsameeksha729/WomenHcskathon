<?php

$mysql_host='localhost';
$mysql_user='root';
$mysql_pass='abc123';

$conn= new mysqli($mysql_host,$mysql_user,$mysql_pass,'hackathon');

if($conn->connect_error){
	die('Error'.('.$mysqli->connect_errno.'));
	}
else{
	
	//echo 'connection successfully';
	}
if(!mysqli_select_db($conn,'hackathon')){
	//echo 'detabase not selected';
}
else{
	//echo '   selected';
}

?>