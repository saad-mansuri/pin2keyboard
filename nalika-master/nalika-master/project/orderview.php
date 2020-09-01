<?php
session_start();
include_once("Header.php")
?>



				
	<div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Your Order Items
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">



									
<?php
$oId=$_GET["Id"];
$total=0;
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from orderdetailss where oId=$oId";
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'><tr><th>Order ID</th><th>
Product Name</th><th>Quantity</th><th>price</th><th>Total</th><th>Image</th></tr>";
while($row=$result->fetch_assoc())
{
	$total+=$row['pq'];
	$str.="<tr><td>".$row["oId"]."</td><td>".$row["pName"]."</td><td>".$row["qty"]."</td><td>".$row["pPrice"]."</td><td>".$row["pq"]."</td>
	<td><img src='images/".$row["pimg"]."' height='100' width='100'>"
	."</td><tr>";
}
$str.="</table>";
//echo "<br><h4 class='pull-center'>Total : ".$total."</h4>";
echo $str;
?>

</form>


                   
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php
include_once("Footer.php")
?>
