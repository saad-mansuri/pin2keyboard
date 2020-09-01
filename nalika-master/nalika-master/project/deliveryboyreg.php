<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register | Nalika - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
            <div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
                <div class="text-center custom-login">
                    <font color="white"><h3>Registration</h3></font>
                    
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                        <form action="#" id="loginForm" method="post">
                            <div class="row">
                                
                                <div class="form-group col-lg-12">
                                    <label>First Name</label>
                                    <input type="text" name="txtfirstname" class="form-control">
                                </div>
								<div class="form-group col-lg-12">
                                    <label>Last Name</label>
                                    <input type="text" name="txtlastname" class="form-control">
                                </div>
								<div class="form-group col-lg-12">
                                    <label>Username</label>
                                    <input type="text" name="txtuname" class="form-control">
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Password</label>
                                    <input type="password" name="txtpass" class="form-control">
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Email Address</label>
                                    <input name="txtemail" class="form-control">
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Contact Number</label>
                                    <input name="txtcontact" class="form-control">
                                </div>
								<div class="form-group col-lg-12">
                                    <label>Date Of Birth</label>
                                    <input type="date" name="date" class="form-control">
                                </div>
                                
                            </div>
                            <div class="text-center">
                                <button class="btn btn-success loginbtn" name="btnsubmit">Register</button>
                                <button class="btn btn-default">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            
		
		

<?php
$Fname="";
$Lname="";
$Username="";
$Password="";
$Email="";
$ContactNo="";
$DOB="";
//$DOJ="";
//$gender="";

if(isset($_POST["btnsubmit"]))
{
	$Fname=$_POST["txtfirstname"];
	$Lname=$_POST["txtlastname"];
	$Username=$_POST["txtuname"];
	$Password=$_POST["txtpass"];
	$Email=$_POST["txtemail"];
	$ContactNo=$_POST["txtcontact"];
	$DOB=date("y-m-d");
	//$DOJ=$_POST["txtdoj"];
	//$gender=$_POST["opt"];
	
$qry="Insert into deliveryboy(Dfname,Dlname,Duname,pwd,Emailid,Contactno,DOB) values('$Fname','$Lname','$Username','$Password','$Email','$ContactNo','$DOB')";
echo $qry;
	
$con = mysqli_connect("localhost","root","","dbproject");
$result=$con->query($qry);


		
		if (strlen($Fname)==0)
       {
		   echo "Please enter First name";
       }
	    elseif (strlen($Lname)==0)
       {
		   echo "Please enter Last name";
	   }
        elseif(strlen($Username)==0)	   
       {
		   echo "Please enter User Name";
       }
	    
	   elseif(strlen($Password)==0)
       {
		   echo "Please enter Password";
       }
	   elseif(strlen($Password)<8 && strlen($Password)>8)
       {
		   echo "Please enter Password";
       }
	   elseif(strlen($Email)==0)
       {
		   echo "Please enter Email";
       }
	   elseif (strlen($ContactNo)==0)
       {
		   echo "Please enter Phone no";
       }
	   elseif (strlen($ContactNo)<10 && strlen($ContactNo)>10)
       {
		   echo "Please enter Phone no";
       }
		 elseif (strlen($DOB)==0)
       {
		   echo "Please enter Date Of Birth";
       }
     else
       {
	   echo "<script>alert('Registration sucessfully');</script>";
       }
 echo("<script>location.href='deliveryboylog.php'</script>");  
}

?>		
		</div>
        </div>
		</div>
		</div>
		
  
<?php
include_once("footer.php");
?>  