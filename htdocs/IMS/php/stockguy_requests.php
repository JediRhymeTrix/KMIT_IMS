<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 08-Feb-17
 * Time: 2:06 AM
 */

include "request_formatter.php";

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['status']) || isset($_POST['status1'])) {
    $status = $_POST['status'];
    $status1 = $_POST['status1'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'status received');

    $query = mysqli_query($con,"select * from request where status like '%".$status."%' or status like '%".$status1."%'");

    $result = array();
    $stock = array();

    $query2 = mysqli_query($con,"select * from stock");

    while ($row = mysqli_fetch_array($query2, MYSQLI_ASSOC)) {
        $stock[$row['type']] = $row['quantity'];
    }

    while ( $row = mysqli_fetch_array($query, MYSQLI_ASSOC)) {

        $maximums = array();

        $parts = explode(",", $row['parts_inrepair']);
        $qty = array_map('intval', explode(',', $row['pending']));

        $row['parts_count'] = count($parts);

        $i = 0;

        foreach ($parts as $part) {
            $maximums[$part] = $qty[$i++];
        }

        foreach ($parts as $part) {
            if($maximums[$part] > $stock[$part])
                $maximums[$part] = $stock[$part];
        }

        $row['maximums'] = $maximums;
        $row['stock'] = $stock;

        array_push($result, $row);

    }


    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'request sent');

    /*$myfile = fopen("output.txt", "w");
    fwrite($myfile, print_r($result, true));*/

    $result = formatRequest($result);

    echo json_encode(array_reverse($result));

}


if (isset($_POST['active_id'])) {
    $id = $_POST['active_id'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'active');

    $allotted = $_POST['allotted'];

    $parts = array_keys($allotted);
    $quantity = array_values($allotted);

    $allot = implode(",", $quantity);

    $query = mysqli_query($con,"select pending, allotted from request where req_id = '$id'");
    $result = mysqli_fetch_assoc($query);

    $aRes = explode(",", $result['allotted']);
    for($i = 0 ; $i < count($aRes) ; $i++) {
        $aRes[$i] = $aRes[$i] + $quantity[$i];
    }
    $allot = implode(",", $aRes);

    $pRes = explode(",", $result['pending']);
    for($i = 0 ; $i < count($pRes) ; $i++) {
        $pRes[$i] = $pRes[$i] - $quantity[$i];
    }
    $pending = implode(",", $pRes);

    $c = 0;
    foreach ($pRes as $num) {
        if($num == 0)
            $c++;
    }
    if($c == count($pRes)) {
        $stat = 'k';

        $query = mysqli_query($con,"update request set status='active' where req_id=$id");
    }
    else {
        $stat = 'k1';

        $query = mysqli_query($con,"update request set status='incomplete' where req_id=$id");
    }


    $query = mysqli_query($con,"update request set pending='$pending' where req_id=$id");
    $query = mysqli_query($con,"update request set allotted='$allot' where req_id=$id");

    foreach ($allotted as $key=>$value) {
        $query = mysqli_query($con,"select quantity from stock where type='$key'");
        $qty = mysqli_fetch_assoc($query)['quantity'];
        $qty -= $value;

        $query = mysqli_query($con,"update stock set quantity=$qty where type='$key'");
    }

    echo json_encode(array("stat"=>$stat));
}

else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'status error');
}

if(isset($_POST['last'])) {
    $last = $_POST['last'];

    $query = mysqli_query($con,"select max(req_id) from request where status='pending'");
    $rid = mysqli_fetch_row($query)[0];

    if($rid > $last) {
        echo json_encode($rid." > ".$last);
    }
}