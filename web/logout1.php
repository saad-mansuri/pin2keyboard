<?php
include_once("header2.php");
?>

<?php
session_start();
session_destroy();
echo("<script> location.href='employeelogin.php'</script>");

?>
