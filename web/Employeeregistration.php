<?php
//session_start();
include_once("header2.php");
?>

<center><h2> Employee </h2></center>

<head>
      <style>
         .error {color: #FF0000;}
      </style>
   </head>
   
   <body>
      <?php
         // define variables and set to empty values
         $nameErr = $lnameErr =$unameErr = $contactErr = $emailErr = $genderErr = $pwdErr =$pwd1Err = $DOBErr=$imgErr="";
         $name =$lname=$uname= $email = $gender = $contact = $pwd =$pwd1 =$DOB= $img="";

$Fname="";
$Lname="";
$Username="";
$Password="";
$Email="";
$ContactNo="";
$DOB="";
//$DOJ="";
$gender="";

if(isset($_POST["submit"]))
{
    
$x=1;
	
            if (empty($_POST["name"])) {
               $nameErr = "First Name is required";
				$x++;
			   }
			   if (empty($_POST["lname"])) {
               $lnameErr = "Last Name is required";
			   $x++;
            }
           
            if (empty($_POST["email"])) {
               $emailErr = "Email is required";
			   $x++;
            }
               // check if e-mail address is well-formed
               if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                  $emailErr = "Invalid email format"; 
				  $x++;
               }
            
            
            if (empty($_POST["uname"])) {
               $unameErr = "Username Required";
			   $x++;
            }
            
            if (empty($_POST["contact"])) {
               $contactErr = "Contact No is Required";
			   $x++;
            }
            
            if (empty($_POST["pwd"])) {
               $pwdErr = "Password is Required";
			   $x++;
            }
        
            if (empty($_POST["pwd1"])) {
               $pwd1Err = "Confirm Password is Required";
			   $x++;
            }
			
            if (empty($_POST["gender"])) {
               $genderErr = "Gender is required";
			   $x++;
            }
			if (empty($_POST["DOB"])) {
               $DOBErr = "Date Of Birth is required";
			   $x++;
            }
			if (empty($_POST["file"])) {
               $imgErr = "Image is required";
			   $x++;
            }

	
if($x==1)
{
 	$Fname=$_POST["name"];
	$Lname=$_POST["lname"];
	$Username=$_POST["uname"];
	$Password=$_POST["pwd"];
	$Password=$_POST["pwd1"];
	$Email=$_POST["email"];
	$ContactNo=$_POST["contact"];
	//$DOB=date("y-m-d");
	//$DOJ=$_POST["txtdoj"];
	$cmpid=$_SESSION["cmpId"];
	$gender=$_POST["gender"];
	$role=$_POST["role"];
	$DOB=$_POST["DOB"];
	$img=$_FILES['file']['name'];
$qry="Insert into employee1(fName,lName,eUname,Pwd,EmailId,ContactNo,gender,cmpId,crId,DOB,empimg) values('$Fname','$Lname','$Username','$Password','$Email','$ContactNo','$gender','$cmpid','$role','$DOB','$img')";
//echo $qry;
	
	$file_type=$_FILES['file']['type'];
	$file_size=$_FILES['file']['size'];
	$file_tem_loc=$_FILES['file']['tmp_name'];
	$file_store="images\/".$img;
	$str="../../images/".$img;
	//echo $str;
	move_uploaded_file($file_tem_loc,$str);
	
$con = mysqli_connect("localhost","root","","dbproject");
$result=$con->query($qry);

$cmpid=$_SESSION["cmpId"];
}

//echo ("<script>location.href='employeelogin.php'</script>");
//echo ("<script>alert('Registration sucessfully')</script>");


        
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
               <td>First Name:</td>
               <td><input type = "text" name = "name">
                  <span class = "error">* <?php echo $nameErr;?></span>
               </td>
            </tr>
 <tr>
               <td>Last Name:</td>
               <td><input type = "text" name = "lname">
                  <span class = "error">* <?php echo $lnameErr;?></span>
               </td>
            </tr>

            <tr>
               <td>Username: </td>
               <td><input type = "text" name = "uname">
                  <span class = "error">* <?php echo $unameErr;?></span>
               </td>
            </tr>
             <td>Contact No:</td>
               <td><input type = "text" name = "contact" >
			   
                  <span class = "error">* <?php echo $contactErr;?></span>
               </td>
            </tr>

            <tr>
               <td>E-mail: </td>
               <td><input type = "Email" name = "email">
                  <span class = "error">* <?php echo $emailErr;?></span>
               </td>
            </tr>
           
            <tr>
               <td>Password:</td>
               <td> <input type = "password" name = "pwd">
                  <span class = "error"><?php echo $pwdErr;?></span>
               </td>
            </tr>
            <tr>
               <td>Confirm Password:</td>
               <td> <input type = "password" name = "pwd1">
                  <span class = "error"><?php echo $pwd1Err;?></span>
               </td>
            </tr>
               <tr>
              <br> <td>Gender:</td>
               <td>
                  <br><input type = "radio" name = "gender" value = "female">Female
                  <input type = "radio" name = "gender" value = "male">Male<br>
                  <span class = "error">* <?php echo $genderErr;?></span><br>
               </td>
            </tr>
			
			<tr>
               <td>Date Of Birth:</td>
               <td> <input type = "date" name = "DOB">
                  <span class = "error"><?php echo $DOBErr;?></span>
               </td>
            </tr>
			
			
			<tr>
               <td>Image:</td>
               <td> <input type = "file" name = "file">
                  <span class = "error"><?php echo $imgErr;?></span>
               </td>
            </tr>
			
			
			<tr>
               <td>Role</td>
               <td> 
			   <select name="role">
			<?php
$cmpid=$_SESSION["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="SELECT RoleName,Crid from cmproleamount1 where cmpId='$cmpid'";
$result=$cnn->query($qry);
while($row=$result->fetch_assoc())
{
    echo "<option value ='".$row["Crid"] ."'>".$row["RoleName"]."</option>";
}
?>
</select>


               </td>
            </tr>
			
			<td>
               <input type = "submit" name = "submit" value = "Register" > 
            </td>
				
         </table>

					</form>
				
			</div>
			
		</div>
	</div>





<?php
?>
