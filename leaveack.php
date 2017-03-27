	
<?php



   session_start();
include_once("connection.php");
$regno= $_SESSION['studentid'];
$sql = "SELECT id,leavestatus,parentstatus,studentname,studentid,leavetype,fromdate,todate,address,reason FROM leavereq  WHERE studentid='$regno'";
$result = $dbcon->query($sql);
$i=0;

if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc())

     {  

if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Denied")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Student Name:</b></td> <td>'.$row['studentname'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 
<td align="left"><br><a><img src="images/denied.png" width="95" height="20"/></a> 

</tr> <br>';




 }

else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Ack")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Student Name:</b></td> <td>'.$row['studentname'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 

<td align="left"><br><a><img src="images/ackd.png" alt=width="95" height="20"/></a> 

</tr> <br>';




 }
 else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Applied")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Student Name:</b></td> <td>'.$row['studentname'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 
<a><img src="images/noresponse.png" width="95" height="20"/></a>

 <br>';




 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Applied")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/approved.jpg" width="95" height="20"/></a>
<a><img src="images/noresponse.png" width="95" height="20"/></a>



</tr> <br>';





 }

 

else
 if($row["leavestatus"]=="Applied" && $row['parentstatus']=="Denied")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/denied.png" alt ="DENIED"width="95" height="20"/></a>


</tr> <br>';





 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Ack")
 {
echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/approved.jpg" width="95" height="20"/></a>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/ackd.png" alt = "ACKD" width="95" height="20"/></a>


</tr> <br>';





 }




         else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Applied")
                {   echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a href="ack.php?id='.$row['id'].'"><img src="images/ack.png" alt="ACK" width="95" height="20"/></a> 
&nbsp;
<a href="deny.php?id='.$row['id'].'"><img src="images/deny.png" alt="DENY" width="95" height="20"/></a></td></tr>
</tr> <br>';
    }
     else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Ack")
                {   echo '
        <tr>
<td><b>Leave ID:</b></td><td>'.$row['id'].'</td></tr>
 <tr>
<td><b>Student ID:</b></td> <td>'.$row['studentid'].' </td></tr>
<tr>
<td><b>Leave Type:</b></td> <td>'.$row['leavetype'].'</td></tr>
<tr>
<td><b>From date:</b></td> <td>'.$row['fromdate'].'</td></tr>
<tr>
<td><b>To date:</b></td> <td>'.$row['todate'].'</td></tr>
<tr>

<td><b>Address:</b></td> <td>'.$row['address'].'</td></tr>
<tr>

<td><b>Reason:</b></td> <td>'.$row['reason'].'</td></tr>
<tr>
<td>&nbsp;</td> <td align="left"><br><a><img src="images/ackd.png" alt="ACKD" width="95" height="20"/></a> 
&nbsp;
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="20"/></a></td></tr>
</tr> <br>';
    }
    
}
}
  ?>
 


