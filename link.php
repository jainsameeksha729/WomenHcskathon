<?php
	include('conn.php');

	$id=$_GET['id'];
	//echo $id;
	$sql="select * from usercomplaints where user_id='$id'";

	$result = mysqli_query($conn,$sql);
	/*if($result){
		$row = $result->fetch_assoc();
		echo "User Id:".$row["user_id"]; 
		echo "Name:".$row["com_name"]; 
		echo "Email:".$row["com_email"]; 
		echo "Mobile:".$row["com_mobile"]; 
	}*/

	$row = $result->fetch_assoc();




?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<div id="band" class="container text-left">
	   <marquee style="color:red">Application has been sent for further investigation</marquee>
	  <h3>USER NAME  :- <?php echo $row["user_id"]; ?></h3>
	  <p><em>User Id:  <?php echo $row["user_id"];?></em></p>
	  
	  <br>
	  <div class="row">
	    <div class="col-md-6">
	    <h4>USER ADDRESS:      <?php echo $row["txtAddressVIC"].' '.$row["ddlCityVIC"].' '.$row["ddlStateVIC"].' '.$row["ddlPinNoVIC"]; ?></h4>
	      <h4>USER EMAIL:        <?php echo $row["ddlEmailVIC"]; ?></h4>
	      <h4>USER MOBILE:       <?php echo $row["ddlContactNoVIC"]; ?></h4>
	      <h4>USER GENDER:       <?php echo $row["ddlSexVIC"]; ?></h4>
	      <h4>COMPLAINT CATEGORY: <?php echo $row["ddlCategory"]; ?></h4>
	       <h4>PURPOSE OF COMPLAINT: <?php echo $row["txtCmpDetail"]; ?></h4>
	        </div>
	   <div class="col-md-6">
	          <h4>OFFENDER NAME: <?php echo $row["txtNameRESP"]; ?></h4>
	          <h4>OFFENDER ADDRESS:  <?php echo $row["txtAddressRESP"].' '.$row["ddlCityRESP"].' '.$row["ddlStateRESP"].' '.$row["txtPinNoRESP"]; ?></h4>
	            <h4>OFFENDER EMAIL:  <?php echo $row["txtEmailRESP"]; ?></h4>
	            <h4>OFFENDER MOBILE: <?php echo $row["txtContactNoRESP"]; ?></h4>
	            <h4>OFFENDER GENDER: <?php echo $row["ddlSexRESP"]; ?></h4>
	            
	    </div>
	</div>
	</div>


</body>
</html>