<?php
include "request_formatter.php";
$value=1;
$id=4;
if($value==1)
{
    $qry="update movement set Remainder=true where req_id='".$id."';";
    mysqli_query($conn,$qry);
}
$qry="select req_id from movement where Remainder=true;";
$result1=mysqli_query($conn,$qry);
$len=mysqli_num_rows($result1);

function getMessage()
{
    $temp=array();
    for($i=0;$i<$len;$i++)
    {
        $row1=mysqli_fetch_assoc($result1);
        $date=date("Y-m-d");
        date_default_timezone_set('Asia/kolkata');
        $time=date("H-i-sa");

        $qry="select movement_date,movement_time from movement where req_id='".$row1['req_id']."';";
        $result=mysqli_query($conn,$qry);
        $row=mysqli_fetch_assoc($result);
        $d=explode("-",$date);
        $t=explode("-",$time);

        $d1=explode("-",$row['movement_date']);
        $t1=explode("-",$row['movement_time']);
        if(d[2]>d1[2])
        {
            $diff_date=$d[2]-$d1[2];
            $diff_hr=$t[0]-$t1[0];
            $diff_hr=($diff_hr>0 ? $diff_hr : -($diff_hr));
            $diff_date=($diff_date>0 ? $diff_date : -($diff_date));
            $diff_min= ($t1[1]>$t[1] ? $t1[1]-$t[1] : $t[1]-$t1[1]);
            $msg="Movement request #" . $row1['req_id'] . " is overdue by " .$diff_date. " days and " . $diff_hr . " hours and " . $diff_min ." minutes." ;
        }
        else
        {
            $diff_date=$d1[2]-$d[2];
            $diff_hr=$t1[0]-$t[0];
            $diff_hr=($diff_hr>0 ? $diff_hr : -($diff_hr));
            $diff_date=($diff_date>0 ? $diff_date : -($diff_date));
            $diff_min= ($t1[1]>$t[1] ? $t1[1]-$t[1] : $t[1]-$t1[1]);
            $msg="Movement request #" . $row1['req_id'] . " is in due by " .$diff_date. " days and " . $diff_hr . " hours and " . $diff_min ." minutes." ;
        }
        $temp[$i]=$msg;
        // $temp1= array($i => $msg);
        // $temp=array_merge($temp,$temp1);
    }
    return $temp;
}

$temp1=getMessage();

?>