<?php
include_once("header2.php");
?>

<?php
if(isset($_POST["btnSubmit"]))
{
	$cmpId=$_SESSION["cmpId"];
	
	$Rolename=$_POST["txtName"];
	$amt=$_POST["txtamt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="insert into cmproleamount1(RoleName,amount,cmpId)values('$Rolename','$amt','$cmpId',)";
	//echo $qry;
	$result=$cnn->query($qry);
	echo("<script>location.href='roleamtdisplay.php'</script>");
	
}
?>


<h2>Role Amount Insert</h2>

<form name="a" method="post">
<table>


<tr><td>Role Name</td>
<td><input type="text" name="txtName"></td>
</tr>


 

<tr><td>amount</td>
<td><input type="text" name="txtamt"></td>
</tr>
 
<!--<tr><td>Want to Display?</td>
<td><input type="radio" name="opt" value="Yes"> Yes <input type="radio" name="opt" value="No"> No</td>
</tr>-->

<tr>
<td colspan="2"><input type="submit" value="Submit" name="btnSubmit"></td></tr>
</table>
</form>

<?php
include_once("footer.php");
?>