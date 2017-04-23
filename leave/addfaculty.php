<?php
   
    session_start();
include('connection.php');


   if(isset($_POST['back']))

{
  
   
        header ('location:adminin.php');
   
}

  if(isset($_POST['go']) )
   { 
    
$empid= $_POST['id'];
     $name = $_POST['name'];
     $mobile=$_POST['mobile'];
    $password=$_POST['password'];
    $bday=$_POST['bday'];
    

    
if (!isset($_FILES['image']['tmp_name']))
 {
	echo "hh";
	}                    

	else

	{


	$file=$_FILES['image']['tmp_name'];
	$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
	$image_name= addslashes($_FILES['image']['name']);
			
			move_uploaded_file($_FILES["image"]["tmp_name"],"photos/" . $_FILES["image"]["name"]);
			
			$location="photos/" . $_FILES["image"]["name"];
			
			
			$sql="INSERT INTO faculty (empid,name,password,mobile,image,bday) VALUES ('$empid','$name','$password','$mobile','$location','$bday')";
			
			if (mysqli_query($dbcon, $sql)) {
    echo "New record created successfully";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($dbcon);
}

  
	}
 

}

   





?>















<!DOCTYPE html>

<html>
<head>
  <title>VIT-Add Faculty</title>
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

      <form method="post" action="addfaculty.php" enctype="multipart/form-data">
        <table cellspacing='0' cellpadding='4' align='center' border='1' width='428' height='100' style='border-collapse: collapse;' bordercolor='#FFFFFF'>
    <tr>   
<td><font color=#FFFFFF><b> Faculty ID :</b></font>
</td>
     <td><input type="text" name="id" class="textinput"></td> 
</tr>  
   <tr>   
<td><font color=#FFFFFF><b> Faculty Name :</b></font>
</td>
     <td><input type="text" name="name" class="textinput"></td> 
</tr>  
  <tr>
    <td ><font color=#FFFFFF><b>Default Password : </b></td>
     <td ><input type="password" name="password" ></td> 
</tr>  
 <tr>
    <td ><font color=#FFFFFF><b>Mobile : </b></td>
     <td ><input type="text" name="mobile" ></td> 
</tr>  
  <tr >
<td><font color=#FFFFFF><b> Faculty Image :</b></font></td>
<td>	<input type="file" name="image" class="ed"></td>
</tr>
  <tr>   
<td><font color=#FFFFFF><b> Faculty BirthDay :</b></font>
</td>
     <td><input type="date" name="bday" ></td> 
</tr>  


    <td></td>
     <td ><input type="submit" name="go" value="Add">
     <input type="reset" name="reset" value="Reset">
     <form name="dd" method="post" action="addfaculty.php">
    <input type="submit" name="back" value="Back">

  </form>  </td>

</tr>  
  </table>
</form>
</body>
</html>