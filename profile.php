<?php
session_start();
//echo 'welcome'.$_SESSION['username'];
$id=$_SESSION['username'];

//echo '       '.$id.'      ';
include('conn.php');

$sql="select * from usercomplaints where user_id='$id'";
$result = mysqli_query($conn,$sql);
//echo '         '.mysqli_num_rows($result);
$row = $result->fetch_assoc();

$sql2="select * from status_table where user_id='$id'";
$result2 = mysqli_query($conn,$sql2);
//echo '         '.mysqli_num_rows($result);
$row2 = $result2->fetch_assoc();

//echo "heyyyyyyyyyyyyyyyyyy";
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
   <title>Women Hack</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
   h2 {
      margin: 5px 0 30px 0;
      letter-spacing: 1px;      
      font-size: 15px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;

  }
        
  .navbar-nav li.active a {
      color: #fff !important;
       
      background-color: orange !important;;
  }

  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.html">PMS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.html">HOME</a></li>
        <li><a href="complainnew.php">COMPLAINT</a></li>
        <li><a href="counsellor.html">COUNSELLING</a></li>
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
             <li><a href="projects.html">Projects</a></li>
            <li><a href="lawsacts.html">Laws and Acts</a></li>
            <li><a href="helpline.html">Helpline</a></li> 
          </ul>
        </li>
      
      </ul>
    </div>

  </div>
  
</nav>

<!-- Container (The Band Section) -->
<div id="band" class="container text-left">
   <marquee style="color:red">Application has been sent for further investigation. Your Status : <?php echo $row2["status"];?></marquee>
  <h3>USER NAME   <?php echo $row["user_id"]; ?></h3>
  <p><em>User Id:  <?php echo $row["user_id"];?></em></p>
  
  <br>
  <div class="row">
    <div class="col-md-6">
    <h2>USER ADDRESS:      <?php echo $row["txtAddressVIC"].' '.$row["ddlCityVIC"].' '.$row["ddlStateVIC"].' '.$row["ddlPinNoVIC"]; ?></h2>
      <h2>USER EMAIL:        <?php echo $row["ddlEmailVIC"]; ?></h2>
      <h2>USER MOBILE:       <?php echo $row["ddlContactNoVIC"]; ?></h2>
      <h2>USER GENDER:       <?php echo $row["ddlSexVIC"]; ?></h2>
      <h2>COMPLAINT CATEGORY: <?php echo $row["ddlCategory"]; ?></h2>
       <h2>PURPOSE OF COMPLAINT: <?php echo $row["txtCmpDetail"]; ?></h2>
        </div>
   <div class="col-md-6">
          <h2>OFFENDER NAME: <?php echo $row["txtNameRESP"]; ?></h2>
          <h2>OFFENDER ADDRESS:  <?php echo $row["txtAddressRESP"].' '.$row["ddlCityRESP"].' '.$row["ddlStateRESP"].' '.$row["txtPinNoRESP"]; ?></h2>
            <h2>OFFENDER EMAIL:  <?php echo $row["txtEmailRESP"]; ?></h2>
            <h2>OFFENDER MOBILE: <?php echo $row["txtContactNoRESP"]; ?></h2>
            <h2>OFFENDER GENDER: <?php echo $row["ddlSexRESP"]; ?></h2>
            
    </div>
</div>
</div>
<!-- Container (TOUR Section) -->
<?php $id= $row["user_id"];?>
<div class="text-center">
</p><a href='link.php?id=$id' download='<?php echo $row["txtNameVIC"]; ?>.txt'>Download Details</a>
</p><a href='link.php?id=$id'>View All Details</a>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container">
  
</div>



<footer class="footer-distributed">

      <div class="footer-left">

        <h3>Company</h3>

        <p class="footer-links">
          <a href="index.html">Home</a>
          ·
         
          
           <a href="lawsacts.html">Laws and Acts</a>
          ·
          <a href="projects.html">Projects</a>
          ·
           <a href="helpline.html">Contact Us</a>
          ·
          <a href="helpline.html">Helpline</a>
        </p>

        <p class="footer-company-name">Company Name &copy; 2015</p>

        <div class="footer-icons">

        
         

        </div>

      </div>

      <div class="footer-right">

        <p>Login</p>

        <form action="#" method="post">

          <input type="text" name="email" placeholder="Email" />
          <textarea name="message" placeholder="Message"></textarea>
          <button>Send</button>

        </form>

      </div>

    </footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>


