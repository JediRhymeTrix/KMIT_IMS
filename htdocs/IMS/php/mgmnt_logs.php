<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 26-Mar-17
 * Time: 2:27 PM
 */

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['type'])) {

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'logs request received');

    $type = $_POST['type'];

    if(sizeof($_POST['time']) == 1) {

        $since = $_POST['time'][0];

        switch ($since) {
            case 'today': $days = '-0 days';
                break;
            case 'yesterday': $days = '-1 days';
                break;
            case 'week': $days = '-7 days';
                break;
            case 'month': $days = '-1 months';
                break;
            case 'year': $days = '-1 years';
                break;
            case 'all': $days = '-999 years';
        }

        $cur_date = date('Y-m-d');
        $time = strtotime($cur_date.' '.$days);
        $start_date = date("Y-m-d", $time);

        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'range: '.$start_date.' '.$cur_date);
    }
    else {
        $start_date = $_POST['time'][0];
        $cur_date = $_POST['time'][1];

        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'range: '.$start_date.' '.$cur_date);
    }

    if($type == 'movement') {

        $date = date("d-m-Y_G-i");
        $file = '../logs/movement/movement_' . $date;
        $file = $file . '.csv';
        $output = fopen($file, 'w');

        $res = mysqli_query($con, "SELECT * FROM movement");
        $row = mysqli_fetch_assoc($res);

        $cols = array_keys($row);

        fputcsv($output, $cols);

        $rs = mysqli_query($con, "SELECT * FROM movement WHERE req_date BETWEEN '$start_date' AND '$cur_date'");
        while ($result = mysqli_fetch_assoc($rs)) {
            fputcsv($output, $result);
        }

        fclose($output);

        echo json_encode(array('file' => $file));

        //unlink($file);
    }

    else {

        $date = date("d-m-Y_G-i");
        $file = '../logs/maintenance/maintenance_' . $date;
        $file = $file . '.csv';
        $output = fopen($file, 'w');

        $res = mysqli_query($con, "SELECT * FROM request");
        $row = mysqli_fetch_assoc($res);

        $cols = array_keys($row);
        $cols[4] = 'parts_in_repair';
        $temp = $cols[6];
        $cols[6] = $cols[8];
        $cols[8] = $temp;

        fputcsv($output, $cols);

        $rs = mysqli_query($con, "SELECT * FROM request WHERE req_date BETWEEN '$start_date' AND '$cur_date'");

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

        fclose($output);

        echo json_encode(array('file' => $file));

        //unlink($file);
    }
}