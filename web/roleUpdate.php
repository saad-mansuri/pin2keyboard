<?php
include_once("header.php");
?>





<?php

$Rolename="";
if(isset($_POST["btnSubmit"]))
{
	
	
	$RoleId=$_GET["Id"];
	$Rolename=$_POST["txtName"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="update Role set RoleName='$Rolename' where RoleId='$RoleId'";
	$result=$cnn->query($qry);
	echo("<script>location.href='roleDisplay.php'</script>");
}	
	
$cnn=mysqli_connect("localhost","root","","dbproject");
$RoleId=$_GET["Id"];
$qry="Select * from Role where RoleId=$RoleId";
//echo $qry;
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$Rolename=$row["RoleName"];
	

?>

<h2>
	Role Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		Role name
	</td>
	<td>
		<input type="text" name="txtName" value="<?php echo $Rolename;?>">
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
