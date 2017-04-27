<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Feb-17
 * Time: 4:41 PM
 */

//include('config.php');

session_start();

include 'config.php';    //    connecting to database

if(isset($_POST['from_lab'])) {

    $src = $_POST['from_lab'];
    $dest = $_POST['to_lab'];
    $qty = $_POST['qty'];
    $date = $_POST['due_date'];
    $time = $_POST['due_time'];
    $who = $_POST['who'];
    $remarks = $_POST['remarks'];

    $query = mysqli_query($con, "insert into movement (req_id, source_lab, dest_lab, no_of_systems, no_of_monitors, movement_date, movement_time, status, who, remarks, req_date) VALUES (0, '$src', '$dest', '$qty', '$qty', '$date', '$time', 'pending', '$who', '$remarks', NOW())");

    echo json_encode(array('result'=>'success'));
}