<?php
   
    session_start();

    if(isset($_POST['back']))

{
  
   
        header ('location:studentin.php');
   
}

  if(isset($_POST['apply']) )
   { 
    include_once("connection.php");
     $studentid= $_SESSION['regno'];
     $name = $_SESSION['name'];
     $facultyid=$_POST['facultyid'];
    $leavetype=$_POST['leavetype'];
    $fromdate=$_POST['fromdate'];
    $todate=$_POST['todate'];
    $address=$_POST['address'];
    $reason=$_POST['reason'];
    $leavestatus="Applied";
    $parentstatus="Applied";
    $sql="INSERT INTO leavereq (facultyid,parentstatus,leavestatus,studentname,studentid,leavetype,fromdate,todate,address,reason) VALUES ('$facultyid','$parentstatus','$leavestatus','$name','$studentid','$leavetype','$fromdate','$todate','$address','$reason')";
    if (mysqli_query($dbcon, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($dbcon);
}

    echo "Leave Applied..!! Congrats ".$name;
   


}

?>
<!DOCTYPE html>
<html>
<head>
  <title> Student Leave Request </title>
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
  <td align=center>
      <img src="images/71.gif" height="70" width="200">
    </td>

</tr>

</table>
<table width="100%" height="450" border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">
  <tr>
    <td  align="center"><table width="30%"  border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">

      <form method="post" action="leavereq.php" enctype="multipart/form-data">
        <table cellspacing='0' cellpadding='4' align='center' border='1' width='428' height='100' style='border-collapse: collapse;' bordercolor='#FFFFFF'>
      

	
  <tr>   
    <td><font color=#FFFFFF><b> Approving Authority ID:</b></font></td> 
<td><input type="text" name="facultyid" class="textinput"></td>
</tr>
<tr>
		<td><font color=#FFFFFF><b> Leave Type :</b></font></td> 
     <td> <select name="leavetype">
    <option value="Emergency">Emergency</option>
    <option value="Examinations(like.Gate)">Examinations(like.Gate)</option>
    <option value="Hometown">hometown</option>
    <option value="Off camp interview">off camp interview</option>
    <option value="Sem Vacation">Sem Vacation</option>
  </select></td>
</tr>
<tr>
<td>
<font color=#FFFFFF><b>From date :</b></font></td>
  <td><input type="date" name="fromdate" max="2017-05-05" min ="2017-01-04"></td></tr>
  <tr>
<td>
<font color=#FFFFFF><b>To date :</b></font></td>
  <td><input type="date" name="todate" max="2017-05-05" min ="2017-01-04"></td></tr>
<tr>
  	<td>
<font color=#FFFFFF><b>Place and Address :</b></font></td>
<td>
<textarea name="address" rows="10" cols="30">

</textarea>
</td>
<tr>
  <td>
<font color=#FFFFFF><b>Reason :</b></font></td>
<td>
<textarea name="reason" rows="3" cols="30">
	</textarea>
</td>
</tr>
</table>
<br>
<input type="submit" name="apply" value="Apply">
<input type="reset" name="reset" value="Reset">
<form name="dd" method="post" action="leavestatus.php">
    <input type="submit" name="back" value="Back">

  </form>  

</table>

