<?php
include_once("header.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$uname=$_POST["txtName"];
	$pwd=$_POST["txtpwd"];
	$opt=$_POST["opt"];
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="insert into deliveryboy(uname,pwd,isDisplay)values('$uname','$pwd','$opt')";
	
	$result=$cnn->query($qry);
	header("Location:DeliveryboyDisplay.php");
}
?>


<h2>Deliveryboy Insert</h2>

<form name="a" method="post">
<table>


<tr><td>username Name</td>
<td><input type="text" name="txtName"></td>
</tr>

<tr><td>password</td>
<td><input type="text" name="txtpwd"></td>
</tr>

<tr><td>Want to Display?</td>
<td><input type="radio" name="opt" value="Yes"> Yes <input type="radio" name="opt" value="No"> No</td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Submit" name="btnSubmit"></td></tr>

</form>

<?php
include_once("footer.php");
?>