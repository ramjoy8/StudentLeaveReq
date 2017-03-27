<?php

$dbcon = mysqli_connect("localhost","root","","leave");
if (mysqli_connect_errno())
{
	echo "Failed  to Connect: " . mysqli_connect_error();

}
?>