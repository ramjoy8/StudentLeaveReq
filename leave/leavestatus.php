	

  <!DOCTYPE html>
<html>
<head>
  <title> Student Leave Request </title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>

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


<?php



   session_start();
include_once("connection.php");
 $regno= $_SESSION['regno'];
$sql = "SELECT id,leavestatus,facultyid,studentname,parentstatus,studentid,leavetype,fromdate,todate,address,reason FROM leavereq WHERE studentid='$regno'";
$result = $dbcon->query($sql);

if(isset($_POST['back']))

{
 
        header ('location:studentin.php');
   
}



if ($result->num_rows > 0) {
  echo'
  <div style="overflow-x:auto;">
  <table>
    <tr>
    <th>Leave ID</th>
      <th>Student ID</th>
      <th>Student Name</th>
      <th>Leave type</th>
      <th>From date</th>
      <th>To date</th>
      <th>Address</th>
      <th>Reason</th>
      <th>Faculty ID</th>
      <th>Parent Status</th>
      <th>Faculty Status</th>
     </tr>';
    
    while($row = $result->fetch_assoc())

     {  

if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Denied")
 {
echo '
        <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>

<td><a><img src="images/denied.png" width="72" height="62"/></a> 
<td align="center"><br><a><img src="images/disapproved.jpg" width="95" height="35"/></a> 


</tr> ';




 }

else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Ack")
 {
echo '
        <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>

<td align="center"><a><img src="images/ackd.png" alt=width="70" height="60"/></a> <br>;

<td align="center"><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 

</tr> <br>';




 }
 else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Applied")
 {
echo '<tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>
 
 <td>
<a><img src="images/noresponse.png" width="95" height="30"/></a>
</td>
<td><a><img src="images/disapproved.jpg" width="95" height="20"/></a> 
</td>
'
 ;




 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Applied")
 {
echo '
        <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>
 <td align="left">
<a><img src="images/noresponse.png" width="95" height="35"/></a>
</td><td>
<a><img src="images/approved.jpg" width="95" height="30"/></a> 
</td>

</tr> ';





 }

 

else
 if($row["leavestatus"]=="Applied" && $row['parentstatus']=="Denied")
 {
echo '
        <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>
 <td align="center">
<a><img src="images/denied.png" alt ="DENIED"width="72" height="62"/></a>

</td>
<td align="center">
-

</td>
</tr> ';





 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Ack")
 {
echo '
       <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td> 
 <td align="center"><img src="images/ackd.png" alt = "ACKD" width="70" height="60"/></a></td>
<td align="center"><br><a><img src="images/approved.jpg" width="95" height="20"/></a></td>

</tr> ';





 }




         else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Applied")
                {   echo '
        <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>

 
<td align ="center">
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="35"/></a></td>

<td align ="center">
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="35"/></a></td>
</tr> ';

    }
     else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Ack")
                {   echo '
       <tr>
<td align ="center">'.$row['id'].'</td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 <td align ="center">'.$row['facultyid'].'</td>

<td align="center"> <a><img src="images/ackd.png" alt = "ACKD" width="70" height="60"/></a></td>

<td align="center"><a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="35"/></a></td>
</tr>

';
    }
    
}


}

echo '  <table><tr > 
<td align = "center"><form method="post" action="leavestatus.php">
    <input type="submit" name="back" value="Back">

  </form>  

</table>


'

  ?>

 