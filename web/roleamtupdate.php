<?php
include_once("header.php");
?>



<?php
$Rolename="";
//$opt="";
//$r1="";
//$r2="";
if(isset($_POST["btnSubmit"]))
{
	$RoleId=$_GET["Id"];
	$Rolename=$_POST["txtName"];
	$amt=$_POST["txtamt"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Update cmproleamount1 set RoleName='$Rolename',amount='$amt' where crId='$RoleId'";
	$result=$cnn->query($qry);
	echo("<script>location.href='roleamtdisplay.php'</script>");
}

$cnn=mysqli_connect("localhost","root","","dbproject");
$RoleId=$_GET["Id"];
$qry="Select * from cmproleamount1 where crId=$RoleId";
//echo $qry;
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$Rolename=$row["RoleName"];
$amt=$row["amount"];
/*$opt=$row["catIsDisplay"];
if($opt=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}*/
?>

<h2>
	Role Amount Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		Role name
	</td>
	<td>
		<input type="text" name="txtName" value="<?php echo $Rolename ;?>">
	</td>
</tr>
 
<tr>
	<td>
		Amount
	</td>
	<td>
		<input type="text" name="txtamt" value="<?php echo $amt ;?>">
	</td>
</tr>

<tr>
	<td colspan="2"><input type="submit" name="btnSubmit">
	</td>
</tr>
</table>
</form>
</div>
</div>
</div>
</div>


<?php
include_once("footer.php");
?>
