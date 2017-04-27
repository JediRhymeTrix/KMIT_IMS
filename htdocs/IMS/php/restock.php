<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Mar-17
 * Time: 5:17 PM
 */

session_start();

include 'config.php';    //    connecting to database

$restock = $_POST['restock_form'];

foreach ($restock as $key => $value)
{
    $qry = "update stock set quantity = quantity + $value where type='$key'";
    mysqli_query($con,$qry);
}

echo json_encode('done');
