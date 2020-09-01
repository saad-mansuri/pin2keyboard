<?php
include_once("header.php");
?>

<div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Data
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pin TO Keyboard</title>
</head>
<form method="post">
  <table>
<tr>
<td>
    <input type="submit" value="Print" name="submit">
	


<br>
<br>
Low Price: <input type="text" name="price">
High Price: <input type="text" name="price1">
<input type="submit" name="submit" />

</td>
</tr>
</table>
    
</form>


<?php

$fromdate="";
if(isset($_POST["submit"]))
{
$fromdate=$_POST["price"];
$todate=$_POST["price1"];

$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from product where pPrice between '$fromdate' and '$todate'"; 
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'><tr>

<th>Product name</th>
<th>Product price</th>
";
while($row=$result->fetch_assoc())
{
	$str.="<tr>
	
	<td>".$row["pName"]."</td>
	<td>".$row["pPrice"]."</td>
	
	
	
	

</tr>
	";
	
	
	
}
$str.="</table>";
echo $str;
	
	
}

?>
</table>

</div>										
										</div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>


<?php
include_once("footer.php");
?>

