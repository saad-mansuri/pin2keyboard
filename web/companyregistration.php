<?php
include_once("header.php");
?>

<center><h2> Company </h2></center>

<head>
      <style>
         .error {color: #FF0000;}
      </style>
   </head>
   
   <body>
      <?php
         // define variables and set to empty values
         $nameErr = $lnameErr =$unameErr = $contactErr = $emailErr = $conperErr = $pwdErr =$pwd1Err =$cmpdErr=$PackageErr= $addErr="";
         $name =$lname=$uname= $email = $conper = $contact = $pwd =$pwd1 =$cmpdetail=$Package= $add="";
    

$cmpname="";
$contper="";
$Username="";
$Password="";
$Email="";
$ContactNo="";
$cmpdetail="";
//$DOB="";
//$DOJ="";
//$gender="";
$package="";

if(isset($_POST["btnsubmit"]))
{
	$x=1;
	
         
            if (empty($_POST["txtname"])) {
               $nameErr = "Company Name is required";
				$x++;
			}
            
           
            if (empty($_POST["txtemail"])) {
               $emailErr = "Email is required";
			   $x++;
            }
               
               // check if e-mail address is well-formed
               if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                  $emailErr = "Invalid email format"; 
				  $x++;
               }
            
            
            if (empty($_POST["txtuname"])) {
               $unameErr = "Username Required";
			   $x++;
            }
            
            if (empty($_POST["txtcontact"])) {
               $contactErr = "Contact No is Required";
			   $x++;
            }
            
            if (empty($_POST["txtpassword"])) {
               $pwdErr = "Password is Required";
			   $x++;
            }
        
            if (empty($_POST["txtpassword1"])) {
               $pwd1Err = "Confirm Password is Required";
			   $x++;
            }
			
			 if (empty($_POST["txtcontactper"])) {
               $conperErr = "Contact Person Name is Required";
			   $x++;
            }
			
			 if (empty($_POST["txtcmpdetail"])) {
               $cmpdErr = "Comnapy Detail is Required";
			   $x++;
            }
			 if (empty($_POST["txtpackage"])) {
               $PackageErr = "Comnapy Detail is Required";
			   $x++;
            }
			if (empty($_POST["txtadd"])) {
               $addErr = "Comnapy Address is Required";
			   $x++;
            }
            
         
	if($x==1)
	{		
	$cmpname=$_POST["txtcmpname"];
	$contper=$_POST["txtcontpername"];
	$Username=$_POST["txtuname"];
	$Password=$_POST["txtpassword"];
	$Password=$_POST["txtpassword1"];
	$Email=$_POST["txtemail"];
	$ContactNo=$_POST["txtcontact"];
	$cmpdetail=$_POST["txtcmpdetail"];
	$package=$_POST["txtpackage"];
	$add=$_POST["txtadd"];
	//$DOB=date("y-m-d");
	//$DOJ=$_POST["txtdoj"];
	//$gender=$_POST["opt"];
	
$qry="Insert into company1(cmpname,cmpuname,Pwd,EmailId,contactperson,contactno,cmpdetail,package,address) values('$cmpname','$Username','$Password','$Email','$contper','$ContactNo','$cmpdetail','$package')";
//echo $qry;
	
$con = mysqli_connect("localhost","root","","dbproject");
$result=$con->query($qry);
	}		 
        
         function test_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
         }
}		 
 ?>
     
<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			
			<div class="login-form-grids">
				
					<form method="post" action ="<?php 
         echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
         <table>
            <tr>
               <td>Company Name:</td>
               <td><input type = "text" name = "txtcmpname">
                  <span class = "error">* <?php echo $nameErr;?></span>
               </td>
            </tr>
 

            <tr>
               <td>Username: </td>
               <td><input type = "text" name = "txtuname">
                  <span class = "error">* <?php echo $unameErr;?></span>
               </td>
            </tr>
             
            <tr>
               <td>E-mail: </td>
               <td><input type = "Email" name = "txtemail">
                  <span class = "error">* <?php echo $emailErr;?></span>
               </td>
            </tr>
           
            <tr>
               <td>Password:</td>
               <td> <input type = "password" name = "txtpassword">
                  <span class = "error"><?php echo $pwdErr;?></span>
               </td>
            </tr>
            <tr>
               <td>Confirm Password:</td>
               <td> <input type = "password" name = "txtpassword1">
                  <span class = "error"><?php echo $pwd1Err;?></span>
               </td>
            </tr>
			
			<br>
			<tr>
			<td>Contact person name:</td>
               <td><input type = "text" name = "txtcontpername" >
			   
                  <span class = "error">* <?php echo $conperErr;?></span>
               </td>
            </tr>
			
			<tr>
			<td>Contact Number:</td>
               <td><input type = "text" name = "txtcontact" >
			   
                  <span class = "error">* <?php echo $contactErr;?></span>
               </td>
            </tr>

			<tr>
			<td>Company Detail:</td>
               <td><input type = "text" name = "txtcmpdetail" >
			   
                  <span class = "error">* <?php echo $cmpdErr;?></span>
               </td>
            </tr>
			<tr>
			<td>Package:</td>
               <td><input type = "text" name = "txtpackage" >
			   
                  <span class = "error">* <?php echo $PackageErr;?></span>
               </td>
            </tr>
			
			<tr>
			<td>Adress:</td>
               <td>
			   <textarea rows="5" cols="30" name="txtadd"></textarea>
			   <span class = "error">* <?php echo $addErr;?></span>
               </td>
            </tr>
			
              
			
			<td>
               <input type = "submit" name = "btnsubmit" value = "Register" > 
            </td>
				
         </table>

					</form>
				
			</div>
			
		</div>
	</div>
<?php
?>

