<?php
/**
 * Created by PhpStorm.
 * User: jrt
 * Date: 27-Apr-17
 * Time: 4:44 PM
 */

$host = 'localhost';
$user = 'root';
$pass = '';
$db_name = 'test';

$con = mysqli_connect($host, $user, $pass, $db_name) or die(mysqli_error());;