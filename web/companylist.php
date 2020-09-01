<?php
include_once("header.php")
?>

<div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Company List
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">


<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="Select * from company1";
$result=$cnn->query($qry);
$str="
<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'><tr>
<th>Category</th></tr> ";
//<table border='2' height='50%' width='50%'><th>Category</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='employeelist.php?cmpId=".$row["cmpId"]."'>"
.$row["cmpname"]."</a></td></tr>";
}
$str.="</table>";

echo $str;
?>
</div>										
										</div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
<?php
include_once("footer.php")
?>
