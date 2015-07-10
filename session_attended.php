<html>
<head>
<title>Session Attended</title>
<link rel = "stylesheet" style = "text/css" href = "external.css"/>	
</head>
<body bgcolor="#d2d2d2">
<form action="insert.php" method="POST">
<h2>Student Name:</h2>
<select name="stdName" id="stdname">
<?php
	$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
$query="select student_name,sid FROM student";
$result=mysqli_query($con,$query);
while($row=mysqli_fetch_array($result))
{
	echo '<OPTION value="'.$row['sid'].'">';
	echo $row['student_name'] . "</OPTION>";
}
?>
</select><br/>
	<?php 
	$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
	$query="SELECT masterclass.classname,classrun.crid,classrun.location,classrun.start_date FROM masterclass inner join classrun where classrun.mcid=masterclass.mcid";
	$result=mysqli_query($con,$query);
	while($row1=mysqli_fetch_array($result))
	{
	echo '<input type="checkbox" name="chkbox[]" value="'.$row1['crid'].'"/>';
	echo $row1['classname']."(".$row1['start_date'].")" ;
	echo "<hr/>";
	}
	
	?>
	<input type="submit" name="submit" value="Add"/><input type="reset" value="clear" name="clear"/>
	</form>
</body>
</html>
