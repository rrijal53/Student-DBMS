<html>
<head>
<style>
legend{font-family:verdana;font-weight:bold;color:red}
a{
text-decoration:none;

}
table {
    width: 100%;
    border-collapse: collapse;
}

th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>
<fieldset>
			<legend>
			Student Information
			</legend>
<?php
$q = intval($_GET['q']);

$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
$sql="SELECT student.sid,student.student_name,masterclass.className,classrun.location,classrun.start_date,classattended.remarks,classattended.feedback,classrun.end_date,classrun.end_date FROM student inner join classrun inner join masterclass inner join classattended  WHERE student.sid =classattended.sid and student.sid=".$q."  and classrun.crid=classattended.crid and classrun.mcid=masterclass.mcid";
$result = mysqli_query($con,$sql);
echo "<table>
<tr>
<th>SESSION NAME</th>
<th>START DATE</th>
<th>END DATE</th>
<th>REMARKS</th>
<th>LOCATION</th>
<th>FEEDBACK</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    //echo "<td>" . $row['student_name'] . "</td>";
    echo "<td>" . $row['className'] . "</td>";
    echo "<td>" . $row['start_date'] . "</td>";
	echo "<td>" . $row['end_date']."</td>";
	echo "<td>" . $row['remarks']."</td>";
    echo "<td>" . $row['location'] . "</td>";
	 echo "<td>" .$row['feedback'] . "</td>";
    echo "</tr>";
	
	}
	echo "<td><a href=\"edit_student.php?q=".$q."\"/>Edit</a>";
	echo "<td><a href=\"delete_student.php?q=".$q."\"/>Delete</a>";
	mysqli_close($con);
?>

</fieldset>
			
</body>
</html>