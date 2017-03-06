<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 08-Feb-17
 * Time: 2:06 AM
 */

include 'request_formatter.php';

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['status']) || isset($_POST['status1'])) {
    $status = $_POST['status'];
    $status1 = $_POST['status1'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'status received');

    $lab = $_SESSION['lab'];

    $query = mysqli_query($con,"select * from request where lab_name like '%".$lab."%' and ( status like '%".$status."%' or status like '%".$status1."%' )");

    $result = array();


    while ( $row = mysqli_fetch_array($query, MYSQLI_ASSOC)) {

        array_push($result, $row);
    }

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'request sent');

    $result = formatRequest($result);

    echo json_encode(array_reverse($result));

}


if (isset($_POST['active_id'])) {
    $id = $_POST['active_id'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'active');

    $query = mysqli_query($con,"update request set status='closed' where req_id=$id");
    echo json_encode(array("stat"=>"k"));
}
else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'status error');
}