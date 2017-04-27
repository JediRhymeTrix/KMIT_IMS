<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 06-Feb-17
 * Time: 11:32 PM
 */

session_start();

include 'config.php';    //    connecting to database

unset($_SESSION['request']);

file_put_contents("request.txt", '');
unlink("request.txt");

if(isset($_SESSION['emp_id'])){

    if(isset($_COOKIE['lab'])) {
        $lab_name = $_COOKIE['lab'];
        $_SESSION['lab'] = $lab_name;

        $query = mysqli_query($con, "select sys_no from systemsinfs6 where lab_name='$lab_name'");
        $num = mysqli_num_rows($query);
        if ($num >= 1) {
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'list found');

            while ($result = $query->fetch_assoc()) {
                $array[] = $result['sys_no'];
            }

            $out = "";
            $out .= implode(",", $array);

            if (isset($_POST['action'])) {

                echo json_encode(array('systems' => $out));

                $myfile = fopen("testfile.txt", "w");
                fwrite($myfile, 'systems response sent');
            }

            $_COOKIE['lab'] = $lab_name;

        } else {
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'system fetch error');

        }

    } else {
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'lab name error');
    }

}

else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'session error');
}