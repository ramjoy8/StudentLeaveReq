<?php
   
    session_start();

  if(isset($_POST['apply']) )
   { 
    include_once("connection.php");
     $studentid= $_SESSION['regno'];
     $name = $_SESSION['name'];
    $leavetype=$_POST['leavetype'];
    $fromdate=$_POST['fromdate'];
    $todate=$_POST['todate'];
    $address=$_POST['address'];
    $reason=$_POST['reason'];
    $leavestatus="Applied";
    $parentstatus="Applied";
    $sql="INSERT INTO leavereq (parentstatus,leavestatus,studentname,studentid,leavetype,fromdate,todate,address,reason) VALUES ('$parentstatus','$leavestatus','$name','$studentid','$leavetype','$fromdate','$todate','$address','$reason')";
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
<body>
	<form method = "post" action="leavereq.php">
		<p>Leave Type</p> <select name="leavetype">
    <option value="Emergency">Emergency</option>
    <option value="Examinations(like.Gate)">Examinations(like.Gate)</option>
    <option value="Hometown">hometown</option>
    <option value="Off camp interview">off camp interview</option>
    <option value="Sem Vacation">Sem Vacation</option>
  </select>
<br>

<p> Date: </p>
<p>From :</p>
  <input type="date" name="fromdate" max="2017-05-05" min ="2017-01-04"><br>
  <p>To :</p>
  <input type="date" name="todate" max="2017-05-05" min ="2017-01-04"><br>
  <div>
  	<p>Place and Address</p>

<textarea name="address" rows="10" cols="30">

</textarea>
<p>Reason</p>
<textarea name="reason" rows="3" cols="30">
	</textarea>
<p></p>
<input type="submit" name="apply" value="Apply">