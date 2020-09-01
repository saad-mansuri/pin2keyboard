<?php
session_start();
include_once("header1.php")
?>

<h4 class="pink">

<a href="#modal-table" role="button" class="green" data-toggle="modal">  </a>
</h4>
<?php
$cmpId=$_SESSION["cmpId"];
//$id=$_GET["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from employee1 where cmpId='$cmpId'";
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'>";
$x=1;
while($row=$result->fetch_assoc())
{
	if($x==1)
	{
		$str.="<tr>";
	}
	$x++;
$str.="<td><a href='empfulldetail.php?eid=".$row["eId"]."'>"
."<br><img src='images/".$row["empimg"]."' height='100'width='100'><br>".$row["fName"]."<br>".$row["lName"];
if($x==4)
		{
		$str.="</tr>";
		$x=1;
		}
}
$str.="</table>";
echo $str;

?>

<?php
include_once("footer.php")
?>
