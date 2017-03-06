<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 05-Mar-17
 * Time: 8:40 AM
 */


session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if (isset($_POST['logs_form'])) {

    $form = $_POST['logs_form'];
    $lab = $_COOKIE['lab'];

    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'logs request received '.$lab);

    $date = date("d-m-Y_G-i");
    $file = '../logs/movement/movement_' . $date . '_'.implode("_", $form);
    $file = $file . '.csv';
    $output = fopen($file, 'w');

    $res = mysqli_query($con, "SELECT * from movement");
    $row = mysqli_fetch_assoc($res);

    $cols = array_keys($row);

    fputcsv($output, $cols);

    foreach ($form as $status) {
        $rs = mysqli_query($con, "SELECT * from movement where status like '%".$status."%'");
        while ($result = mysqli_fetch_assoc($rs)) {
            fputcsv($output, $result);
        }
    }

    fclose($output);

    echo json_encode(array('file'=>$file));

    //unlink($file);
}
