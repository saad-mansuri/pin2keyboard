<?php
include_once("header.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$dId=$_GET["Id"];
	$uname=$_POST["txtName"];
	$pwd=$_POST["txtpwd"];
	$Fname=$_POST["txtFname"];
	$Lname=$_POST["txtLname"];
	$Doj=$_POST["txtDoj"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="update category set userName='$uname',password='$pwd',First name='$Fname',Last name='$Lname',Date of joining='$Doj', display='$opt' where dId='$dId'";
	$result=$cnn->query($qry);
	header("Location:productDisplay.php");
}
?>

<h2>
	delivery boy Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		user name
	</td>
	<td>
		<input type="text" name="txtName" >
	</td>
</tr>
<tr>
	<td>
		password
	</td>
	<td>
		<input type="text" name="txtpwd" >
	</td>
</tr>
<tr>
	<td>
		First name
	</td>
	<td>
		<input type="text" name="txtFname" >
	</td>
</tr>
<tr>
	<td>
	    Last name
	</td>
	<td>
		<input type="text" name="txtLname" >
	</td>
</tr>
<tr>
	<td>
		Date of joining
	</td>
	<td>
		<input type="text" name="txtDoj" >
	</td>
</tr>
 
<tr>
	<td>
		Want to Display?
	</td>
	<td>
		<input type="radio" name="opt" value="Yes"> Yes 
		<input type="radio" name="opt" value="No"> No
	</td>
</tr>

<tr>
	<td colspan="2"><input type="submit" value="update record" name="btnSubmit">
	</td>
</tr>
</table>
</form>

<?php
include_once("footer.php");
?>
