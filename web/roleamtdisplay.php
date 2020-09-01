<?php
//session_start();
include_once("header2.php");
?>

<div class="col-lg-12">
                            <h1 class="page-header">Role Amount</h1>
                        </div>
						
						
						
<div align="center">
<a href="roleamtinsert.php">Insert</a>
</div>

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
$cmpId=$_SESSION["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="Select * from cmproleamount1 where cmpId='$cmpId'";
$result=$cnn->query($qry);
$str="<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'><tr><th>Update</th><th>Delete</th><th>Role Name</th><th>Amount</th></tr> ";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='roleamtupdate.php?Id=".$row['crId']."'>Update</a></td><td><a href='roleamtdelete.php?Id=".$row['crId']."'>Delete</a></td><Td>".$row["RoleName"]."</td><td>".$row["amount"]."</tr></td>";
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
include_once("footer.php");
?>
