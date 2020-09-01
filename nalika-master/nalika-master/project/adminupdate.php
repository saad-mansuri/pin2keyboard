<?php
include_once("header.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$cId=$_GET["Id"];
	$cname=$_POST["txtName"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="update category set UName='$Uname', where AdminId='$aId'";
	$result=$cnn->query($qry);
	header("Location:CatDisplay.php");
}
?>

<h2>
	Admin Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		UserName
	</td>
	<td>
		<input type="text" name="txtName" >
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
