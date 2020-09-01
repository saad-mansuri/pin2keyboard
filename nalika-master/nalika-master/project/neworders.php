<?php
session_start();
	include_once("header.php");
?>
<html>
	<h2>
		<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer green"></i>
		New Orders
		
		<div class="hr hr-18 hr-double"></div>
	</h2>
	
	




<?php
$delid=$_SESSION["Did"];
$str="select oId,odate from orders1,deliveryboyarea,employee1 where deliveryboyarea.areaId=employtee1.areaId
 and orders.eId=employee1.eId and
 deliveryboyarea.Did='$delid' and orderStatusId='1' ";
 
 
 //"select orderId,DOO from orders,deliveryboyarea,customer where deliveryboyarea.areaId=customer.areaId and 
 //orders.customerId=customer.customerId and deliveryboyarea.DBId='$delid' and orderStatusId='1' ";
$conn=mysqli_connect("localhost","root","","dbproject");
$result=$conn->query($str);
$str="<table class='table table-striped table-bordered table-hover no-margin-bottom no-border-top'>";
$str.="<thead>
		<tr>
			<th><center>Order Id</center></th>
			<th><center>DOO</center></th>
			<th><center>Action</center></th>
		</tr>
		</thead>";
while($row=$result->fetch_assoc())
{
	/*$str.="<tr align='center'><td>".$row["orderId"]."</a></td>"."<td>"."<a href='acceptOrder.php?Id=".$row["DBId"]."' class='btn btn-white btn-warning btn-bold'><i class='ace-icon fa fa-trash-o bigger-120 orange'>Accept</i></a></td>"."</tr>";*/
	$str.="<tr align='center'><td>".$row["oId"]."</a></td>"."<td>".$row["odate"]."</td>
	<td><a href='acceptOrder.php?orderId=".$row["oId"]."' class='btn btn-white btn-warning btn-bold'>Accept</a>"."</td></tr>";
}
$str.="</table>";
echo $str;
?>
<body>
	<form name="catForm" method="post">

	</form>

</body>
</html>

<?php
include_once("footer.php");
?>