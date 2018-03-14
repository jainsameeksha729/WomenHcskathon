<?php
	session_start();
	if(isset($_POST['submit'])){
		include('conn.php');

		$username = mysqli_real_escape_string($conn, $_POST['email']);
		$password = mysqli_real_escape_string($conn, $_POST['pass']);

		if($username=="admin@gmail.com" && $password=="admin"){
			$_SESSION['username']=$username;
			echo $_SESSION['username'];
			header('Location:demo2.php');
			
		}
		if($username=="lawyer@gmail.com" && $password=="lawyer"){
			$_SESSION['username']=$username;
			echo $_SESSION['username'];
			header('Location:lawyerlogin.html');
			}
		else{
			echo 'not a user';
		}
	}
?>