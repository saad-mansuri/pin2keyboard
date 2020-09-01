<?php

include_once("header2.php");
?>
					
	
             <div class="container">
                <h1 class="page-title">Your cart items</h1>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <form action="#">
                            <table class="timetable_sub">
                               
			
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
                                    <thead>
                                        



<?php
echo "<center>";
$total=0;
$cnn=mysqli_connect("localhost","root","","dbProject");
$qry="Select * from tempcart";
//echo $qry;
$result=$cnn->query($qry);
$str="<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'><tr><th>Delete</th><th>Product Name</th><th>price</th><th>quantity</th><th>total price</th><th>Image</th></tr> ";
while($row=$result->fetch_assoc())
{
    $total+=$row['pq'];
	$str.="<tr>
	<td><a href='tempdelete1.php?tid=".$row['tid']."'>delete</a></td>
	<Td>".$row["pName"]."</td><td>".$row["pPrice"]."</td>
	<td>".$row["qty"]."</td><td>".$row["pq"]."</td>
	<td><img src='images/".$row["pimg"]."' height='100' width='100'>"."</td></tr>";
}
$str.="</table>";
echo $str;



if(isset($_GET["btnorder"]))
{


$cmpId=$_SESSION["cmpId"];
date_default_timezone_set('Asia/Kolkata');
$odate=date("Y-m-d");
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="insert into orders1(odate,cmpId) values('$odate','$cmpId')";
echo $qry;
$result=$cnn->query($qry);
$str5="select max(oId) as o_id from orders1";
$result5=$cnn->query($str5);

while($row=$result5->fetch_assoc())
{
	$oid=$row["o_id"];
}	
$_SESSION["oId"]=$oid;
$cnn1=mysqli_connect("localhost","root","","dbproject");
$str2="select * from tempcart";
//echo $str2;
$result1=$cnn1->query($str2);
while($row=$result1->fetch_assoc())
{
	
	//$oid=$row["oId"];
	$idd=$row["pId"];
	$pname=$row["pName"];
	$qty=$row["qty"];
	$price=$row["pPrice"];
	$pimg=$row["pimg"];
	$pq=$price*$qty;
	
$cnn3=mysqli_connect("localhost","root","","dbproject");
$str3="insert into orderdetailss (oId,pId,pName,qty,pPrice,pimg,pq) values('$oid','$idd','$pname','$qty','$price','$pimg','$pq')";
echo $str3;
$result3=$cnn3->query($str3);

}
$str4="delete from tempcart";

$result4=$cnn3->query($str4);

echo("<script>location.href='thankyou1.php'</script>");


//if(isset($_POST["btnhistory"]))
//{
//	echo("<script>location.href='OrderHistory.php'</script>");
//}

}


$cmpId=$_SESSION["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$result=$cnn->query("SELECT amount FROM cmproleamount2 , company1
where cmproleamount2.crId = company1.crId and company1.cmpId=$cmpId");


$str="<table class='table  table-bordered table-hover'></tr>";
$amt=0;
while($row=$result->fetch_assoc())
{
	
	$amt=$row["amount"];
}
$str.="</table>";
echo " <h1>Your credit balance = $amt";

$useamt=0;
$result=$cnn->query("SELECT sum(pq) as pq FROM orderdetailss,orders1
where orderdetailss.oId=orders1.oId and orders1.cmpId=$cmpId");
$str1="<table class='table  table-bordered table-hover'><tr></tr>";
while($row=$result->fetch_assoc())
{
	$useamt=$row["pq"];
}
$str1.="</table>";

echo $str1;

$x=$amt-$useamt;

$btndis="Yes";

echo " <h1>Your current balance = $x ";

if($x-$total>0)
{
	
$btndis="Yes";

}else
{
	
$btndis="No";

}


?>


<center><table>
<tr>
<td>    
                                
<form name="form1" method="post">                                   
                     	<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					
					
						
						<span>Total:-<?php echo $total ; ?></span>
					
				</div>

								
								<tr><td>
								
								<?php
								if($btndis=="Yes")
									
									{
								?>
								<input type="submit" name="btnorder">
								
								<?php
									}
									else{
									
										echo "<span class='label label-danger'>Ooooppppppssssssssss your balance insufficient!!!! 
										remaining balance = ".($x-$total);"</span>";
									
									}
								?>
								
								</td>
								
</form>
								</tr>
</tr>
</table>
</center>
</form>
</center>


<tr>
</thead>
                                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>


<?php
include_once("footer.php");
?>
