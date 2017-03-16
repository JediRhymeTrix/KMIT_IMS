<?php
/**
 * Created by PhpStorm.
 * User: Vedant
 * Date: 06-Feb-17
 * Time: 11:32 AM
 */

session_start();

$con = mysqli_connect('localhost', 'root', '', 'test');

if( isset($_SESSION['emp_id'], $_SESSION['role']) ) {
    // echo "emp_id = ".$_SESSION['emp_id']."<br>role = ".$_SESSION['role'];

    $role = $_SESSION['role'];

    switch( $role )
    {
        case 'sysadmin': header( 'Location: pages/sysadmin_dashboard.html' ) ;
            break;
        case 'stockguy': header( 'Location: pages/stockguy_dashboard.html' ) ;
            break;
        case 'mgmnt': header( 'Location: pages/admin_dashboard.html' ) ;
    }
}