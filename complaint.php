<?php
	session_start();
	if($_POST['btnSubmit']){
		include('conn.php');

		// Compliantant

		$txtNameCmp = mysqli_real_escape_string($conn, $_POST['txtNameCmp']);
		$password = mysqli_real_escape_string($conn, $_POST['password']);
	  	
	  	$txtAddressCMP = mysqli_real_escape_string($conn, $_POST['txtAddressCMP']);
	  	$ddlStateCMP = mysqli_real_escape_string($conn, $_POST['ddlStateCMP']);
	  	$ddlCityCMP = mysqli_real_escape_string($conn, $_POST['ddlCityCMP']);
	  	$txtPinNoCMP = mysqli_real_escape_string($conn, $_POST['txtPinNoCMP']);
	  	$txtEmailCMP = mysqli_real_escape_string($conn, $_POST['txtEmailCMP']);
	  	$txtContactNoCMP = mysqli_real_escape_string($conn, $_POST['txtContactNoCMP']);
	  	$ddlSexCMP = mysqli_real_escape_string($conn, $_POST['ddlSexCMP']);


	  	//victim

	  	$txtNameVIC = mysqli_real_escape_string($conn, $_POST['txtNameVIC']);
	  	$txtAddressVIC = mysqli_real_escape_string($conn, $_POST['txtAddressVIC']);
	  	$ddlStateVIC = mysqli_real_escape_string($conn, $_POST['ddlStateVIC']);
	  	$ddlCityVIC = mysqli_real_escape_string($conn, $_POST['ddlCityVIC']);
	  	$txtPinNoVIC = mysqli_real_escape_string($conn, $_POST['txtPinNoVIC']);
	  	$txtEmailVIC = mysqli_real_escape_string($conn, $_POST['txtEmailVIC']);
	  	$txtContactNoVIC = mysqli_real_escape_string($conn, $_POST['txtContactNoVIC']);
	  	$ddlSexVIC = mysqli_real_escape_string($conn, $_POST['ddlSexVIC']);
	  	$txtDOB = mysqli_real_escape_string($conn, $_POST['txtDOB']);

	  	$dob = str_replace('/', '-', $txtDOB);
		$dd = date('Y-m-d', strtotime($dob));

	  	$ddlReligionVIC = mysqli_real_escape_string($conn, $_POST['ddlReligionVIC']);
	  	$ddlChallengeVIC = mysqli_real_escape_string($conn, $_POST['ddlChallengeVIC']);
	  	$ddlCastVIC = mysqli_real_escape_string($conn, $_POST['ddlCastVIC']);

	  	//opposite party

	  	$txtNameRESP = mysqli_real_escape_string($conn, $_POST['txtNameRESP']);
	  	$txtAddressRESP = mysqli_real_escape_string($conn, $_POST['txtAddressRESP']);
	  	$ddlStateRESP = mysqli_real_escape_string($conn, $_POST['ddlStateRESP']);
	  	$ddlCityRESP = mysqli_real_escape_string($conn, $_POST['ddlCityRESP']);
	  	$txtPinNoRESP = mysqli_real_escape_string($conn, $_POST['txtPinNoRESP']);
	  	$txtEmailRESP = mysqli_real_escape_string($conn, $_POST['txtEmailRESP']);
	  	$txtContactNoRESP = mysqli_real_escape_string($conn, $_POST['txtContactNoRESP']);
	  	$ddlSexRESP = mysqli_real_escape_string($conn, $_POST['ddlSexRESP']);

	  	//details of complaints

	  	$ddlCategory = mysqli_real_escape_string($conn, $_POST['ddlCategory']);
	  	//$ddlSubCategory = mysqli_real_escape_string($conn, $_POST['ddlSubCategory']);
	  	$txtDeptRESP = mysqli_real_escape_string($conn, $_POST['txtDeptRESP']);
	  	$txtDOI = mysqli_real_escape_string($conn, $_POST['txtDOI']);

	  	$dvar = str_replace('/', '-', $txtDOI);
		$dr = date('Y-m-d', strtotime($dvar));

	  	$txtCmpDetail = mysqli_real_escape_string($conn, $_POST['txtCmpDetail']);
	  	$rdbPendingCourt = mysqli_real_escape_string($conn, $_POST['rdbPendingCourt']);
	  	if($rdbPendingCourt){
	  		$txtCourtCaseNumber = mysqli_real_escape_string($conn, $_POST['txtCourtCaseNumber']);
	  	}else{
	  		$txtCourtCaseNumber = 'nil';
	  	}

	  	$rdbPendingSWC = mysqli_real_escape_string($conn, $_POST['rdbPendingSWC']);
	  	if($rdbPendingSWC){
	  		$txtSWCRegNumber = mysqli_real_escape_string($conn, $_POST['txtSWCRegNumber']);
	  	}else{
	  		$txtSWCRegNumber = 'nil';
	  	}
	  	//$dr = date('Y-m-d');
		//$time = times;
		//echo $time;
		$strr = substr($txtContactNoVIC,6);
		$r = rand();
		$unique_id = $txtNameVIC.$strr.$r;
		$curr_date=date('Y-m-d');
		/*echo $curr_date;
		echo '   '.$unique_id.'   ';
		echo '      '.$strr.'   ';
		echo 'hello'.'  '.$r.'  '.$strr.'  '.$unique_id;//.$unique_id;*/
		//$sql = "insert into user_complaint('user_id', 'com_name', 'com_email', 'com_mobile', 'date') values('$unique_id','$name','$email','$mobile','$dr')";
		//$sql1 = "select * from user_complaint";

		$sql = "insert into usercomplaints(user_id, txtNameCmp, password, txtAddressCMP, ddlStateCMP, ddlCityCMP, txtPinNoCMP, txtEmailCMP, txtContactNoCMP, ddlSexCMP, txtNameVIC, txtAddressVIC, ddlStateVIC, ddlCityVIC, ddlPinNoVIC, ddlEmailVIC, ddlContactNoVIC, ddlSexVIC, txtDOB, ddlReligionVIC, ddlChallengeVIC, ddlCastVIC,txtNameRESP, txtAddressRESP, ddlStateRESP, ddlCityRESP, txtPinNoRESP, txtEmailRESP, txtContactNoRESP, ddlSexRESP, ddlCategory, ddlSubCategory, txtDeptRESP, txtDOI, txtCmpDetail, rdbPendingCourt, txtCourtCaseNumber, rdbPendingSWC, txtSWCRegNumber,date) values ('$unique_id', '$txtNameCmp','$password', '$txtAddressCMP', '$ddlStateCMP', '$ddlCityCMP', '$txtPinNoCMP', '$txtEmailCMP', '$txtContactNoCMP', '$ddlSexCMP', '$txtNameVIC', '$txtAddressVIC', '$ddlStateVIC', '$ddlCityVIC', '$txtPinNoVIC', '$txtEmailVIC', '$txtContactNoVIC', '$ddlSexVIC', '$dd', '$ddlReligionVIC', '$ddlChallengeVIC', '$ddlCastVIC', '$txtNameRESP', '$txtAddressRESP', '$ddlStateRESP', '$ddlCityRESP', '$txtPinNoRESP', '$txtEmailRESP', '$txtContactNoRESP', '$ddlSexRESP', '$ddlCategory', ' ', '$txtDeptRESP', '$dr', '$txtCmpDetail', '$rdbPendingCourt', '$txtCourtCaseNumber', '$rdbPendingSWC', '$txtSWCRegNumber','$curr_date')";


		$sql2="insert into user_login values('$unique_id','$password')";
		$result2 = mysqli_query($conn,$sql);
		

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo  $conn->error;
}


		$result = mysqli_query($conn,$sql);
		$sql2 = "insert into status_table(user_id,status) values('$unique_id','Registered')";
		$result2 = mysqli_query($conn,$sql2);
		
		//echo mysqli_num_rows($result);
		if($result){
			$_SESSION['username']=$unique_id;
			//echo '  '.$_SESSION['username'].'   ';
			header('Location:profile.php');
			
		}else{
			echo 'not inserted';
		}

	}
?>


