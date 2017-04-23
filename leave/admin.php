<?php



   session_start();

   if(isset($_POST['go']))
   { 

    include_once("connection.php");

    $id=strip_tags($_POST['id']);
    $password=strip_tags($_POST['password']);
    

    $sql = "SELECT * FROM admin WHERE id = '$id' AND password='$password'";
    $query=mysqli_query($dbcon,$sql);
    if($query)
    
      {  
      	$row=mysqli_fetch_row($query);
         $dbregno=$row[0];
       $dbpassword=$row[1];
         
         
       }


  if ($id==$dbregno && $password == $dbpassword)
  {   $_SESSION['id'] = $id;
        header ('location:adminin.php');
}
else { echo "Incorrect";

}


  }
      
      




   
?>
      
      




   


<!DOCTYPE html>

<html>
<head>
  <title>VIT-Student LogIN</title>
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
ADMIN
      
    </td>

</tr>

</table>
<table width="100%" height="450" border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">
  <tr>
    <td  align="center"><table width="30%"  border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">

      <form method="post" action="admin.php">
        <table cellspacing='0' cellpadding='4' align='center' border='1' width='428' height='100' style='border-collapse: collapse;' bordercolor='#FFFFFF'>
    <tr>   
<td><font color=#FFFFFF><b>ID :</b></font>
</td>
     <td><input type="text" name="id" class="textinput"></td> 
</tr>  
  <tr>
    <td ><font color=#FFFFFF><b>Password</b></td>
     <td ><input type="password" name="password" ></td> 
</tr>  
  <tr >
    <td></td>
     <td ><input type="submit" name="go" value="Login">
     <input type="reset" name="reset" value="Reset"></td>

</tr>  
  </table>
</form>
