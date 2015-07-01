<!DOCTYPE html>
<html>
	<head>
		<title>Data Entry</title>
		<link rel = "stylesheet" style = "text/css" href = "external.css"/>
		
	</head>
	<body>
		<h1 style = "font-size:30px;">New Session Entry Form</h1>
		<hr/><hr/>
		<form name = "class_info" action = "#" method = "POST">
			<fieldset>
			<legend>Enter Details of Class</legend>
			<table  border="0">
				<tr>
					<td>Class Name:</td>
					<td><input type= "text" name = "classname"  size = "20" id = "name" /></td>
					<td id = "name_err" style="font-family:mtcorsva;font-style:italic;color:red;"></td>
				</tr>
				<tr>
					<td>Age Group:</td>
					<td><select name="ageGroup">
							<option value="10-14">TEN TO FOURTEEN</option>
							<option value="8-10">EIGHT TO TEN</option>
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
$name=$_POST['classname'];
$ageGroup=$_POST['ageGroup'];
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
mysqli_select_db($con,"pipedrive");
$query="INSERT INTO masterclass(ClassName,AgeGroup) values('".$name."','".$ageGroup."')";
$a=mysqli_query($con,$query);
if($a)
echo "NEW MASTERCLASS ".$name." ADDED FOR AGE GROUP".$ageGroup;
}



?>