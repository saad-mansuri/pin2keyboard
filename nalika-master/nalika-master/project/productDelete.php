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
$pid=$_GET["Id"];
$pname="";
$isdisplay="";
$r1="";
$r2="";

if(isset($_POST["btnSubmit"]))
{
	
	$cnn=mysqli_connect("localhost","root","","dbproject");
	$qry="Delete from product where pId=$pid";
	$result=$cnn->query($qry);
	echo("<script>location.href='productDisplay.php'</script>");
}

$qry="Select * from product where pId=$pid";
$result=$cnn->query($qry);
$row=$result->fetch_assoc();
$pname=$row['pName'];
$isdisplay=$row['isDisplay'];
if($isdisplay=="Yes")
{
	$r1="Checked";	
}
else
{
	$r2="Checked";
}
?>


<h2>product delete</h2>

<form name="a" method="post">
<table>


<tr><td>product Name</td>
<td><input type="text" name="pName" value="<?php echo $pname ;?>"></td>
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
