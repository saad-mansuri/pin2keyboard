<?php
include_once("header.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$cname=$_POST["txtName"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="insert into admin(Uname,Fname,Lname,Dob,contNo,Email,)values('$Uname','$opt')";
	
	$result=$cnn->query($qry);
	header("Location:admin.php");
}
?>


<h2>Username Insert</h2>

<form name="a" method="post">
<table>


<tr><td>UserName</td>
<td><input type="text" name="txtName"></td>
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