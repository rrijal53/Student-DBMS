<html>
<head>
<style>
legend{font-family:verdana;font-weight:bold;color:red}
table {
    border-collapse: collapse;
}

th,td{
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
<script src="jquery.min.js"></script>
</head>
<body bgcolor="#d2d2d2">
<fieldset>
			<legend>
			Student Information
			</legend>
<?php
$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
$sql="SELECT * FROM STUDENT";
$result = mysqli_query($con,$sql);
echo "<table>
<tr>
<th>STUDENT ID</th>
<th>STUDENT NAME</th>
<th>PIPEDRIVE ID</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
	echo "<td>".$row['sid']."</td>";
    echo "<td>" . $row['student_name'] . "</td>";
	echo "<td>" .$row['pipedrive_id'] . "</td>";
	echo "<td><a href=\"edit_student.php?q=".$row['sid']."&name=".$row['student_name']."&id=".$row['pipedrive_id']."\"/>Edit</a>";
	echo "<td><a href=\"delete_student.php?q=".$row['sid']."\"/>Delete</a>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</fieldset>
			
</body>
</html>