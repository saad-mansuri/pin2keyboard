<?php
session_start();
include_once("header1.php");
?>
<html>
<body>
<center>
<h1>ORDER REPORTS</h1>
<?php
$cmpId=$_SESSION["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$result=$cnn->query("select * from orders1 where cmpId=$cmpId");
$str="<table class='table  table-bordered table-hover'><tr><th>view details</th><th>Order ID</th>
<th>Date Of Order</th><th>Company Id</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='cmporderview.php?Id=".$row['oId']."'>view</i></a></td>
	<td>".$row["oId"]."</td><td>".$row["odate"]."</td><td>".$row["cmpId"]."</td>";
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