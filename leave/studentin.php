<?php

    session_start();
  

if(isset($_SESSION['regno']))
{
    $regno= $_SESSION['regno'];
    $name = $_SESSION['name'];
      
include_once("connection.php");

 $sql = "SELECT image FROM student WHERE regno='$regno'";
  $result = $dbcon->query($sql);
if ($result->num_rows > 0) {
    
    $row = $result->fetch_assoc();

}
else
{  header ('Location: index.php');
die();
}
}


?>












<!DOCTYPE html>
<html>
<head>
  <title> Student Log In </title>
<style>
.login{ height : 100%;
width: 100%;

}
  



ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    background-color: #333333;
}

li {
    float: bottom;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}

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
<table width="100%" height="90%" border="0" align="left" cellpadding="0" cellspacing="0" style="background-color: #333333">
  <tr> <td align =top><table cellspacing=0 cellpadding=2 border="1" style="border-collapse: collapse;border:1px #333333" bordercolor="#000000">
<tr>
    <td colspan=2 style="
    padding-right: 5px;
    padding-left: 30px;
    " valign="top" align="left"> <?php echo '<img src="'.$row['image'].'"style="width:200px;height:300px;">' ?> 
  </td>
</tr>

  <tr > <td ><table cellspacing='0' cellpadding='4' align='left' border='1' width='200' height='100' style='border-collapse: collapse;border:1px #333333' bordercolor='#FFFFFF'>
  <tr>
    <td style="padding-left: 30px;"><font color=#FFFFFF><b>Register No. :</b></font></td>
    <td><font color=#FFFFFF><b><?php echo $regno ?></b></font></td>
</tr>
<tr>
    <td style="padding-left: 30px;"><font color=#FFFFFF><b>Name :</b></font></td>
    <td><font color=#FFFFFF><b><?php echo $name ?></b></font></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
<td   style="
    padding-top: 5px;"  align=top>
<table cellspacing=0 cellpadding=2 border="1" width="90%" height="60%" style="border-collapse: collapse;border:1px #333333" bordercolor="#000000">
    
    <tr height="10%">       
      <td  bgcolor="#616D7E" align=center colspan=2 width="90%">
        <a href="#" onclick="popup('https://vtop.vit.ac.in/include_spotlight_part01.asp')"><font color=white><b>Academics / Events / Others</b></font></a>
        <img border="0" src="images/hand.gif" height="16" width="32">
      </td>
    </tr>
    
    <tr height="20%">       
      <td bgcolor="#E6F2FF" colspan=2 width="90%">
        <marquee behavior="scroll" direction="up" scrolldelay="75" scrollamount="1" height="125" width="900" onMouseOver="this.setAttribute('scrollamount', 0, 0);" OnMouseOut="this.setAttribute('scrollamount', 1, 0);">
         </td></tr>

 






<tr>
    


    <td  valign="top" align="center" >
  <table border="0" cellpadding="0" style="background-color: #333333 ;border-collapse: collapse" height="250" width="300">
    <tr>

<td style="padding-top: 30px;">
<div class ="login">


<ul>
  <li><a href="leavereq.php" ><font size=5 color=#FFFFFF face="Comic Sans MS">Apply Leave</a></li>
  <li><a href="leavestatus.php" >Leave Status</a></li>
 <li><a href="slogout.php" >Log Out</a></li>
  
</ul>
</div></table></td>

  <td align=right><table cellspacing=0 cellpadding=2 border="1" width="50%" height="30%" style="border-collapse: collapse" bordercolor="#000000">
    
    <tr height="10%">       
      <td bgcolor="#616D7E" align=center  width="10%">
        <a href="#" onclick="popup('https://vtop.vit.ac.in/include_spotlight_part01.asp')"><font color=white><b>Academic Calender</b></font></a>
        <img border="0" src="images/hand.gif" height="16" width="32">
      </td>
    </tr>
    
    <tr height="20%">       
      <td  align = right bgcolor=#E6F2FF  width="50%">
        <marquee align = right behavior="scroll" direction="up" scrolldelay="75" scrollamount="1" height="250" width="550" onMouseOver="this.setAttribute('scrollamount', 0, 0);" OnMouseOut="this.setAttribute('scrollamount', 1, 0);">
         </td>

</tr>
</table>

</tr>
</table>














</body>
</html>