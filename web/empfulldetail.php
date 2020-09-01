<?php
include_once("header1.php")
?>

<br>
<Br>
<Br>

<?php
$id=$_GET["eid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$str4="select * from employee1 where eId='$id'";
$result4=$cnn->query($str4);
$str4="";
while($row4=$result4->fetch_assoc())
{
$str4="<h5><tr><td colspan='3'><br><img src='images/".$row4["empimg"]."' height='100'width='100'>".
"<br>First Name:-".$row4["fName"]."<br>Last Name:-".$row4["lName"]."<br>Date Of Birth:-".$row4["DOB"]."
<br>Contact Number:-".$row4["ContactNo"]."<br>Email Id:-".$row4["EmailId"].
"<br>Gender:-".$row4["gender"]."<center><a href='emporder.php?Id=".$row4['eId']."'>orders</a></center></td></tr></h5>";
}
$str4.="</table>";
echo $str4;  
/*if(isset($_POST["btnSubmit"]))
{
$str4="select * from employee1 where eid='$id'";
$result4=$cnn->query($str4);
$str4="";
$row4=$result4->fetch_assoc();
	$id=$row4["eId"];
	$fname=$row4["fName"];
	$lname=$row4["lName"];
	//$qty=$_POST["size"];
	//$pq=$price*$qty;
	$empimg=$row4["empimg"];
	
	$qry="insert into tempcart (pId,pName,pPrice,qty,pq,pimg) values('$id','$pname','$price','$qty','$pq','$pimg')";
	echo $qry;
	$result=$cnn->query($qry);
	echo "insert successfully";
	echo("<script>location.href='tempcart.php'</script>");
}*/


?>

<?php
include_once("footer.php")
?>