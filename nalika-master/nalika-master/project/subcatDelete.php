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
$cnn=mysqli_connect("localhost","root","","dbproject");
$scid=$_GET["Id"];
$scname="";
$isdisplay="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from subcategory where scatID=$scid";
	$result=$cnn->query($qry);
	header("Location:subcatDisplay.php");
}

$qry="Select * from subcategory where scatID=$scid";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$scname=$row['scName'];
$isdisplay=$row['scatIsDisp'];
if($isdisplay=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
?>


<h2>Sub category delete</h2>

<form name="a" method="post">
<table>


<tr><td>Sub category Name</td>
<td><input type="text" name="scName" value="<?php echo $scname ;?>"></td>
</tr>
 
<tr><td>Want to Display?</td>
<td><input type="radio" name="opt" value="Yes" <?php echo $r1; ?>> Yes 
<input type="radio" name="opt" value="No" <?php echo $r2; ?>> No</td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Delete record" name="btnSubmit"></td></tr>
</table>
</form>

</div>
</div>
</div>
</div>
<?php
include_once("footer.php");
?>
