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
                                        <!--<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="dataTables-example_length"><label>Show <select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="dataTables-example_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="dataTables-example"></label></div></div></div><div class="row"><div class="col-sm-12">-->
<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$catid=$_GET["Id"];
$catname="";
$isdisplay="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from Category where catID=$catid";
	$result=$cnn->query($qry);
	echo("<script>Location.href='CatDisplay.php'</script>");
}

$qry="Select * from category where catID=$catid";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$catname=$row['catName'];
$isdisplay=$row['catIsDisplay'];
if($isdisplay=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
?>


<h2>Category delete</h2>

<form name="a" method="post">
<table>


<tr><td>Category Name</td>
<td><input type="text" name="txtName" value="<?php echo $catname ;?>"></td>
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
