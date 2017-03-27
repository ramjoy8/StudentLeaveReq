
<?php
session_start();
include_once("connection.php");
$sql = "SELECT id,leavetype,fromdate,todate,address,reason FROM leavereq ";
$result = $dbcon->query($sql);
$i=0;

if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc())
     {   $i=$row["id"];echo $i;echo "<br>";
        echo " Leave type : " . $row["leavetype"]. " <br>From  :" . $row["fromdate"]. " <br>To:" . $row["todate"]. "<br> Reason :" . $row["reason"]. "<br> Address : " . $row["address"]. "<br> ";
 ?>
<form action="leaveappro.php" method="post">
</form>
<?php

}

}

else {
    echo "0 results";
}

for($i=0;$i<100;$i++){
if(isset($_POST['approved['.$i.']']))
{
	echo $i;
	
}
}


?>

