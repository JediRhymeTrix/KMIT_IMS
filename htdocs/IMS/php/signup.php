<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Feb-17
 * Time: 11:23 AM
 */

//include('config.php');


$con = mysqli_connect('localhost', 'root', '', 'test');

if(isset($_POST['email'])&&(isset($_POST['pwd']))){

    $name = $_POST['name'];
    $role = $_POST['role'];
    $empid = $_POST['empid'];
    $phone = $_POST['ph'];
    $email = $_POST['email'];
    $pwd = $_POST['pwd'];

    $query = mysqli_query($con,"select * from personnel where email='$email' or pid='$empid'");
    $num = mysqli_num_rows($query);
    if($num==0) {
        $query = mysqli_query($con, "insert into personnel (pid, pname, email, role, phone) values ('$empid','$name','$email','$role','$phone') ");
        $query = mysqli_query($con, "insert into login_table (email, userName, password, role) values ('$email','$name','$pwd','$role') ");
        if($role == 'sysadmin') {
            $labs = $_POST['labs'];
            $query = mysqli_query($con, "insert into systemadmin (id, Lab_nos) values ('$empid','$labs')");
        }
        echo json_encode(array('action'=>"SHOW_SUCCESS"));
    }
    else {
        echo json_encode(array('action'=>"SHOW_ERROR", 'message'=>"User already exists!"));
    }


}