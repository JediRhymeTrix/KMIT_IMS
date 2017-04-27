<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 03-Mar-17
 * Time: 12:19 PM
 */

session_start();

include 'config.php';    //    connecting to database

if (isset($_POST['logs_form'])) {

    $form = $_POST['logs_form'];
    $lab = $_COOKIE['lab'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'logs request received '.$lab);

    $date = date("d-m-Y_G-i");
    $file = '../logs/maintenance/maintenance_' . $date . '_'.implode("_", $form);
    $file = $file . '.csv';
    $output = fopen($file, 'w');

    $res = mysqli_query($con, "SELECT * from request");
    $row = mysqli_fetch_assoc($res);

    $cols = array_keys($row);
    $cols[4] = 'parts_in_repair';
    $temp = $cols[6];
    $cols[6] = $cols[8];
    $cols[8] = $temp;

    fputcsv($output, $cols);

    foreach ($form as $status) {
        $rs = mysqli_query($con, "SELECT * from request where lab_name like '%".$lab."%' and status like '%".$status."%'");
        $i = 0;
        while ($result = mysqli_fetch_assoc($rs)) {

            $parts = explode(',', $result['parts_inrepair']);
            $qty = explode(',', $result['quantity']);
            $allotted = explode(',', $result['allotted']);
            $pending = explode(',', $result['pending']);

            for ($j = 0 ; $j < sizeof($parts) ; $j++) {
                $part_details = array($result['req_id'], $result['req_date'], $result['req_time'], $result['lab_name']);

                array_push($part_details, $parts[$j], $qty[$j], $allotted[$j], $pending[$j], $result['status']);

                $result['req_id'] = '';
                $result['req_date'] = '';
                $result['req_time'] = '';
                $result['lab_name'] = '';
                $result['status'] = '';

                fputcsv($output, $part_details);
            }

            fputcsv($output, array(''));
        }
    }

    fclose($output);

    echo json_encode(array('file'=>$file));

    //unlink($file);
}

