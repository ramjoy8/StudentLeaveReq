<?php



   session_start();

   if(isset($_POST['submit']))
   { include_once("connection.php");

    $studentid=strip_tags($_POST['studentid']);
    $password=strip_tags($_POST['password']);
    

    $sql = "SELECT * FROM parent WHERE studentid = '$studentid' AND password='$password'";
    $query=mysqli_query($dbcon,$sql);
    if($query)
    
      {  $row=mysqli_fetch_row($query);
         $dbstudentid=$row[0];
         $name= $row[1];
         $mobile=$row[2];
         $eamil=$row[3];
         $dbpassword=$row[4];
         
         
       }


  if ($studentid==$dbstudentid && $password == $dbpassword)
  {   $_SESSION['studentid'] = $studentid;
$_SESSION['name'] = $name;
        header ('location:parin.php');
}
else { echo "Incorrect";

}


  }

  ?>
<!DOCTYPE html>
<html>
<body>
<style>
.vitlogo {
position: absolute;
        left:220px;
        top:50px;
        width: 50px;
        height: 50px;
   
}
.form{
position: absolute;
        left:300px;
        top:350px;
        width: 50px;
        height: 50px;
   
}
body {background-color: gray;
}
</style>
<div class="vitlogo">
<img src="https://vtop.vit.ac.in/images/vit_logo6.jpg" alt="VIT University" style="width:304px;height:200px;">
</div>
<div class="form">
<form method = "post" action="parlog.php">
  StudentID.:<br>
  <input type="text" name="studentid" >
  Password: <br>
  <input type="password" name="password" ><br><br>
  <input type="submit" name="submit" value="Submit">
</form>
</div>




</body>
</html>