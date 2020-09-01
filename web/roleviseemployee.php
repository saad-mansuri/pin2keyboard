<?php
session_start();
include_once("header.php");
?>


<h4 class="pink">

<a href="#modal-table" role="button" class="green" data-toggle="modal"></a>
<!--<h2>Category Display</h2>-->

<center>
<table>
<tr>
<th>role name</th>
<td>
<br>
<select name="role">
<?php
$eId=$_SESSION["cmpId"];
$cnn=mysqli_connect("localhost","root","","dbproject");
$qry="Select * from role";

$x=$_SESSION["cmpid"];
"SELECT Rolename,Crid from cmproleamount1 where cmpId=$x" 

$result=$cnn->query($qry);
//$str="<table border='2' height='50%' width='50%'><th>Category</th></tr>";
while($row=$result->fetch_assoc())
{
    echo "<option value ='".$row["RoleId"] ."'>".$row["RoleName"]."</option>";
}
?>
</select>
<br>
</td>
</tr>

</table>
</center>



<?php
include_once("footer.php")
?>
