<?php



   session_start();

   if(isset($_POST['submit']))
   { include_once("connection.php");

    $studentid=strip_tags($_POST['studentid']);
    $password=strip_tags($_POST['password']);
    

    $sql = "SELECT * FROM parent WHERE studentid = '$studentid' AND password='$password'";
    $query=mysqli_query($dbcon,$sql);
    if($query)
    
      {  $row=mysqli_fetch_row($query);
         $dbstudentid=$row[0];
         $name= $row[1];
         $mobile=$row[2];
         $eamil=$row[3];
         $dbpassword=$row[4];
         
         
       }


  if ($studentid==$dbstudentid && $password == $dbpassword)
  {   $_SESSION['studentid'] = $studentid;
$_SESSION['name'] = $name;
        header ('location:parin.php');
}
else { echo "Incorrect";

}


  }

  ?>



<!DOCTYPE html>

<html>
<head>
  <title>VIT-Parent LogIN</title>
</head>
<style>



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
<table width="100%" height="90%" border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">
  <tr>
    <td valign="top" align="center"><table width="30%"  border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">

      <form method="post" action="parlog.php">
        <table cellspacing='0' cellpadding='4' align='center' border='1' width='428' height='100' style='border-collapse: collapse;' bordercolor='#FFFFFF'>
    <tr>   
<td><font color=#FFFFFF><b>Student Register No.</b></font>
</td>
     <td><input type="text" name="studentid" class="textinput"></td> 
</tr>  
  <tr>
    <td ><font color=#FFFFFF><b>Password</b></td>
     <td ><input type="password" name="password" ></td> 
</tr>  
  <tr >
    <td></td>
     <td ><input type="submit" name="submit" value="Login">
     <input type="reset" name="reset" value="Reset"></td>

</tr>  
  </table>
</form>

<td style="background-color: rgb(12, 47, 77)" align="center" width="4%">
      &nbsp;
    </td>
    
    <td style="background-color: rgb(12, 47, 77)" valign="top" align="left" width="80%">
    
    
    
    <ul>
    
    <li><a href="#" onclick="popup2('http://vtop2.vit.ac.in:8080/ONLINEPAYMENT/')"><font color=blue><b>Student Online Payment.</b></font></a></li>
    <li><a href="#" onclick="popup2('https://academics.vit.ac.in/studentprofile/fresher_passwd.asp')"><font color=blue>Freshers 2016 <b>"Parent Login"</b> Password (Only for New Entry).</font></a></li><br>
    
    </ul><br>
      
    <table cellspacing=0 cellpadding=2 border="1" width="90%" height="60%" style="border-collapse: collapse" bordercolor="#000000">
    
    <tr height="10%">       
      <td bgcolor="#616D7E" align=center colspan=2 width="90%">
        <a href="#" onclick="popup('https://vtop.vit.ac.in/include_spotlight_part01.asp')"><font color=white><b>Academics / Events / Others</b></font></a>
        <img border="0" src="images/hand.gif" height="16" width="32">
      </td>
    </tr>
    
    <tr height="20%">       
      <td bgcolor=#E6F2FF colspan=2 width="90%">
        <marquee behavior="scroll" direction="up" scrolldelay="75" scrollamount="1" height="275" width="900" onMouseOver="this.setAttribute('scrollamount', 0, 0);" OnMouseOut="this.setAttribute('scrollamount', 1, 0);">

</table>
</table>

<table style="background-color: rgb(12, 47, 77)" width="100%" height="15%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="background-color: rgb(12, 47, 77)" align="center" class="white-text">
    &copy;2017&nbsp; SDC, VIT University, Vellore - 632014, Tamil Nadu, India.
    </td>
  </tr>
</table>



</body>

</table>










</body>
</html>