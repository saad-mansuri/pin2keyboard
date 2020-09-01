<?php
	include_once("header.php");
?>
<!DOCTYPE html>
<html>
<body>
<h2>
		<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer green"></i>
		Feedback Form
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;

		<div class="hr hr-18 hr-double"></div>
	</h2>
<?php

	$eId=$_SESSION["eid"];
	$conn=mysqli_connect("localhost","root","","dbproject");
	$str="select * from employee1 where eId='$eId' ";
	$result=$conn->query($str);
	while($row=$result->fetch_assoc())
	{
		$name=$row["eUname"];
		$cno=$row["ContactNo"];
	}
	if(isset($_POST["btnSubmit"]))
	{
		date_default_timezone_set('Asia/Kolkata');
		$dof=date("Y-m-d h-i-s");
		$notes=$_POST["txtMsg"];
		$conn1=mysqli_connect("localhost","root","","dbproject");
		$str1="insert into feedback values('','$eId','$dof','$notes')";
		$result1=$conn1->query($str1);
//	echo("<script>location.href='thankyouFeedback.php'</script>");
	}
?>	

<form method="post">
<div class="checkout">
	<div class="container">
		
		<div class="table-responsive checkout-right animated wow slideInUp' data-wow-delay='.5s">
			<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">

					<tr>
						<td>Your Name : </td>
						<td><input type="text" name="eUname"></td>
						
					</tr>
					<tr>
						<td>Your Mobile No. : </td>
						<td><input type="text" name="ContactNo"></td>
						
					</tr>
					<tr>
						<td>Your Message : </td>
						<td><input type="text" name="txtMsg"></td>
					</tr>

				</table>	
				<tr>
						<input type="submit" name="btnSubmit" value="Send Feedback">
				</tr>	
		</div>
	</div>
</div>
</form>

		</table>
		</div>
		</div>
</div>	
</body>
</html>
