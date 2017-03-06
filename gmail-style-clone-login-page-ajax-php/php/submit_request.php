<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 07-Feb-17
 * Time: 10:50 AM
 */

session_start();

//file_put_contents("request.txt", '');

$con = mysqli_connect('localhost', 'root', '', 'test');

$cpu_no = $_POST['cpu_no'];

unset($_POST['cpu_no']);

$parts = array_keys($_POST);
$size = sizeof($parts);

$out = "";
$out .= implode(",", $parts);

$lab = $_COOKIE['lab'];

$qty = array();
for($i = 0 ; $i < $size ; $i++ ) {
    $qty[$i] = 0;
}

$qty = implode(',', $qty);

if( $out != 'submit')
    $query = mysqli_query($con,"insert into maintenance (req_id, cpu_no, parts, installed, lab) values (0,'$cpu_no','$out','$qty','$lab')");

$out.=',';

//$myfile = fopen("request.txt", "w");
file_put_contents("request.txt", $out, FILE_APPEND | LOCK_EX);

echo json_encode(array("response"=>"k", "size"=>$size));

if( isset($_POST['submit']) ) {

    $str = file_get_contents('request.txt');

    $lab = $_COOKIE['lab'];

    $part_list['motherboard'] = substr_count($str, 'motherboard' );
    $part_list['processor'] = substr_count($str, 'processor');
    $part_list['memory'] = substr_count($str, 'memory' );
    $part_list['HDD'] = substr_count($str, 'HDD' );
    $part_list['Monitor'] = substr_count($str, 'Monitor');
    $part_list['Keyboard'] = substr_count($str, 'keyboard');
    $part_list['Mouse'] = substr_count($str, 'mouse');

    $part_names = "";
    $part_counts = "";
    $allotted = "";
    $pending = "";

    foreach ($part_list as $key => $value) {
        if($value == 0)
            unset($part_list[$key]);
    }

    $allotted_arr = $part_list;

    foreach ($allotted_arr as $key => $value) {
            $allotted_arr[$key] = 0;
    }

    $part_names .= implode(",", array_keys($part_list));
    $part_counts .= implode(",", array_values($part_list));
    $pending = $part_counts;
    $allotted .= implode(",", array_values($allotted_arr));

    file_put_contents("testfile.txt", $part_names."\n".$part_counts);

    $datetime = date_create()->format('Y-m-d H:i:s');
    file_put_contents('testfile.txt',$datetime);

    if(!stristr($part_counts, '0,0,0,0,0') && $part_names != "") {
        $query = mysqli_query($con, "insert into request (req_id, req_date, req_time, lab_name, parts_inrepair, quantity, pending, allotted, status) values (0,NOW(),NOW(),'$lab','$part_names','$part_counts','$pending','$allotted','pending')");
        $query = mysqli_query($con, "update maintenance set req_id = LAST_INSERT_ID() where req_id = 0");
    }
    //file_put_contents('testfile.txt',$query);

    file_put_contents("request.txt", '');
    unlink("request.txt");
}
