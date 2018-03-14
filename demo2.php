<?php
    include('conn.php');
        
    echo "<html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='description' content=''>
            <meta http-equiv='X-UA-Compatible' content='IE=edge'>
            <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
            <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <!-- Title -->
            <title>Colorlib App - App Landing Page</title>

            <!-- Favicon -->
            <link rel='icon' href='img/core-img/favicon.ico'>

            <!-- Core Stylesheet -->
            <link href='css/osc.css' rel='stylesheet'>

            <!-- Responsive CSS -->
            <link href='css/responsive.css' rel='stylesheet'>
            <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>

        </head>

        <body>
            <!-- ***** Wellcome Area End ***** -->
            <!-- ***** Special Area Start ***** -->
            <section class='special-area bg-white section_padding_100' id='about'>
                <div class='container'>
                    <div class='row'>
                        <div class='col-12'>
                            <!-- Section Heading Area -->
                            <div class='section-heading text-center'>
                                <h2>WELCOME</h2>
                                <br>
                                 <a href='index.html'><input type='button' class='btn btn-warning' name='home' value='Click to go back'/></a>
                                 <br>
                                <div class='line-shape'></div>
                                <form method='POST'>
                                     <input type='date'  name='date' /><br>
                                      <select name='type' class='form-control' id=type'>
                                        <option value='Complaint' name='cm'>Complaint</option>
                                        <option value='Counselling' name ='co'>Counselling</option>
                                    </select>
                                    
                                      <input type='submit' class='btn btn-warning' name='show_as_par_date' value='Search'/>
                                    
                                     <input type='submit' class='btn btn-warning' name='view' value='Click to view data'/>

                                </form>

                            </div>
                        </div>
                    </div>
              ";
    $start=0;
    $of;
    $id;
    if(isset($_POST['view'])){
    $sql = "select *
    FROM usercomplaints order by time desc limit 6";
   
    $result = mysqli_query($conn,$sql);
    //echo mysqli_num_rows($result);
    $of=mysqli_num_rows($result);
    if (mysqli_num_rows($result)> 0) {
        // output data of each row
        
               while($row = $result->fetch_assoc()) {
                    //echo "id: " . $row["user_id"]. " - Name: " . $row["txtNameVIC"]. " ";


                    echo "<div class='row'>
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>

                                        <h4>";
                                        $id=$row["user_id"];
                                        echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                       // echo "<a href='link.php?id=".$row['user_id'].">All Details</a>";
                                        $start++;
                                        echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                        echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                        if($row = $result->fetch_assoc()){ 
                                        echo "


                                    </div>
                                </div>
                           
                                          
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>
                                        <h4> ";
                                        $id=$row["user_id"]; 
                                       echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                        $start++;
                                        echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                        echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                        }
                                        if($row = $result->fetch_assoc()){ 
                                        echo "
                                    </div>
                                </div>
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.6s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>
                                        <h4> ";
                                        $id=$row["user_id"]; 
                                        echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                        $start++;
                                         echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                         echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       
                                    }

                                         echo "
                                    </div>
                                </div>
                               
                            </div>";
                }
                mysqli_free_result($result);
                $id=$row["user_id"];
                //echo $start;
            }

           echo" <br>
                              <form method='POST'>
                                  <input type='submit' class='btn btn-warning' name='previous' value='Previous'/>
                                  <input type='submit' class='btn btn-warning' name='next' value='  Next  '/>
                              </form>";
            
        }


        if(isset($_POST['show_as_par_date'])){
            //echo "heyyy";
            $d = $_POST['date'];
            $dvar = str_replace('/', '-', $d);
            $dr = date('Y-m-d', strtotime($dvar));
            //echo $dr;

            $ddd = $_POST['type'];
            $sql;
            if($ddd='cm'){
                $sql = "select * FROM usercomplaints where date ='$dr'";
            }
           else if($ddd='co'){
                $sql = "select * FROM counselling ";
            }
            // $sql = "select * FROM user_complaint where date ='$dr'";
            
            $result = mysqli_query($conn,$sql);
            //echo mysqli_num_rows($result);
            $of=mysqli_num_rows($result);
            if (mysqli_num_rows($result)> 0) {
            // output data of each row
            
                   while($row = $result->fetch_assoc()) {
                       // echo "id: " . $row["user_id"]. " - Name: " . $row["txtNameVIC"]. " ";


                        echo "<div class='row'>
                                    <!-- Single Special Area -->
                                    <div class='col-12 col-md-4'>
                                        <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                            <div class='single-icon'>
                                                <i class='ti-user' aria-hidden='true'></i>
                                            </div>
                                            <h4>";
                                            $id=$row["user_id"]; 
                                        
                                            echo $row["user_id"]; 
                                            echo "</h4> <p>";
                                            echo $row["txtNameVIC"]; 
                                            $start++;
                                             echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                             echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       

                                            if($row = $result->fetch_assoc()){ 
                                            echo "</p>
                                        </div>
                                    </div>
                               
                                              
                                    <!-- Single Special Area -->
                                    <div class='col-12 col-md-4'>
                                        <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                            <div class='single-icon'>
                                                <i class='ti-user' aria-hidden='true'></i>
                                            </div>
                                            <h4> ";
                                             $id=$row["user_id"]; 
                                           
                                               echo $row["user_id"]; 
                                            echo "</h4> <p>";
                                            echo $row["txtNameVIC"]; 
                                            $start++;
                                             echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                             echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       
                                        }
                                            if($row = $result->fetch_assoc()){ 
                                            echo "</p>
                                        </div>
                                    </div>
                                    <!-- Single Special Area -->
                                    <div class='col-12 col-md-4'>
                                        <div class='single-special text-center wow fadeInUp' data-wow-delay='0.6s'>
                                            <div class='single-icon'>
                                                <i class='ti-user' aria-hidden='true'></i>
                                            </div>
                                            <h4> ";
                                            $id=$row["user_id"]; 
                                        
                                            echo $row["user_id"]; 
                                            echo "</h4> <p>";
                                            echo $row["txtNameVIC"]; 
                                            $start++;
                                             echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                             echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       
                                        }

                                             echo "</p>
                                        </div>
                                    </div>
                                   
                                </div>";
                    }
                    mysqli_free_result($result);
                    $id=$row["user_id"];
                    //echo $start;
                }

               echo" <br>
                                  <form method='POST'>
                                      <input type='submit' class='btn btn-warning' name='previous' value='Previous'/>
                                      <input type='submit' class='btn btn-warning' name='next' value='  Next  '/>
                                  </form>";
                
            }else{
                echo $conn->error;
            }
            
        
        
    
       
    
                if(isset($_POST['next'])){
                    //$of=$of+1;
                    $start=0;
                    $sql = "select * from usercomplaints order by time desc limit 6 offset 6 ";
                    
                    $result = mysqli_query($conn,$sql);
                    
                    //echo mysqli_num_rows($result);
                    //$result->data_seek(6);
                   // mysqli_data_seek ($result, $of-1);
                    $of=mysqli_num_rows($result);
                    if (mysqli_num_rows($result)> 0) {
                        while($row = $result->fetch_assoc()) {
                             //echo "id: " . $row["user_id"]. " - Name: " . $row["txtNameVIC"]. " ";
                         echo "<div class='row'>
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>
                                        <h4>";
                                        $id=$row["user_id"]; 
                                        
                                        echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                        $start++;
                                         echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                         echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       

                                        if($row = $result->fetch_assoc()){ 
                                            if($start<6){
                                        echo "</p>
                                    </div>
                                </div>
                           
                                          
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>
                                        <h4> ";
                                         $id=$row["user_id"]; 
                                           
                                           echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                        $start++;
                                         echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                         echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       
                                    }
                                }
                                        if($row = $result->fetch_assoc()){ 
                                        echo "</p>
                                    </div>
                                </div>
                                <!-- Single Special Area -->
                                <div class='col-12 col-md-4'>
                                    <div class='single-special text-center wow fadeInUp' data-wow-delay='0.6s'>
                                        <div class='single-icon'>
                                            <i class='ti-user' aria-hidden='true'></i>
                                        </div>
                                        <h4> ";
                                         $id=$row["user_id"]; 
                                        
                                        echo $row["user_id"]; 
                                        echo "</h4> <p>";
                                        echo $row["txtNameVIC"]; 
                                        $start++;
                                         echo "</p><a href='link.php?id=$id' download='".$row['txtNameVIC'].".txt'>Download Details</a>";
                                         echo "</p><a href='link.php?id=$id'>View All Details</a>";
                                        
                                       

                                    }
                                         echo "</p>
                                    </div>
                                </div>
                               
                            </div>";
                        }                    
                        mysqli_free_result($result);
                        $id=$row["user_id"];
                    }
                    echo"<form method='POST'>
                        <input type='submit' class='btn btn-warning' name='previous' value='Previous'/>
                        <input type='submit' class='btn btn-warning' name='next' value='  Next  '/>
                    </form>";
            }
                                        
             
            if(isset($_POST['previous'])){
                $of-=6;
                $sql = "select * from user_complaint order by date desc limit 6 offset $of ";
               
                $result = mysqli_query($conn,$sql);
                $of=mysqli_num_rows($result);
                if (mysqli_num_rows($result)> 0) {
            
                    while($row = $result->fetch_assoc()) {
                         //echo "id: " . $row["user_id"]. " - Name: " . $row["txtNameVIC"]. " ";
                     echo "<div class='row'>
                            <!-- Single Special Area -->
                            <div class='col-12 col-md-4'>
                                <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                    <div class='single-icon'>
                                        <i class='ti-mobile' aria-hidden='true'></i>
                                    </div>
                                    <h4>";
                                    
                                    echo $row["user_id"]; 
                                    echo "</h4> <p>";
                                    echo $row["txtNameVIC"]; 
                                    $start++;

                                    if($row = $result->fetch_assoc()){ 
                                    echo "</p>
                                </div>
                            </div>
                       
                                      
                            <!-- Single Special Area -->
                            <div class='col-12 col-md-4'>
                                <div class='single-special text-center wow fadeInUp' data-wow-delay='0.2s'>
                                    <div class='single-icon'>
                                        <i class='ti-mobile' aria-hidden='true'></i>
                                    </div>
                                    <h4> ";
                                        
                                       echo $row["user_id"]; 
                                    echo "</h4> <p>";
                                    echo $row["txtNameVIC"]; 
                                    $start++;
                                }
                                    if($row = $result->fetch_assoc()){ 
                                    echo "</p>
                                </div>
                            </div>
                            <!-- Single Special Area -->
                            <div class='col-12 col-md-4'>
                                <div class='single-special text-center wow fadeInUp' data-wow-delay='0.6s'>
                                    <div class='single-icon'>
                                        <i class='ti-settings' aria-hidden='true'></i>
                                    </div>
                                    <h4> ";
                                    echo $row["user_id"]; 
                                    echo "</h4> <p>";
                                    echo $row["txtNameVIC"]; 
                                    $start++;
                                }

                                     echo "</p>
                                </div>
                            </div>
                           
                        </div>";
                    }                    
                    mysqli_free_result($result);
                    $id=$row["user_id"];
                }

            }
            echo"               </div>
                                
                            </section>
                            
                            
                 </body>
                </html>";

        ?>

                


