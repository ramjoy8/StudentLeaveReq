<?php
session_start();
include_once("connection.php");
$sql = "SELECT id,leavestatus,studentname,studentid,leavetype,fromdate,todate,address,reason FROM leavereq WHERE leavestatus='Declined' ";
$result = $dbcon->query($sql);
$i=0;

if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc())

     {  echo $row['id'];
}
}
?>