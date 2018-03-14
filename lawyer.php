<?php
	echo "hey";
	//if(isset($_POST['submit'])){
		echo "hii";
		include('conn.php');
		echo "hii";
		$id = mysqli_real_escape_string($conn, $_POST['id']);
		$status = mysqli_real_escape_string($conn, $_POST['status']);

		$sql="update status_table SET status='$status' WHERE user_id='$id'";

		$result = mysqli_query($conn,$sql);
		if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

		header('Location:lawyerlogin.html');
	//}
?>