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
$cname="";
$opt="";
$r1="";
$r2="";
if(isset($_POST["btnSubmit"]))
{
	$cId=$_GET["Id"];
	$cname=$_POST["txtName"];
	$opt=$_POST["opt"];
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Update category set catName='$cname', catIsDisplay='$opt' where catId='$cId'";
	$result=$cnn->query($qry);
	echo("<script>location.href='CatDisplay.php'</script>");
}

$cnn=mysqli_connect("localhost","root","","dbproject");
$cId=$_GET["Id"];
$qry="Select * from category where catId=$cId";
//echo $qry;
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$cname=$row["catName"];
$opt=$row["catIsDisplay"];
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
	category Update
</h2>

<form name="a" method="post">
<table>

<tr>
	<td>
		category name
	</td>
	<td>
		<input type="text" name="txtName" value="<?php echo $cname ;?>">
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
