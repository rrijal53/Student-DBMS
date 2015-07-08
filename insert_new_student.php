<!DOCTYPE html>
<html>
	<head>
		<title>Data Entry</title>
		<link rel = "stylesheet" style = "text/css" href = "external.css"/>
		
	</head>
	<body>
		<h1 style = "font-size:30px;">New Student Entry Form</h1>
		<hr/><hr/>
		<form name = "class_info" action = "#" method = "POST">
			<fieldset>
			<legend>Enter Details of Student</legend>
			<table  border="0">
				<tr>
					<td>Student Name:</td>
					<td><input type= "text" name = "stdname"  size = "20"/></td>
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
$stdname=$_POST['stdname'];
$ppid=$_POST['ppid'];
if(isset($stdname)&&isset($ppid)&&$stdname!="")
{
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
mysqli_select_db($con,"pipedrive");
$query="INSERT INTO student(student_name,pipedrive_id) values('".$stdname."','".$ppid."')";
$a=mysqli_query($con,$query);
if($a)
echo "NEW Student ".$stdname." ADDED. ";
}
}
	

?>