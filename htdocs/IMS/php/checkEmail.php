<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 04-Feb-17
 * Time: 11:23 AM
 */

include 'config.php';    //    connecting to database

if(!$con)
{
    $myfile = fopen("testfile.txt", "w");
    fwrite($myfile, 'db error');
}

if(isset($_POST['email'])){

    if($_POST['email']!=""){
        $query = mysqli_query($con,"select * from login_table where email='".$_POST['email']."'");
        $num = mysqli_num_rows($query);
        if($num==1){
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'found');

            $result = mysqli_fetch_array($query,MYSQLI_ASSOC);

            $query = mysqli_query($con,"select * from roles where role ='".$result['role']."'");
            $res = mysqli_fetch_array($query,MYSQLI_ASSOC);

            $action = "SHOW_SUCCESS";
            $userName = $result['userName'];
            $email = $result['email'];
            $role = $result['role'];
            $role_name = $res['role_name'];
            $img = $res['image'];
            $imagePath = "images/".$img;
            $image =  '<img src="'.$imagePath.'" alt="" class="img-circle" height="100">';
            echo json_encode(array('action'=>$action,'userName'=>$userName,'email'=>$email, 'role'=>$role, 'role_name'=>$role_name, 'image'=>$image));
        }else{
            $myfile = fopen("testfile.txt", "w");
            fwrite($myfile, 'not found');

            $action = "SHOW_ERROR";
            $error_msg  = "Sorry, we don't recognize that email. ";
            echo json_encode(array('action'=>$action,'error_msg'=>$error_msg));
        }
    }else{
        $action = "SHOW_ERROR";
        $error_msg  = "Please enter your email.";
        echo json_encode(array('action'=>$action,'error_msg'=>$error_msg));
    }

}
