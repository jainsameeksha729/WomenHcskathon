<?php
	session_start();
	if($_POST['btnSubmit']){
		include('conn.php');

		// Compliantant

		$element_01 = mysqli_real_escape_string($conn, $_POST['element_01']);
		$element_02 = mysqli_real_escape_string($conn, $_POST['element_02']);
		$password = mysqli_real_escape_string($conn, $_POST['element_03']);
		$mobile = mysqli_real_escape_string($conn, $_POST['element_1']);
	  	$element_21 = mysqli_real_escape_string($conn, $_POST['element_21']);
		$element_22 = mysqli_real_escape_string($conn, $_POST['element_22']);
		$element_23 = mysqli_real_escape_string($conn, $_POST['element_23']);
	  	$email = mysqli_real_escape_string($conn, $_POST['element_4']);
	  	$occupation = mysqli_real_escape_string($conn, $_POST['element_5']);
	  	$category = mysqli_real_escape_string($conn, $_POST['element_6']);
	  	$purpose = mysqli_real_escape_string($conn, $_POST['element_7']);
	  	$name=$element_01.' '.$element_02;
	  	$address=$element_21.' '.$element_22.' '.$element_23;
	  	
	  	//$dr = date('Y-m-d');
		//$time = times;
		//echo $time;
		$strr = substr($mobile,6);
		$r = rand();
		$unique_id = $name.$strr.$r;
		//echo '      '.$strr.'   ';
		//echo 'hello'.'  '.$r.'  '.$strr.'  '.$unique_id;
		//echo $unique_id;
		//echo $address;
		//.$unique_id;
		//$sql = "insert into user_complaint('user_id', 'com_name', 'com_email', 'com_mobile', 'date') values('$unique_id','$name','$email','$mobile','$dr')";
		//$sql1 = "select * from user_complaint";

		$sql = "insert into counselling(user_id, txtNameVIC, password, ddlContactNoVIC, address, ddlEmailVIC, occupation, ddlCategory, txtCmpDetail) values('$unique_id','$name','password','$mobile','$address','$email','$occupation','$category','$purpose')";
		$sql2="insert into user_login values('$unique_id','$password')";
		$result2 = mysqli_query($conn,$sql);
		$result = mysqli_query($conn,$sql);
		if($result){
			$_SESSION['username']=$unique_id;
			header('Location:profile_counsellor.php');
			
		}else{
			echo $conn->error;
		}

	}
?>


