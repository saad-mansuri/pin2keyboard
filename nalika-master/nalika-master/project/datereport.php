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
Start Date: <input type="date" name="date">
End Date: <input type="date" name="date1">
<input type="submit" name="submit" />

</td>
</tr>
</table>
    
</form>


<?php

$fromdate="";
if(isset($_POST["submit"]))
{
$fromdate=$_POST["date"];
$todate=$_POST["date1"];

$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="select * from orders1 ,employee1,orderdetailss where orders1.eId=employee1.eId and orderdetailss.oId=orders1.oId and orders1.odate between '$fromdate' and '$todate'"; 
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'><tr>
<th>Date Of Order</th><th>First Name</th>
<th>Last name</th>
<th>Product name</th>
<th>Product price</th>
<th>Quentity</th>
<th>Total Price</th></tr>";
while($row=$result->fetch_assoc())
{
	$str.="<tr>
	<td>".$row["odate"]."</td>
	<td>".$row["fName"]."</td>
	<td>".$row["lName"]."</td>
	<td>".$row["pName"]."</td>
	<td>".$row["pPrice"]."</td>
	<td>".$row["qty"]."</td>
	<td>".$row["pq"]."</td>
	
	
	

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

