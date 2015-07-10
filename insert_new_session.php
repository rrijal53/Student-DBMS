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
					<td><select name="classname"><?php


							$con = mysqli_connect('localhost','root','','pipedrive');
							if (!$con) {
								die('Could not connect: ' . mysqli_error($con));
							}

							mysqli_select_db($con,"pipedrive");
							$sql="SELECT mcid,className,AgeGroup FROM masterclass";
							$result = mysqli_query($con,$sql);
							while($row = mysqli_fetch_array($result)) {
								echo '<option value="'.$row['mcid'].'">';
								echo $row['className'] ."(".$row['AgeGroup']. ")</option>";
   
									}
									
									mysqli_close($con);
?></select></td>
	<tr><td>Location:</td><td><input type="text" name="location"></td></tr>
	<tr><td>Start Date:</td><td><input type="date"   name="sdate"></td>
				</tr>
	<tr><td>End Date:</td><td><input type="date" name="edate"></td>
		<tr><td>Pipedrive Product Code:</td><td><input type="text" name="ppc"></td>
				</tr>
	<tr><?php
							for($i=1;$i<=4;$i++)
							{
							echo "<td>Teacher".$i."</td>";
							echo "<td><select name='teacher".$i."'>";
							$con = mysqli_connect('localhost','root','','pipedrive');
							if (!$con) {
								die('Could not connect: ' . mysqli_error($con));
							}

							mysqli_select_db($con,"pipedrive");
							$sql="SELECT TID,TEACHER_NAME FROM teacher";
							$result = mysqli_query($con,$sql);
							echo '<option value=null>____</option>';
							while($row = mysqli_fetch_array($result)) {
								echo '<option value="'.$row['TID'].'">';
								echo $row['TEACHER_NAME'] . "</option>";
   
									}
									echo "</select></td>";
									mysqli_close($con);
}?></td>
				<tr>
					<td><input type = "submit" name = "submit" value = "Add Record" /></td><td><input type = "reset" name = "clear" value = "Clear" /></td>
				</tr>
			</table>
		</fieldset>
	</body>
</html>



<?php
if (isset($_POST['submit']))
{	$mcid=$_POST['classname'];
		$location=$_POST['location'];
		$sdate=$_POST['sdate'];
		$edate=$_POST['edate'];
		$ppc=$_POST['ppc'];
		$tid1=$_POST['teacher1'];
		$tid2=$_POST['teacher2'];
		$tid3=$_POST['teacher3'];
		$tid4=$_POST['teacher4'];
	if(isset($mcid)&&isset($location)&&isset($sdate)&&isset($edate)&&isset($ppc)&&$mcid!=""&&$location!="")
	{
		
		$con = mysqli_connect('localhost','root','','pipedrive');
		if (!$con) {
			die('Could not connect: ' . mysqli_error($con));
				}
		mysqli_select_db($con,"pipedrive");
		$query="INSERT INTO classrun (mcid,location,start_date,end_date,product_code,tid1,tid2,tid3,tid4) values('".$mcid."','".$location."','".$sdate."','".$edate."','".$ppc."','".$tid1."','".$tid2."','".$tid3."','".$tid4."')";
		$a=mysqli_query($con,$query);
		
	}
}
?>