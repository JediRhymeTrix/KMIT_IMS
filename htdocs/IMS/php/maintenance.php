<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 02-Mar-17
 * Time: 7:32 PM
 */

session_start();

include 'config.php';    //    connecting to database

$myfile = fopen("testfile.txt", "w");
fwrite($myfile, $_POST['req_id']);

if(isset($_POST['req_id'])) {
    $req_id = $_POST['req_id'];
    $lab = $_COOKIE['lab'];

    $query = mysqli_query($con, "select * from maintenance where req_id = $req_id and status = 'pending' and lab = '$lab'");

    $result = array();
    while ( $row = mysqli_fetch_array($query, MYSQLI_ASSOC)) {

        $parts = explode(",", $row['parts']);
        $installed = explode(",", $row['installed']);

        $record = array_combine($parts, $installed);
        $i = 0;
        foreach ($record as $part => $ins) {
            if($ins == 1) {
                unset($record[$part]);
            } else {
                $i = 1;
            }
        }

        $row['parts'] = $record;
        unset($row['installed']);

        $cpu_no = $row['cpu_no'];


        if($i == 0)
            $query = mysqli_query($con, "update maintenance set status = 'done' where req_id = $req_id and lab = '$lab' and cpu_no = '$cpu_no'");
       else
           array_push($result, $row);
    }

    echo json_encode($result);
}

if(isset($_POST['part'])) {
    $part = $_POST['part'];
    $cpu_no = $_POST['cpu_no'];
    $req_id = $_POST['req_id'];
    $lab = $_COOKIE['lab'];

    $query = mysqli_query($con, "select parts, installed from maintenance where cpu_no = '$cpu_no' and req_id = $req_id and status = 'pending' and lab = '$lab'");
    $result = mysqli_fetch_assoc($query);

    $parts = array_combine(explode(",", $result['parts']), explode(",", $result['installed']));

    foreach ($parts as $pt => $value)
        $parts[$part] = 1;

    $installed = implode(",", array_values($parts));

    $query = mysqli_query($con, "update maintenance set installed = '$installed' where req_id = $req_id and lab = '$lab' and cpu_no = '$cpu_no'");

    echo json_encode(array('result'=>'k'));
}

else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'maintenance request error');
}