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
if(isset($_POST["btnSubmit"]))
{
	
	//print_r($_POST);
	
	$cname=$_POST["txtName"];
	$opt=$_POST["opt"];
	
	$img=$_FILES['file']['name'];
	$cnn=mysqli_connect("localhost","root","","dbproject");

	$qry="insert into category(catName,catIsDisplay,catImg)values('$cname','$opt','$img')";
	//echo "$qry";
	$file_type=$_FILES['file']['type'];
	$file_size=$_FILES['file']['size'];
	$file_tem_loc=$_FILES['file']['tmp_name'];
	$file_store="images\/".$img;
	$str="../../images/".$img;
	//echo $str;
	move_uploaded_file($file_tem_loc,$str);
	
	
	$result=$cnn->query($qry);
	echo("<script>location.href='CatDisplay.php'</script>");
	
}
?>



<h2>Category Insert</h2>

<form name="a" method="post" enctype="multipart/form-data">
<table>


<tr><td>Category Name</td>
<td><input type="text" name="txtName"></td>
</tr>

<tr><td>Image</td>
<td><input type="file" name="file"></td>
</tr>
 
<tr><td>Want to Display?</td>
<td><input type="radio" name="opt" value="Yes"> Yes <input type="radio" name="opt" value="No"> No</td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit" name="btnSubmit"></td></tr>
</table>
</form>

</div>
</div>
</div>
</div>

<?php
include_once("footer.php");
?>