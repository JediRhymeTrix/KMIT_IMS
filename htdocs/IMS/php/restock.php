<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Mar-17
 * Time: 5:17 PM
 */

session_start();

$db_name="test";
$username="root";
$pwd="";
$server_name="localhost";
$conn=mysqli_connect($server_name,$username,$pwd,$db_name);

$restock = $_POST['restock_form'];

foreach ($restock as $key => $value)
{
    $qry = "update stock set quantity = quantity + $value where type='$key'";
    mysqli_query($conn,$qry);
}

echo json_encode('done');
