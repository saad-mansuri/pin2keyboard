<?php
include_once("header.php")
?>

<html>
<body>
<?php
echo "<center>";	
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from tempcart";
$result=$cnn->query($str);
$str="<table border='2'><tr><th>Product Name</th><th>Product Price</th><th></th><th>Product Qty</th><th>Product Total</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td>".$row["pName"]."</td><td>".$row["pPrice"]."</tr></td>" .$row["qty"]."</td><td>" .$row["pq"]."</td><td>";
}
$str.="</table>";
echo $str;
?>
<!--while($row=$result->fetch_assoc())
{
$total+=$row['pq'];
$str.="<tr><td>".$row["pName"]."</td><td> ".$row["size"]."</td><td>"
.$row["price"]."</td><td><img src='images/".$row["pimg"]."' height='100' width='100'>"
."</td><td>".$row["qty"]."</td><td>".$row["pq"].
"</td><td><a href='tempdelete.php?id=".$row["tempid"]."'>delete</a>"."</td></tr>" ;	

}
$str.="</table>";
echo $str;
	echo "Product Total is:- " .$total;
if(isset($_POST["btnorder"]))
{
	
session_start();	
if(isset($_SESSION["Adminname"]))
{
$uid=$_SESSION["Adminname"];
date_default_timezone_set('Asia/Kolkata');
$doo=date("Y-m-d");
$cnn1=mysqli_connect("localhost","root","","dbproject");
$str2="select * from tempcard";
$result1=$cnn1->query($str2);
while($row=$result1->fetch_assoc())
{
	
	$id=$row["pid"];
	$pname=$row["pname"];
	$price=$row["price"];
	$qty=$row["qty"];
	$total=$row["pq"];
	$pimg=$row["pimg"];
$cnn3=mysqli_connect("localhost","root","","dbproject");
$str3="insert into ordersdetails (oId,pId,qty) values('$id','$pname','$price','$qty','$total','$pimg')";
$result3=$cnn3->query($str3);
}
echo("<script>location.href='Invoice.php'</script>");
}	
else
{
echo("<script>location.href='mainlogin.php'</script>");
}
}
if(isset($_POST["btnhistory"]))
{
	echo("<script>location.href='OrderHistory.php'</script>");
}


?>

<form name="form1" method="post">
<table>
<tr>
<td><input type="submit" class="btn " name="btnorder" value="Place Order" ></td>
<td><input type="submit" class="btn " name="btnhistory" value="Order History" ></td>
</tr>
</table>
</form>
</center>-->
</body>
</html>

<?php
include_once("footer.php")
?>