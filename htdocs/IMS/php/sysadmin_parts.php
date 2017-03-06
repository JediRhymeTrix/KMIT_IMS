<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 07-Feb-17
 * Time: 10:50 AM
 */

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['cpu_no'])){

    $cpu_no = $_POST['cpu_no'];

    $query = mysqli_query($con,"select * from systemsinfs6parts where sys_no = $cpu_no");
    $num = mysqli_num_rows($query);
    if($num=1){
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'parts found');

        $result = mysqli_fetch_array($query, MYSQLI_ASSOC);
        unset($result['sys_no']);
        $monitor = '#'.$result['Monitor_no'].' ('.$result['Monitor_make'].')';
        $cpu = $result['processor'];//.' ('.$result['socket'].')';
        $result['Monitor'] = $monitor;
        $result['processor'] = $cpu;
        unset( $result['Monitor_no']);
        unset( $result['socket']);
        unset( $result['Monitor_make']);

        if(isset($_POST['cpu_no'])) {

            echo json_encode($result);

            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'parts response sent');
        }

    }else{
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'partsfetch error');

    }

}

else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'session error');
}