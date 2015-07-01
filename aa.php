<?php
if(isset($_GET['Submit']))
{
							
							$con = mysqli_connect('localhost','root','','pipedrive');
							if (!$con) {
								die('Could not connect: ' . mysqli_error($con));
							}
							$chkbox=$_GET['clsname'];
							mysqli_select_db($con,"pipedrive");
							for($i=0;$i<sizeof($chkbox);$i++){
							$query="INSERT INTO classattended (sid,crid) values('".$q."','".$chkbox[$i]."')";
							$a=mysqli_query($con,$query);
							if($a)
							echo "Bhayo";
							else
							echo "Bhayana";
}
}
?>