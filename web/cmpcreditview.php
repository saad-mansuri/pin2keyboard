<?php
session_start();
include_once("header.php");
?>
<html>
<body>
<center>

<?php
$eId=$_SESSION["eid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$result=$cnn->query("SELECT amount FROM cmproleamount1 , company1
where cmproleamount1.crId = employee1.crId and employee1.eId=$eId");


$str="<table class='table  table-bordered table-hover'></tr>";
$amt=0;
while($row=$result->fetch_assoc())
{
	
	$amt=$row["amount"];
}
$str.="</table>";
echo " <h1>Your credit balance = $amt";

$useamt=0;
$result=$cnn->query("SELECT sum(pq) as pq FROM orderdetailss,orders1
where orderdetailss.oId=orders1.oId and orders1.eId=$eId");
$str1="<table class='table  table-bordered table-hover'><tr></tr>";
while($row=$result->fetch_assoc())
{
	
	
	$useamt=$row["pq"];
}
$str1.="</table>";


echo $str1;

$x=$amt-$useamt;

echo " <h1>Your reamining balance = $x";
?>
</center>
</body>
</html>
<?php
include_once("Footer.php")
?>