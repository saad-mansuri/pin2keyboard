<?php
include_once("header2.php")
?>
<h4 class="pink">

<a href="#modal-table" role="button" class="green" data-toggle="modal"></a>
<h2>Category Display</h2>
<?php
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="Select * from category";
$result=$cnn->query($qry);
$str="<table class='table  table-bordered table-hover'>";
//$str="<table border='2' height='50%' width='50%'><th>Category</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<div class='banner-bottom'>
		<div class='container'> 
			<div class='banner-bottom-grids'>
				<div class='banner-bottom-grid-left animated wow slideInLeft' data-wow-delay='.5s'>
					<div class='grid'>
						<figure class='effect-julia'>
						
						<a alt='' href='subCategoryview1.php?cid=".$row["catId"]."'>
									 
							<img src='images/".$row["catImg"]."'>
							
							<figcaption>
								
								<div>
									
									<p>".$row["catName"]."</p>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
			</div>
		</div>
    </div>		
				";

	
}
$str.="</table>";
echo $str;
?>

<?php
include_once("footer.php")
?>
