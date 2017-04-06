<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 26-Mar-17
 * Time: 1:01 PM
 */

//include('config.php');

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_SESSION['emp_id'])){

    unset($_SESSION['lab']);

    $query = mysqli_query($con,"select * from personnel where pid='".$_SESSION['emp_id']."'");
    $num = mysqli_num_rows($query);
    if($num==1){
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'name found');

        $result = mysqli_fetch_array($query,MYSQLI_ASSOC);

        $name = $result['pname'];

        if(isset($_POST['action'])) {

            echo json_encode(array('name'=>$name));

            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'response sent');
        }

    }else{
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'name fetch error');

    }

}

else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'session error');
}