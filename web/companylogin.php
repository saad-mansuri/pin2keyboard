<?php
session_start();
include_once("header.php");
?>			
<center><h2> Company </h2></center>

<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post">
					
					<input type="text" name="txtuname" placeholder="Username"required=" " >
					<input type="password" name="txtpass" placeholder="Password" required=" " >
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<input type="submit" name="btnSubmit" value="Login">
				</form>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New Company</h4>
			<center><p class="animated wow slideInUp" data-wow-delay=".5s"><a href="companyregistration.php">Register Here</a> </p></center>
		</div>
	</div>

	

<?php
$Username="";
$Password="";
if(isset($_POST["btnSubmit"]))
{
$Username=$_POST["txtuname"];
$Password=$_POST["txtpass"];
$qry="Select * from company1 where cmpuname='$Username' and Pwd='$Password'";
$con = mysqli_connect("localhost","root","","dbproject");
echo $qry;

$result=$con->query($qry);

$cnt=mysqli_num_rows($result);

echo "<h1> $cnt </h1>";

if($cnt==1)
{
	$row=$result->fetch_assoc();
	
	$_SESSION["cmpId"]=$row["cmpId"];
	$_SESSION["cmpuname"] = $Username;

		//echo "Edi = ".$_SESSION["eid"]." Uname = ".$_SESSION["eUname"];

	//header("Location:Category.php");
	echo("<script>location.href='Category1.php'</script>");
}
else
{
	echo "<script>alert('either usenamr or password is worng')</script>";
}
}

?>

