<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Feb-17
 * Time: 11:23 AM
 */

//include('config.php');

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['email'])&&(isset($_POST['password']))){

    if($_POST['password']!=""){
        $query = mysqli_query($con,"select * from login_table where email='".$_POST['email']."' and password='".$_POST['password']."'");
        $num = mysqli_num_rows($query);
        if($num==1){
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'pwd found');

            $result = mysqli_fetch_array($query,MYSQLI_ASSOC);
            $action = "SHOW_SUCCESS";

            $query = mysqli_query($con,"select pid from personnel where email='".$result['email']."'");
            $emp_id = mysqli_fetch_assoc($query)['pid'];

            $_SESSION['emp_id'] = $emp_id;
            $_SESSION['role'] = $role = $result['role'];

            switch( $role )
            {
                case 'sysadmin': $loc = 'pages/sysadmin_dashboard.html';
                    break;
                case 'stockguy': $loc = 'pages/stockguy_dashboard.html';
                    break;
                case 'mgmnt': $loc = 'pages/admin_dashboard.html';
                    break;
                case 'admin': $loc = 'pages/admin_dashboard.html';
                    break;
                default: $loc="index.html";
                    break;
            }

            $msg = "Succesfully Logged in. Thank You..";
            echo json_encode(array('action'=>$action,'msg'=>$msg, "loc"=>$loc));
        }else{
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'pwd not found');

            $action = "SHOW_ERROR";
            $msg  = "The email and password you entered don't match. ";
            echo json_encode(array('action'=>$action,'msg'=>$msg));
        }
    }else{
        $myfile = fopen("testfile.txt", "w");
        fwrite($myfile, 'pwd error');

        $action = "SHOW_ERROR";
        $msg  = "Please enter your  Password.";
        echo json_encode(array('action'=>$action,'msg'=>$msg));
    }

}