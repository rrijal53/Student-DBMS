<?php
$sid=$_POST['stdName'];
$crid=$_POST['chkbox'];
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
for($i=0;$i<sizeof($crid);$i++)
{
$query="INSERT INTO classattended (sid,crid) values(".$sid.",".$crid[$i].")";
$a=mysqli_query($con,$query);
}
if($a)
echo "successfully inserted";
}
?>