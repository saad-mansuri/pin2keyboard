<?php
include_once("header.php");
?>

<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$aId=$_GET["Id"];
$Uname="";
$isdisplay="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from admin where aId=$aId";
	$result=$cnn->query($qry);
	header("Location:admin.php");
}

$qry="Select * from admin where aId=$aId";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$Uname=$row['UName'];
$isdisplay=$row['UmaneIsDisplay'];
if($isdisplay=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
?>


<h2>Admin delete</h2>

<form name="a" method="post">
<table>


<tr><td>UserName</td>
<td><input type="text" name="txtName" value="<?php echo $Uname ;?>"></td>
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
