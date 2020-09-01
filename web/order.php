<?php
include_once("header1.php");
?>
<html>
<body>
<center>
<h1>ORDER REPORTS</h1>
<?php
$eId=$_SESSION["eid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$result=$cnn->query("select * from orders1 where eId=$eId");
$str="<table class='table  table-bordered table-hover'><tr><th>view details</th>
<th>Date Of Order</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='orderview.php?Id=".$row['oId']."'>view</i></a></td>
	<td>".$row["odate"]."</td>";
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