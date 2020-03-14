<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "select * from post_tb";

$result=mysqli_query($conn,$sql);


?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>DumbSocmed Testing</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>



<div class="jumbotron text-center">
  <h1>DumbSocmed</h1>
   
</div>
  
<div class="container">
  <div class="row">
    <?php while($rows=mysqli_fetch_array($result)) {?>
    <div class="col-sm-6">
      <h3><?php echo $rows['title']; ?></h3>
      
      <p><?php echo $rows['content']; ?></p>
    </div>
   <?php }?>
  </div>

</div>

</body>
</html>
