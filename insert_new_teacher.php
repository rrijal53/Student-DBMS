<!DOCTYPE html>
<html>
	<head>
		<title>Data Entry</title>
		<link rel = "stylesheet" style = "text/css" href = "external.css"/>
		
	</head>
	<body>
		<h1 style = "font-size:30px;">New Teacher Entry Form</h1>
		<hr/><hr/>
		<form name = "class_info" action = "#" method = "POST">
			<fieldset>
			<legend>Enter Details of Teacher</legend>
			<table  border="0">
				<tr>
					<td>Teacher Name:</td>
					<td><input type= "text" name = "teachername"  size = "20" id = "name" /></td>
					<td id = "name_err" style="font-family:mtcorsva;font-style:italic;color:red;"></td>
				</tr>
				<tr>
					<td>PipeDrive ID:</td>
					<td><input type="text" name="ppid"/>
						</td>
					</tr>
				
					<td ></td>
					<td><input type = "submit" name = "submit" value = "Add Record" />
					<input type = "reset" name = "clear" value = "Clear" /></td>
				</tr>
			</table>
		</fieldset>
	</body>
</html>
<?php
if (isset($_POST['submit']))
{
$teachername=$_POST['teachername'];
$ppid=$_POST['ppid'];
if(isset($teachername)&&isset($ppid))
{
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
mysqli_select_db($con,"pipedrive");
$query="INSERT INTO teacher(teacher_name,pipedrive_id) values('".$teachername."','".$ppid."')";
$a=mysqli_query($con,$query);
if($a)
echo "NEW TEACHER ".$teachername." ADDED. ";
}
}else
	

?>