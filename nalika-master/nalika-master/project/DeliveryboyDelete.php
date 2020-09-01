<?php
include_once("header.php");
?>

<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$did=$_GET["Id"];
$uname="";
$isdisplay="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from deliveryboy where dID=$did";
	$result=$cnn->query($qry);
	header("Location:DeliveryboyDisplay.php");
}

$qry="Select * from deliveryboy where dID=$did";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$uname=$row['uname'];
$isdisplay=$row['isDisplay'];
if($isdisplay=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
?>


<h2>Delivery boy delete</h2>

<form name="a" method="post">
<table>


<tr><td>User Name</td>
<td><input type="text" name="uname" value="<?php echo $uname ;?>"></td>
</tr>
 
<tr><td>Want to Display?</td>
<td><input type="radio" name="opt" value="Yes" <?php echo $r1; ?>> Yes 
<input type="radio" name="opt" value="No" <?php echo $r2; ?>> No</td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Delete record" name="btnSubmit"></td></tr>

</form>

<?php
include_once("footer.php");
?>
