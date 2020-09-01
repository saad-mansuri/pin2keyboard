<?php
include_once("header2.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$cmpId=$_SESSION["cmpId"];
	$Rolename=$_POST["txtName"];
	$opt=$_POST["opt"];
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="insert into role (RoleName,cmpId) values ('$Rolename','$cmpId')";
	
	$result=$cnn->query($qry);
	echo("<script>location.href='roleDisplay.php'</script>");
	
}
?>


<h2>Role Insert</h2>

<form name="a" method="post">
<table>


<tr><td>Role Name</td>
<td><input type="text" name="txtName"></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit" name="btnSubmit"></td></tr>
</table>
</form>

<?php
include_once("footer.php");
?>