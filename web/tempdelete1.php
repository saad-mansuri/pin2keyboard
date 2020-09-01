<?php
include_once("header2.php");
?>

<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$tid=$_GET["tid"];
$pname="";
//$productdelete="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from tempcart where tid=$tid";
	$result=$cnn->query($qry);
	echo("<script>location.href='tempcart1.php'</script>");
	
}

$qry="Select * from tempcart where tid=$tid";
$result=$cnn->query($qry);
//echo $qry;
$row=$result->fetch_assoc();
$pname=$row['pName'];
/*$productdelete=$row['deleteproduct'];
if($productdelete=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}*/
?>


<h2>Product delete</h2>

<form name="a" method="post">

<tr><td>Product Name</td>
<br>
<br>
<td><input type="text" name="txtname" value="<?php echo $pname ;?>"></td>
</tr>
 
<!--<tr><td>Want to buy?</td>
<td><input type="radio" name="opt" value="Yes" <?php echo $r1; ?>> Yes 
<input type="radio" name="opt" value="No" <?php echo $r2; ?>> No</td>
</tr>-->

<tr>
<br>
<br>
<td colspan="2"><input type="submit" value="Delete record" name="btnSubmit"></td></tr>

</form>

<?php
include_once("footer.php");
?>
