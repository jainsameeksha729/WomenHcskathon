<?php
	include('conn.php');

	$id=$_GET['id'];
	//echo $id;
	$sql="select * from counselling where user_id='$id'";
	if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo  $conn->error;
}

	$result =mysqli_query($conn,$sql);
	/*if($result){
		$row = $result->fetch_assoc();
		echo "User Id:".$row["user_id"]; 
		echo "Name:".$row["com_name"]; 
		echo "Email:".$row["com_email"]; 
		echo "Mobile:".$row["com_mobile"]; 
	}
*/
	//echo mysqli_num_row($result);
	$row =mysqli_fetch_assoc($result);




?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<div id="band" class="container text-left">
	   <marquee style="color:red">Application has been sent for further investigation</marquee>
	  <h3>USER NAME  :- <?php echo $row["txtNameVIC"]; ?></h3>
	  <p><em>User Id:  <?php echo $row["user_id"];?></em></p>
	  
	  <br>
	  <div class="row">
	    <div class="col-md-12">
	    <h4>USER ADDRESS:      <?php echo $row["txtAddressVIC"]; ?></h4>
	      <h4>USER EMAIL:        <?php echo $row["ddlEmailVIC"]; ?></h4>
	      <h4>USER MOBILE:       <?php echo $row["ddlContactNoVIC"]; ?></h4>
	      <h4>COMPLAINT CATEGORY: <?php echo $row["ddlCategory"]; ?></h4>
	       <h4>PURPOSE OF COMPLAINT: <?php echo $row["txtCmpDetail"]; ?></h4>
	        </div>
	   
	</div>
	</div>


</body>
</html>