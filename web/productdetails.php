<?php
include_once("header1.php")
?>

<br>
<Br>
<Br>
<div class='col-md-8 single-right'>
				<div class='col-md-5 single-right-left animated wow slideInUp' data-wow-delay='.5s'>


<?php
$id=$_GET["pid"];

$cnn=mysqli_connect("localhost","root","","dbproject");
$str4="select * from product where pId='$id'";
$result4=$cnn->query($str4);
$str4="";
while($row4=$result4->fetch_assoc())
{

$str4="		
					<div class='flexslider'>
						
							
								<div class='thumb-image'> <img src='images/".$row4["pimg"]."' height='200'width='200'
								data-imagezoom='true' class='img-responsive'> </div>
							
					</div>
					<!-- flixslider -->
						<script defer src='js/jquery.flexslider.js'></script>
						<link rel='stylesheet' href='css/flexslider.css' type='text/css' media='screen' />
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: 'slide',
							controlNav: 'thumbnails'
						  });
						});
						</script>
					<!-- flixslider -->
				</div>
				<div class='col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight' data-wow-delay='.5s'>
					<h3>".$row4["pName"]."</h3>
					<h4><span class='item_price'>RS:-".$row4["pPrice"]."</span></h4>
					
					
					
				</div>
				
				
                 ";
}
$str4.="</table>";
echo $str4;  
if(isset($_POST["btnSubmit"]))
{
$str="select * from product where pId='$id'";
$result=$cnn->query($str);
$str="";
$row=$result->fetch_assoc();
	$id=$row["pId"];
	$pname=$row["pName"];
	$price=$row["pPrice"];
	$qty=$_POST["qty"];
	$pq=$price*$qty;
	$pimg=$row["pimg"];
	
	$qry="insert into tempcart (pId,pName,pPrice,qty,pq,pimg) values('$id','$pname','$price','$qty','$pq','$pimg')";
	echo $qry;
	$result=$cnn->query($qry);
	echo "insert successfully";
	echo("<script>location.href='tempcart.php'</script>");
}


?>
<form action="#" id="loginForm" method="post">

                         <td class="invert" name="qty">
							 <div class="quantity" > 
							<label>Qty:</label>
									<td>
									<select name="qty">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									</select>
									</td>
							</div>
						</td>
					
					<br>
					<div class="occasion-cart">
						<input type="submit" class="item_add" href="tempcart.php" name="btnSubmit" value="Add To Cart"></a>
					</div>
</form>

</div>
				</div>
				
				
				
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>


<?php
include_once("footer.php");
?>								