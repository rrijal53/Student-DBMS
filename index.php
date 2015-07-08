<html>
<head>
<style>
div.sidebar
{
	background-color:#a2a2a2;
}
</style>
<link rel = "stylesheet" style = "text/css" href = "elements.css"/>	
	<script src="jquery.min.js"></script>
	<script src="my_js.js"></script>
</head>

<body>
<div class="header">
<img src="karkhana.png" alt="karkhana">
</div>
<div class="tabs">
    <ul class="tab-links">
        <li class="active"><a href="#tab1">Students Information</a></li>
        <li><a href="#tab2">Add New Student</a></li>
        <li><a href="#tab3">Add New Session</a></li>
        <li><a href="#tab4">Add New Teacher</a></li>
		<li><a href="#tab5">Add New Class</a></li>

		</ul>
 
    <div class="tab-content">
        <div id="tab1" class="tab active">
            <p><?php include("get_data.php");?></p>
            
        </div>
 
        <div id="tab2" class="tab">
            <p><?php include("insert_new_student.php");?></p>
                    </div>
 
        <div id="tab3" class="tab">
            <p><?php include("insert_new_session.php");?></p>
                  </div>
 
        <div id="tab4" class="tab">
            <p><?php include("insert_new_teacher.php");?></p>
        </div>
		<div id="tab5" class="tab">
            <p><?php include("insert_masterClass.php");?></p>
        </div>
		
    </div>
</div>
<div class="sidebar">
<a href="session_attended.php" align="center" style="text-decoration:none;float:center;color:black"><h3  style="background-color:#7FB5DA;">Assign session</h3></a>
<a href="table_students.php" align="center" style="text-decoration:none;display:block;float:center;color:black"><h3 style="background-color:#7DB5FA;">Students</h3></a>
<a href="table_session.php" align="center" style="text-decoration:none;display:block;float:center;color:black;"><h3 style="background-color:#7FC5CA;">Sessions</h3></a>

</div>
</body>
</html>