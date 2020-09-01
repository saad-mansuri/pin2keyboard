<?php
include_once("header.php");
?>

<div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Data
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">

<?php
$pname="";
$opt="";
$r1="";
$r2="";
$price="";
if(isset($_POST["btnSubmit"]))
{
	$pId=$_GET["Id"];
	$pname=$_POST["txtName"];
	$opt=$_POST["opt"];
	$price=$_POST["txtPrice"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="update product set pName='$pname', isDisplay='$opt', pPrice='$price' where pId='$pId'";
	//echo $qry;
	$result=$cnn->query($qry);
	echo("<script>location.href='productDisplay.php'</script>");
	//header("Location:productDisplay.php");
}

$cnn=mysqli_connect("localhost","root","","dbproject");
$pId=$_GET["Id"];
$qry="Select * from product where pId=$pId";
//echo $qry;
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$pname=$row["pName"];
$opt=$row["isDisplay"];
if($opt=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
$price=$row["pPrice"];
?>

<h2>
	Product Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		Product name
	</td>
	<td>
		<input type="text" name="txtName" value="<?php echo $pname ;?>">
	</td>
</tr>
 
<tr>
	<td>
		Want to Display?
	</td>
	<td>
		<input type="radio" name="opt" value="Yes" <?php echo $r1; ?>> Yes 
		<input type="radio" name="opt" value="No"<?php echo $r2; ?>> No
	</td>
</tr>

<tr>
	<td>
		Product Price
	</td>
	<td>
		<input type="text" name="txtPrice" value="<?php echo $price ;?>">
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
