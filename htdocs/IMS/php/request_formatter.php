<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Mar-17
 * Time: 11:41 AM
 */

include 'unprint_r.php';

$input_filename = 'sample.txt'; // set input file name
$array_string = file_get_contents($input_filename);
$array_string = trim($array_string);
$sample_array = print_r_reverse($array_string);

function formatRequest( $input_arr ) {

    foreach ($input_arr as &$request) {
        $request['parts_inrepair'] = explode(",", $request['parts_inrepair']);
        $request['quantity'] = array_combine($request['parts_inrepair'], explode(",", $request['quantity']));
        $request['allotted'] = array_combine($request['parts_inrepair'], explode(",", $request['allotted']));
        $request['pending'] = array_combine($request['parts_inrepair'], explode(",", $request['pending']));
    }

    return $input_arr;
}

function printRequestsToFile( $filename, $array ) {
    $myfile = fopen("$filename".".txt", "w");
    fwrite($myfile, print_r(formatRequest($array), true));
}


$filename = 'formatter_test';
printRequestsToFile($filename, $sample_array);