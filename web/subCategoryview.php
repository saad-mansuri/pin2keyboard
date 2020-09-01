<?php
include_once("header1.php")
?>
<h4 class="pink">

<a href="#modal-table" role="button" class="green" data-toggle="modal">  </a>
</h4>
<?php
$id=$_GET["cid"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from subcategory where catId='$id'";
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'>";
$x=1;
while($row=$result->fetch_assoc())
{
	
$str.="
<div class='banner-bottom'>
		<div class='container'> 
			<div class='banner-bottom-grids'>
				<div class='banner-bottom-grid-left animated wow slideInLeft' data-wow-delay='.5s'>
					<div class='grid'>
						<figure class='effect-julia'>
						
						<a alt='' href='product.php?scatId=".$row["scatId"]."'>
									 
							<img src='images/".$row["scatImg"]."'>
							
							<figcaption>
								
								<div>
									
									<p>".$row["scName"]."</p>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
			</div>
		</div>
    </div>	";


}
$str.="</table>";

echo $str;
?>


<?php
include_once("footer.php")
?>

