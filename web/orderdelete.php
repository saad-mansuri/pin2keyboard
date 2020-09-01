<?php
include_once("Header.php")
?>
<h4 class="pink">
<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
<a href="#modal-table" role="button" class="green" data-toggle="modal">Delete order</a>
</h4>
<?php
$oid=$_GET["id"];	
$oid1="";
$uid="";
if(isset($_POST["btnsubmit"]))
{
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="Delete from orderss where oid='$oid'";
$result=$cnn->query($qry);
$qry1="delete from ordersdetails where oid='$oid'";
$result1=$cnn->query($qry1);

echo("<script>location.href='OrderView.php'</script>");

}
$cnn=mysqli_connect("localhost","root","","dbproject");
$result=$cnn->query("select * from orderss where oid=$oid");
$row=$result->fetch_assoc();
$oid1=$row["oid"];
$uid=$row["uid"];
?>
<form name="frm" method="post">
<table border='2' class='table  table-bordered table-hover'>
<td>Order ID<input type="text" name="oid" value="<?php echo $oid1; ?>"></td></tr><tr>
<tr><td>User ID<input type="text" name="oid" value="<?php echo $uid; ?>"></td>
</tr>
<tr>
<td><input type="submit" value="Delete" name="btnsubmit" class='btn btn-xs btn-danger'></td>
</tr>
</table>
</form>

</body>
</html>
<?php
include_once("Footer.php")
?>