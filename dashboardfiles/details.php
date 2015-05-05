<?php
session_start();
if($_SESSION['username'] == "" || $_SESSION['password'] == ''){
    header("location: ../index.php");
}
require_once ('../config.php');
require_once ('inhead.php');
require_once ('innavi.php');
?>
<div id="content1">
<h3 class="text-danger"><strong><i class="fa fa-user"></i> Student Details</strong></h3>
<hr>
<?php
$stmt = $conn->prepare("SELECT STUDENT_ID,LASTNAME, FIRSTNAME, MIDDLEINITIAL, COURSE, YEAR, EMAIL FROM student_details where STUDENT_ID = '".$_SESSION['username']."'");
$stmt->execute();
while($row1 = $stmt->fetch(PDO::FETCH_ASSOC)){


?>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="panel panel-info">
            <div class="panel-heading"><i class="fa fa-info-circle"></i> Student Details</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Student ID: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['STUDENT_ID'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Lastname: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['LASTNAME'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Firstname:: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['FIRSTNAME'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Middleinitial: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['MIDDLEINITIAL'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Course: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['COURSE'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Year: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['YEAR'];  ?> </strong></h4></div>
                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3 text-danger"><h4><strong>Email: </strong></h4></div>
                    <div class="col-md-2 "><h4><strong><?php echo $row1['EMAIL']; }  ?> </strong></h4></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php require_once ('footer.php');?>


