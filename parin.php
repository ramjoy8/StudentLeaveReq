<?php
session_start();
if(isset($_SESSION['studentid']))
{
    $regno= $_SESSION['studentid'];
    $name = $_SESSION['name'];

}
else
{  header ('Location: index.php');
die();
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
</style>

<div>
	<h1>WElcome <?php echo $name; ?></h1></div>
	<p></p>
	<a href="leaveack.php">Leave ACK</a>



</body>
</html>