<?php
//session_start();
include_once("Header2.php")
?>
<h4 class="pink">
<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
<a href="#modal-table" role="button" class="green" data-toggle="modal"> Order View </a>
</h4>

<?php
$oId=$_GET["RoleId"];
//$total=0;
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from cmproleamount1 where RoleId=$oId";
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'><tr><th>Role ID</th><th>
Role Name</th><th>amount</th></tr>";
while($row=$result->fetch_assoc())
{
	//$total+=$row['pq'];
	$str.="<tr><td>".$row["RoleId"]."</td><td>".$row["RoleName"]."</td><td>".$row["amount"]."</td></a>"
	."</td><tr>";
}
$str.="</table>";
//echo "<br><h4 class='pull-center'>Total : ".$total."</h4>";
echo $str;
?>
<div class="col-lg-4 col-md-12">
                                <div class="grand-totall">
                                    <!--<div class="title-wrap">
                                        <h4 class="cart-bottom-title section-bg-gary-cart">Cart Total</h4>
                                    </div>
                                    <h5>Total products <span>$260.00</span></h5>
                                    <div class="total-shipping">
                                        <h5>Total shipping</h5>
                                        <ul>
                                            <li><input type="checkbox"> Standard <span>$20.00</span></li>
                                            <li><input type="checkbox"> Express <span>$30.00</span></li>
                                        </ul>
                                    </div>-->
                                    <h4 class="grand-totall-title ">Grand Total : <span><?php echo $total ; ?></span></h4> 
                                    <!--<a href="#">Proceed to Checkout</a>-->
                                </div>
                            </div>
<html>
<body>
<body>
</body>
</html>

<?php
include_once("Footer.php")
?>
