<?php
session_start();
if(isset($_SESSION['empid']))
{
    $regno= $_SESSION['empid'];
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
	<a href="leaveappro.php">Leave Req</a>



</body>
</html>