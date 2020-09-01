<?php
session_start();
include_once("Header.php")
?>



				
	<div class="cart-main-area pt-60 pb-65">
            <div class="container">
                <h3 class="page-title">Your order items</h3>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <form action="#">
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>



<?php
$oId=$_GET["Id"];
$total=0;
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from orderdetailss where oId=$oId";
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'><tr><th>Order ID</th><th>
Product Name</th><th>Quantity</th><th>price</th><th>Total</th><th>Image</th><th>Delete</th></tr>";
while($row=$result->fetch_assoc())
{
	$total+=$row['pq'];
	$str.="<tr><td>".$row["oId"]."</td><td>".$row["pName"]."</td><td>".$row["qty"]."</td><td>".$row["pPrice"]."</td><td>".$row["pq"]."</td>
	<td><img src='images/".$row["pimg"]."' height='100' width='100'>"."</td><td><a href='OrderDelete.php?Id=".$row["oId"]."' <i class='icon fa fa-times'></i></a>"
	."</td><tr>";
}
$str.="</table>";
//echo "<br><h4 class='pull-center'>Total : ".$total."</h4>";
echo $str;
?>
<div class="col-lg-4 col-md-12">
                                <div class="grand-totall">
                                   
                                    <h4 class="grand-totall-title ">Grand Total : <span><?php echo $total ; ?></span></h4> 
                                    <!--<a href="#">Proceed to Checkout</a>-->
                                </div>
                            </div>
<html>
<body>
<body>
</body>
</html>



                   
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php
include_once("Footer.php")
?>
