<?php
	include('conn.php');

	$username = mysqli_real_escape_string($conn, $_POST['userid']);
	$password = mysqli_real_escape_string($conn, $_POST['pass']);

	
	$sql2="select * from counselling where user_id='$username'";
	$result2 = mysqli_query($conn,$sql2);

	$sql3="select * from usercomplaints where user_id='$username'";
	$result3 = mysqli_query($conn,$sql3);

	
	if($result2){
		$row =mysqli_fetch_assoc($result2);
		//$r=mysqli_num_row($result2);

		$unique_id=$row["unique_id"];
		$_SESSION['username']=$unique_id;
		header('Location:profile_counsellor.php');
	}
	if($result3){
		$row =mysqli_fetch_assoc($result3);
		$unique_id=$row["unique_id"];
		$_SESSION['username']=$unique_id;
		header('Location:profile.php');
	}
	else{
		echo "Invalid User";
	}

?>