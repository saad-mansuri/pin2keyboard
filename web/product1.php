<?php
include_once("header2.php")
?>


																

																
															
 <!--<div class="product-area pt-65 pb-30">
            <div class="container">
                
                <div class="tab-content jump">
                    <div class="tab-pane active" id="home1">
                        <div class="custom-row">
                            <div class="custom-col-5 mb-30">
                                <div class="devita-product-2 mrg-inherit">
                                    <div class="product-img">
                                        
                                    													
 
                                        

												-->
<?php

$id=$_GET["scatId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from product where scatId='$id'";
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'>";
$x=1;
while($row=$result->fetch_assoc())
{
	if($x==1)
	{
		$str.="<tr>";
	}
	$x++;
$str.="<div class='new-collections-grid-sub-grids'>
						<div class='new-collections-grid1-sub'>
							<div class='new-collections-grid1 animated wow slideInUp' data-wow-delay='.5s'>
								<div class='new-collections-grid1-image'>
								<div class='product-image'>
							      
									<img src='images/".$row["pimg"]."' height='300'width='500'
									 </a>
									 </div>
									<div class='new-collections-grid1-image-pos'>
										<a href='productdetails1.php?pid=".$row["pId"]."'>Quick View</a>
									</div>
									
								</div>
								<h4><a>".$row["pName"]."</a></h4>
								<div class='new-collections-grid1-left simpleCart_shelfItem'>
									<p><span class='item_price'>RS:-".$row["pPrice"]."</span></p>
								</div>
							</div>
						</div>
					</div>	
										</td>";
                                       
                                    
if($x==4)
		{
		$str.="</tr>";
		$x=1;
		}
}
$str.="</table>";
echo $str;

?>	

<?php
include_once("footer.php")
?>
