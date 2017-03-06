<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 03-Mar-17
 * Time: 12:19 PM
 */

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

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

    fputcsv($output, $cols);

    foreach ($form as $status) {
        $rs = mysqli_query($con, "SELECT * from request where lab_name like '%".$lab."%' and status like '%".$status."%'");
        while ($result = mysqli_fetch_assoc($rs)) {
            fputcsv($output, $result);
        }
    }

    fclose($output);

    echo json_encode(array('file'=>$file));

    //unlink($file);
}

