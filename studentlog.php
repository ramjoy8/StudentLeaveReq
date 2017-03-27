<?php



   session_start();

   if($_POST['go'])
   { include_once("connection.php");

    $regno=strip_tags($_POST['regno']);
    $password=strip_tags($_POST['password']);
    

    $sql = "SELECT * FROM student WHERE regno = '$regno' AND password='$password'";
    $query=mysqli_query($dbcon,$sql);
    if($query)
    
      {  $row=mysqli_fetch_row($query);
         $dbregno=$row[0];
         $name= $row[1];
         $dbpassword=$row[2];
         $age=$row[3];
         
       }


  if ($regno==$dbregno && $password == $dbpassword)
  {   $_SESSION['regno'] = $regno;
$_SESSION['name'] = $name;
        header ('location:studentin.php');
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
body {background-color: green;
}
</style>

<div class="form">
<form method = "post" action="studentlog.php">
  <table>
  <tr>
    <td>Reg.No:</td>
     <td><input type=" text" name="regno" class="textinput"></td> 
</tr>  
  <tr>
    <td>Password:</td>
     <td><input type=" password" name="password" class="textinput"></td> 
</tr>  
  <tr>
    <td></td>
     <td><input type="submit" name="go" value="login"></td> 
</tr>  
  </table>
</form>
</div>




</body>
</html>