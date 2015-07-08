<!DOCTYPE html>

<?php
$sid=$_GET['q'];
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
	}
mysqli_select_db($con,"pipedrive");
$query="SELECT * FROM student where sid=".$sid;
$result=mysqli_query($con,$query);
while($row = mysqli_fetch_array($result))
{
		$sname=$row['student_name'];
		$ppid=$row['pipedrive_id'];		
}	

?>
<html>
	<head>
		<title>Data Entry</title>
		<link rel = "stylesheet" style = "text/css" href = "external.css"/>
		
	</head>
	<body>
		<h1 style = "font-size:30px;">Student Entry Form</h1>
		<hr/><hr/>
		<form name = "class_info" action = "#" method = "POST">
			<fieldset>
			<legend>Enter Details of Student</legend>
				<table><tr><td>Name:</td><td><input type="text" name="stdName" value="<?php echo $sname;?>"></td></tr>
				<tr><td>PipeDrive ID:</td><td><input type="number" name="ppid" value="<?php echo $ppid;?>"></td></tr>
			</fieldset>
	</body>
</html>
<?php
if (isset($_POST['submit']))
{
$stdname=$_POST['stdname'];
$ppid=$_POST['ppid'];
if(isset($stdname)&&isset($ppid))
{
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
	}
mysqli_select_db($con,"pipedrive");
$query="UPDATE student SET student_name='".$stdname."', pipedrive_id='".$ppid."' where sid=".$_GET['q'];
$a=mysqli_query($con,$query);
if($a)
echo $stdname." UPDATED";
}
}
	

?>