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
$scname="";
$opt="";
$r1="";
$r2="";


if(isset($_POST["btnSubmit"]))
{
	$scId=$_GET["Id"];
	$scname=$_POST["txtName"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="update subcategory set scName='$scname', scatIsDisp='$opt' where scatId='$scId'";
	$result=$cnn->query($qry);
	echo("<script>location.href='subcatDisplay.php'</script>");
	
}	
$scId=$_GET["Id"];
$cnn=mysqli_connect("localhost","root","","dbproject");

$qry="Select * from subcategory where scatId=$scId";
//echo $qry;
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$scname=$row["scName"];
$opt=$row["scatIsDisp"];
if($opt=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
	
?>

<h2>
	Sub category Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		Sub category name
	</td>
	<td>
		<input type="text" name="txtName" value="<?php echo $scname ;?>">
	</td>
</tr>
 
<tr>
	<td>
		Want to Display?
	</td>
	<td>
		<input type="radio" name="opt" value="Yes" <?php echo $r1; ?> > Yes 
		<input type="radio" name="opt" value="No" <?php echo $r2; ?> > No
	</td>
</tr>

<tr>
	<td colspan="2"><input type="submit" value="update record" name="btnSubmit">
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
