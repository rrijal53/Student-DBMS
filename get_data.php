<html>
<head>
<link rel = "stylesheet" style = "text/css" href = "external.css"/>	
<style>
</style>
<script>
function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
           
            xmlhttp = new XMLHttpRequest();
        } else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","getuser.php?q="+str,true);
        xmlhttp.send();
    }
}
</script>
</head>
<body>

			<h1 style = "font-size:30px;">Student Information System</h1>
			<hr/><hr/>
			<fieldset><legend></legend>
<form>
<h2>Student Name: <select name="users" onchange="showUser(this.value)">
 echo <?php


$con = mysqli_connect('localhost','root','','pipedrive');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"pipedrive");
$sql="SELECT sid,student_name FROM STUDENT";
$result = mysqli_query($con,$sql);

while($row = mysqli_fetch_array($result)) {
	echo '<OPTION value="'.$row['sid'].'">';
	echo $row['student_name'] . "</OPTION>";
   
}
echo "</table>";
mysqli_close($con);
?>
  </select></h2>
  <fieldset>
</form>
<br>
<div id="txtHint"><b>Person info will be listed here...</b></div>

</body>
</html>