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
      <img src="images/72.gif" height="70" width="200">
    </td>

</tr>

</table>	
<?php



   session_start();
   $regno= $_SESSION['studentid'];
include_once("connection.php");
$sql = "SELECT id,leavestatus,facultyid,studentname,parentstatus,studentid,leavetype,fromdate,todate,address,reason FROM leavereq WHERE studentid='$regno' ";
$result = $dbcon->query($sql);
$i=0;
if(isset($_POST['back']))

{
 
        header ('location:parin.php');
   
}


if ($result->num_rows > 0) {



  
  echo'
  <div style="overflow-x:auto;">
  <table>
    <tr>
    <th>Leave ID</th>
    <th>Student Image</th>
      <th>Student ID</th>
      <th>Student Name</th>
      <th>Leave type</th>
      <th>From date</th>
      <th>To date</th>
      <th>Address</th>
      <th>Reason</th>
      
      <th>Faculty Status</th>
      
     </tr>';
    
    while($row = $result->fetch_assoc())

     {  


if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Denied")
 {





                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>
 <td align ="center"><img src="images/disapproved.jpg" alt="disApproved" width="95" height="30"/>



 
  <td style="padding-right= 5px;">
<a ><img src="images/denied.png" alt ="Denied" width="72" height="62"/></a>

</td>
</tr> ';



 }

else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Ack")
 {

                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

<td align ="center"><img src="images/disapproved.jpg" alt="disApproved" width="95" height="30"/>
</td>

 
  <td style="padding-right= 5px;">
<a ><img src="images/ackd.png" alt ="ACKD" width="70" height="60"/></a>

</td>

</tr> ';




 }
 else
    if($row["leavestatus"]=="Declined" && $row["parentstatus"]=="Applied")
 {

                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>
 <td align ="center"><img src="images/disapproved.jpg" alt="disApproved" width="95" height="30"/>
</td>

 
  <td style="padding-right= 5px;">
<a ><img src="images/noresponse.png" alt ="NO response" width="95" height="30"/></a>

</td>


</tr> ';

 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Applied")
 {

                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>
 <td align ="center"><img src="images/approved.jpg" alt="Approved" width="95" height="30"/>
</td>

  <td align ="center"><img src="images/noresponse.png" alt ="NO response" width="95" height="30"/>
</td>

</tr> ';


 }

 

else
 if($row["leavestatus"]=="Applied" && $row['parentstatus']=="Denied")
 {
                $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>
 <td align ="center"><img src="images/noresponse.png" alt ="NO response" width="95" height="30"/>
</td>

  <td style="padding-right= 5px;">
<a ><img src="images/denied.png" alt ="Denied" width="72" height="62"/></a>

</td>

</tr> ';






 }
else
 if($row["leavestatus"]=="Approved" && $row['parentstatus']=="Ack")
 {

                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>
<td align ="center"><img src="images/approved.jpg" alt="Approved" width="95" height="30"/>
</td>
 
  <td style="padding-right= 5px;">
<a ><img src="images/ackd.png" alt ="ACKD" width="70" height="60"/></a>

</td>


</tr> ';






 }




         else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Applied")
                {  

                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 
  <td style="padding-right= 5px;">
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="30"/></a>

</td>

<td align ="center"><a href="ack.php?id='.$row['id'].'"><img src="images/ack.png" alt="Approve" width="70" height="60"/></a> 
<a href="deny.php?id='.$row['id'].'"><img src="images/deny.png" alt="Decline" width="72" height="62"/></a></td>
</tr> ';
    }
     else if($row["leavestatus"]=="Applied" && $row["parentstatus"]=="Ack")
                {                  $zz=$row['studentid'];
$s="SELECT * FROM student where regno='$zz'";
 $query=mysqli_query($dbcon,$s);
    if($query)
    
      {  $ro=mysqli_fetch_row($query);
         
         $image=$ro[3];
         
         
         
       }
echo '
       <tr>
       

<td align ="center">'.$row['id'].'</td>
<td align ="center"><img src="'.$image.'"style="width:50px;height:50px;"></td>
 
 <td align ="center">'.$row['studentid'].' </td>
 <td align ="center">'.$row['studentname'].' </td>

<td align ="center">'.$row['leavetype'].'</td>

 <td align ="center">'.$row['fromdate'].'</td>

 <td align ="center">'.$row['todate'].'</td>

 <td align ="center">'.$row['address'].'</td>

 <td align ="center">'.$row['reason'].'</td>

 
  <td style="padding-right= 5px;">
<a ><img src="images/noresponse.png" alt ="NOT YET APPROVED" width="95" height="30"/></a>

</td>
<td style="padding-right= 5px;">
<a ><img src="images/ackd.png" alt ="ACKD" width="70" height="60"/></a>

</td>



</tr> ';
    }
    
}
}
echo '  <table><tr > 
<td align = "center"><form method="post" action="leaveack.php">
    <input type="submit" name="back" value="Back">

  </form>  

</table>


'
  ?>