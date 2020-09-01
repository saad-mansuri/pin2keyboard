<?php
include_once("header.php");
?>

<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$RoleId=$_GET["Id"];
$RoleName="";
//$isdisplay="";
//$r1="";
//$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from cmproleamount1 where crID=$RoleId";
	$result=$cnn->query($qry);
	header("Location:roleamtdisplay.php");
}

$qry="Select * from cmproleamount1 where crID=$RoleId";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$RoleName=$row['RoleName'];
?>

<h2>Role delete</h2>

<form name="a" method="post">
<table>

<tr><td>Role Name</td>
<td><input type="text" name="RoleName" value="<?php echo $RoleName ;?>"></td>
</tr>
 
<tr>
<td colspan="2"><input type="submit" value="Delete record" name="btnSubmit"></td></tr>
</table>
</form>

<?php
include_once("footer.php");
?>
