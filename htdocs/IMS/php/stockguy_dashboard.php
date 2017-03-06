<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Feb-17
 * Time: 4:41 PM
 */

//include('config.php');

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_SESSION['emp_id'])){

    $query = mysqli_query($con,"select * from personnel where pid='".$_SESSION['emp_id']."'");
    $num = mysqli_num_rows($query);

    $stock = array();

    $query2 = mysqli_query($con,"select * from stock");

    while ($row = mysqli_fetch_array($query2, MYSQLI_ASSOC)) {
        $stock[$row['type']] = $row['quantity'];
    }

    if($num==1){
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'name found');

        $result = mysqli_fetch_array($query,MYSQLI_ASSOC);

        $name = $result['pname'];

        if(isset($_POST['action'])) {

            echo json_encode(array('name'=>$name, 'stock'=>$stock));

            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'name response sent');
        }

    }else{
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'name fetch error');

    }



} else {
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'session error');
}



