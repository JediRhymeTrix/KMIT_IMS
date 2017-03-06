<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 08-Feb-17
 * Time: 11:31 AM
 */

session_start();

if( isset($_POST['action']) ) {
    if( $_POST['action'] == 'logout') {

        echo json_encode(array('status'=>'k'));
        die(session_destroy());
    }
}