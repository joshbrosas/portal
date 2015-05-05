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
            <label>Select Subject:</label>
            <select name="subj" class="form-control">
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
            <button name="submit" class="btn btn-primary"><i class="fa fa-save"></i> Show Data</button>
        </div>
    </form>


    <br>
    <div class="panel panel-primary">
        <div class="panel-heading">Attendance Details</div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <th>Semestral Period</th>
                    <th>Total Days of Class</th>
                    <th>Total Days of Present</th>
                    <th>Total Days of Absent</th>
                    <th>Remarks</th>
                    </thead>
                    <?php
                    $subject = $_POST['subj'];
                    require_once('../config.php');
                    $sql = "SELECT SEMESTRAL_PERIOD, SUBJECT, CLASS, PRESENT, ABSENT, REMARKS FROM attendance_details where STUDENT_ID = '".$_SESSION['username']."' AND SUBJECT = '$subject'";
                    $dbh = $conn->prepare($sql);
                    $dbh->execute();
                    if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                        echo '<td colspan="5"><div class="alert alert-danger"><strong>This student have no attendance yet.Please consult your teacher.</strong></div> </td>';
                    }
                        while($row = $dbh->fetch(PDO::FETCH_ASSOC)){

                        ?>
                    <tr>
                        <td><?php echo $row['SEMESTRAL_PERIOD'] ?> </td>
                        <td><?php echo $row['CLASS'] ?> </td>
                        <td><?php echo $row['PRESENT'] ?> </td>
                        <td><?php echo $row['ABSENT'] ?> </td>
                        <td><?php echo $row['REMARKS'] ?> </td>
                    </tr>
                            <?php } ?>
                </table>
            </div>
        </div>
    </div>



</div>
<?php require_once('footer.php');

?>