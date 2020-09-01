<?php
//session_start();
include_once("header1.php");
?>
<html>
<body>
<center>
<h1>ORDER REPORTS</h1>
<?php
$id=$_GET["Id"];
//$eId=$_SESSION["eid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from orders1 where eId=$id";
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'><tr><th>view details</th><th>Order ID</th>
<th>Date Of Order</th><th>Employee Id</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='orderview1.php?Id=".$row['oId']."'>view</a></td><td>".$row["oId"]."</td><td>".$row["odate"]."</td><td>".$row["eId"]."</td>";
}
$str.="</table>";
echo $str;
?>
</center>
</body>
</html>
<?php
include_once("Footer.php")
?>