<?php
$db_name="test";
$username="root";
$pwd="";
$server_name="localhost";
$conn=mysqli_connect($server_name,$username,$pwd,$db_name);
$_SESSION['username']=$_POST['username'];
$_SESSION['pwd']=$_POST['pwd'];

$qry="update login_table set password='".$_SESSION['pwd']."' where userName='".$_SESSION['username']."';";
mysqli_query($conn,$qry);

?>