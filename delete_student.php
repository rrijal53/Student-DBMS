
<?php 
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
mysqli_select_db($con,"pipedrive");
$query="DELETE FROM student where sid=".$_GET['q'];
$a=mysqli_query($con,$query);
if($a)
echo " Deleted";
 header("Location:table_students.php");
	

?>