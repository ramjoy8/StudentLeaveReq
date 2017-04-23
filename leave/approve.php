<?php
include_once("connection.php");
$sql = "UPDATE leavereq SET leavestatus='Approved' WHERE id='$_GET[id]'";
if (mysqli_query($dbcon, $sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

mysqli_close($dbcon);

header("location: leaveappro.php");
?>
