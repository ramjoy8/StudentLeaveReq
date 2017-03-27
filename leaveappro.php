	
<?php



   session_start();
include_once("connection.php");
$sql = "SELECT id,leavestatus,studentname,parentstatus,studentid,leavetype,fromdate,todate,address,reason FROM leavereq ";
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
<td>&nbsp;</td> <br><td><b>Parent:</b><a><img src="images/denied.png" width="95" height="20"/></a> 
<td><b>You:</b><td align="left"><br><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 
<td align="left">

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
<td>&nbsp;</td> 

<td><b>Parent:</b></td> <td align="left"><br><a><img src="images/ackd.png" alt=width="95" height="20"/></a> <br>;

<td><b>You :</b></td><td align="left"><br><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 

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
<td>&nbsp;</td> <td align="left"><br><td><b>Parent:</b>
<a><img src="images/noresponse.png" width="95" height="20"/></a><br><td><b>You:</b>
<a><img src="images/disapproved.jpg" width="95" height="20"/></a> 


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
<td>&nbsp;</td> <td align="left"><br><td><b>Parent:</b>
<a><img src="images/noresponse.png" width="95" height="20"/></a><br><td><b>You:</b>
<a><img src="images/approved.jpg" width="95" height="20"/></a> 


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
<td>&nbsp;</td> <td align="left"><br>
<td><b>Parent:</b></td><a><img src="images/denied.png" alt ="DENIED"width="95" height="20"/></a>


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
<td>&nbsp;</td> 
<td>&nbsp;</td> <td><b>Parent:</b><td align="left"><br><a><img src="images/ackd.png" alt = "ACKD" width="95" height="20"/></a>
<td><b>You:</b><td align="left"><br><a><img src="images/approved.jpg" width="95" height="20"/></a>

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
<td>&nbsp;</td> <td><b>Parent:</b></td>
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="20"/></a></td></tr>
</tr>
<td align="left"><br><a href="approve.php?id='.$row['id'].'"><img src="images/approval.jpg" alt="Approve" width="95" height="20"/></a> 
&nbsp;
<a href="decline.php?id='.$row['id'].'"><img src="images/disapproval.jpg" alt="Decline" width="95" height="20"/></a></td></tr>
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
<tr><td><b>Parent:</b></td><td align="left"><br><a><img src="images/ackd.png" alt = "ACKD" width="95" height="20"/></a>
<td align="left"><br><a href="approve.php?id='.$row['id'].'"><img src="images/approval.jpg" alt="Approve" width="95" height="20"/></a> 
&nbsp;
<a href="decline.php?id='.$row['id'].'"><img src="images/disapproval.jpg" alt="Decline" width="95" height="20"/></a></td></tr>
</tr> <br>';
    }
    
}
}
  ?>