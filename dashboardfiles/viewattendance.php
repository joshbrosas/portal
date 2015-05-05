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
    <h3 class="text-danger"><strong><i class="fa fa-calendar-o"></i> Attendance Details</strong></h3>
    <hr>
    <div class="alert alert-info"><strong><i class="fa fa-info-circle"></i> If you have a question regarded to your attendance please contact your instructor.</strong></div>
    <form class="form-inline" method="post" action="sortattendance.php">
        <div class="form-group">

       <select name="subj" id="subj" class="form-control">
           <option selected disabled>Choose Subject</option>
           <?php
           require_once('../config.php');
           $sql = "SELECT STUDENT_ID,SUBJECT_CODE FROM student_subject where STUDENT_ID = '".$_SESSION['username']."'";
           $dbh = $conn->prepare($sql);
           $dbh->execute();
           while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
           ?>

        <option><?php echo $row['SUBJECT_CODE'] ?></option>
               <?php } ?>
        </select>
        <button name="submit" id="show" class="btn btn-primary"><i class="fa fa-save"></i> Show Data</button>
        </div>
    </form>



<br>
<div class="panel panel-primary">
<div class="panel-heading">Attendance Details</div>
<div class="panel-body">
<div class="table-responsive">
<table class="table">
            <thead>
            <th>Month</th>
            <th>Total Days of Class</th>
            <th>Total Days of Present</th>
            <th>Total Days of Absent</th>
            <th>Remarks</th>
            </thead>
    <tr>
        <td colspan="5"><div class="alert alert-danger"><strong><i class="fa fa-warning"></i> Please Select Subject</strong></div> </td>
    </tr>
</table>
</div>
</div>
</div>



</div>
<?php require_once('footer.php');
?>