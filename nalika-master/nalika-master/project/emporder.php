<?php
//session_start();
include_once("header.php");
?>


<div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Order Reports
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">


<?php									
$id=$_GET["Id"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$str4="select * from employee1 where eId='$id'";
$result4=$cnn->query($str4);
$str4="";
while($row4=$result4->fetch_assoc())
{
$str4="<h5><tr><td colspan='3'>
<br>First Name:-".$row4["fName"]."<br>Last Name:-".$row4["lName"]."
</td></tr></h5>";
}
$str4.="</table>";
echo $str4;  
?>
									
<?php
$id=$_GET["Id"];
//$eId=$_SESSION["eid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from orders1 where eId=$id";
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'><tr><th>view details</th><th>Order ID</th>
<th>Date Of Order</th><th>Employee Id</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr><td><a href='orderview.php?Id=".$row['oId']."'>view</a></td>
	<td>".$row["oId"]."</td><td>".$row["odate"]."</td><td>".$row["eId"]."</td>";
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
include_once("Footer.php")
?>