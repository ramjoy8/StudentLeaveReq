<?php
   
    session_start();
include('connection.php');
if(isset($_POST['back']))

{
  
   
        header ('location:adminin.php');
   
}
  if(isset($_POST['go']) )
   { 
    
$studentid= $_POST['id'];
     $parentname = $_POST['name'];
     $mobile=$_POST['mobile'];
    $password=$_POST['password'];
    $email=$_POST['email'];
    
			
			
			$sql="INSERT INTO parent (studentid,parentname,password,mobile,email) VALUES ('$studentid','$parentname','$password','$mobile','$email')";
			
			if (mysqli_query($dbcon, $sql)) {
    echo "New record created successfully";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($dbcon);
}

  
	}
 



   





?>















<!DOCTYPE html>

<html>
<head>
  <title>VIT-Add Parent</title>
</head>
<style>
</style>
<body>
<table width="100%" height="15%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: rgb(12, 47, 77)">
  <tr>
    <td width="25%" align=center>
      <img src="images/vitlogo.jpg" height="100" width="297">
    </td>
</tr></table>
<table width="100%" height="10%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: rgb(12, 47, 77)">

<tr>
  <td align=center> <font size=8 color=#FFFFFF face="Comic Sans MS">
ADMIN      </td>
</tr>
</table>
</table>
<table width="100%" height="450" border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">
  <tr>
    <td  align="center"><table width="30%"  border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">

      <form method="post" action="addparent.php" enctype="multipart/form-data">
        <table cellspacing='0' cellpadding='4' align='center' border='1' width='428' height='100' style='border-collapse: collapse;' bordercolor='#FFFFFF'>
    <tr>   
<td><font color=#FFFFFF><b> Student ID :</b></font>
</td>
     <td><input type="text" name="id" class="textinput"></td> 
</tr>  
   <tr>   
<td><font color=#FFFFFF><b> Parent Name :</b></font>
</td>
     <td><input type="text" name="name" class="textinput"></td> 
</tr>  
  <tr>
    <td ><font color=#FFFFFF><b>Default Password : </b></td>
     <td ><input type="password" name="password" ></td> 
</tr>  
 <tr>
    <td ><font color=#FFFFFF><b>Parent Mobile : </b></td>
     <td ><input type="text" name="mobile" ></td> 
</tr>  
<tr>
    <td ><font color=#FFFFFF><b>Parent Email : </b></td>
     <td ><input type="text" name="email" ></td> 
</tr>  
  
  <tr>   



    <td></td>
     <td ><input type="submit" name="go" value="Add">
     <input type="reset" name="reset" value="Reset">
     <form name="dd" method="post" action="addparent.php">
    <input type="submit" name="back" value="Back">

  </form>  </td>

</tr>  
  </table>
</form>
</body>
</html>