<?php

include 'config.php';   //  database connection

$_SESSION['username']=$_POST['username'];
$_SESSION['pwd']=$_POST['pwd'];

$qry="update login_table set password='".$_SESSION['pwd']."' where userName='".$_SESSION['username']."';";
mysqli_query($con,$qry);

?>