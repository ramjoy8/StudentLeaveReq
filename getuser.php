<?php
include_once("connection.php");
$q = intval($_GET['q']);



mysqli_select_db($dbcon,"ajax_demo");
$sql = "UPDATE leavereq SET leavestatus='Approved' WHERE id='".$q."'";

if (mysqli_query($dbcon, $sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}
