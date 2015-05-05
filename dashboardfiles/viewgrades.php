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
<h3 class="text-danger"><strong><i class="fa fa-list"></i> Grades Details</strong></h3>
<hr>
<div class="alert alert-info"><strong><i class="fa fa-info-circle"></i> If you have a question regarded to your grades please contact your instructor.</strong></div>
<div class="panel panel-primary">
    <div class="panel-heading">Student Grades</div>
    <div class="panel-body">

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#prelim">Prelim</a></li>
            <li><a data-toggle="tab" href="#midterm">Midterm</a></li>
            <li><a data-toggle="tab" href="#prefinal">Prefinals</a></li>
            <li><a data-toggle="tab" href="#final">Finals</a></li>
        </ul>

        <div class="tab-content">
            <div id="prelim" class="tab-pane fade in active">
              <div class="table-responsive">
                  <br>
                  <table class="table table-bordered">
                      <thead style="font-size: 12px" class="text-danger">
                      <th>Code</th>
                      <th>Subject</th>
                      <th>Unit</th>
                      <th>Grades</th>
                      <th>Gen Ave</th>
                      <th>REMARKS</th>
                      </thead>
                      <?php
                      require_once('../config.php');
                      $sql = "SELECT a.STUDENT_ID,a.SUBJECT, a.GRADE,a.SEMESTRAL_PERIOD, a.GEN_AVE, a.REMARKS, b.SUBJECT_TITLE, b.UNIT from grades_details a
                       INNER JOIN subject_details b on a.SUBJECT = b.subject_code where a.STUDENT_ID = '".$_SESSION['username']."' and a.SEMESTRAL_PERIOD = 'PRELIM' ";
                      $dbh = $conn->prepare($sql);
                      $dbh->execute();

                          if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                              echo '<td colspan="6"><div class="alert alert-danger"><strong>This student have no grades!</strong></div> </td>';
                          }
                      while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
                      ?>
                      <tr style="font-size: 10px">
                          <td><?php echo $row['SUBJECT']; ?></td>
                          <td><?php echo $row['SUBJECT_TITLE']; ?></td>
                          <td><?php echo $row['UNIT']; ?></td>
                          <td><?php echo $row['GRADE']; ?></td>
                          <td><?php echo $row['GEN_AVE']; ?></td>
                          <td><?php echo $row['REMARKS']; ?></td>
                      </tr>
                      <?php } ?>
                  </table>


              </div>
            </div>
            <div id="midterm" class="tab-pane fade">
                <div class="table-responsive">
                    <br>
                    <table class="table table-bordered">
                        <thead style="font-size: 12px" class="text-danger">
                        <th>Code</th>
                        <th>Subject</th>
                        <th>Unit</th>
                        <th>Grades</th>
                        <th>Gen Ave</th>
                        <th>REMARKS</th>
                        </thead>
                        <?php
                        require_once('../config.php');
                        $sql = "SELECT a.STUDENT_ID,a.SUBJECT, a.GRADE,a.SEMESTRAL_PERIOD, a.GEN_AVE, a.REMARKS, b.SUBJECT_TITLE, b.UNIT from grades_details a
                       INNER JOIN subject_details b on a.SUBJECT = b.subject_code where a.STUDENT_ID = '".$_SESSION['username']."' and a.SEMESTRAL_PERIOD = 'MIDTERM' ";
                        $dbh = $conn->prepare($sql);
                        $dbh->execute();
                        if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                            echo '<td colspan="6"><div class="alert alert-danger"><strong>This student have no grades!</strong></div> </td>';
                        }
                        while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
                            ?>
                            <tr style="font-size: 13px">
                                <td><?php echo $row['SUBJECT']; ?></td>
                                <td><?php echo $row['SUBJECT_TITLE']; ?></td>
                                <td><?php echo $row['UNIT']; ?></td>
                                <td><?php echo $row['GRADE']; ?></td>
                                <td><?php echo $row['GEN_AVE']; ?></td>
                                <td><?php echo $row['REMARKS']; ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                </div>
        </div>
            <div id="prefinal"  class="tab-pane fade">
                <div class="table-responsive">
                    <br>
                    <table class="table table-bordered">
                        <thead style="font-size: 12px" class="text-danger">
                        <th>Code</th>
                        <th>Subject</th>
                        <th>Unit</th>
                        <th>Grades</th>
                        <th>Gen Ave</th>
                        <th>REMARKS</th>
                        </thead>
                        <?php
                        require_once('../config.php');
                        $sql = "SELECT a.STUDENT_ID,a.SUBJECT, a.GRADE,a.SEMESTRAL_PERIOD, a.GEN_AVE, a.REMARKS, b.SUBJECT_TITLE, b.UNIT from grades_details a
                       INNER JOIN subject_details b on a.SUBJECT = b.subject_code where a.STUDENT_ID = '".$_SESSION['username']."' and a.SEMESTRAL_PERIOD = 'PREFINAL' ";
                        $dbh = $conn->prepare($sql);
                        $dbh->execute();
                        if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                            echo '<td colspan="6"><div class="alert alert-danger"><strong>This student have no grades!</strong></div> </td>';
                        }
                        while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
                            ?>
                            <tr style="font-size: 13px">
                                <td><?php echo $row['SUBJECT']; ?></td>
                                <td><?php echo $row['SUBJECT_TITLE']; ?></td>
                                <td><?php echo $row['UNIT']; ?></td>
                                <td><?php echo $row['GRADE']; ?></td>
                                <td><?php echo $row['GEN_AVE']; ?></td>
                                <td><?php echo $row['REMARKS']; ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                </div>
            </div>
            <div id="final" class="tab-pane fade">
                <div class="table-responsive">
                    <br>
                    <table class="table table-bordered">
                        <thead style="font-size: 12px" class="text-danger">
                        <th>Code</th>
                        <th>Subject</th>
                        <th>Unit</th>
                        <th>Grades</th>
                        <th>Gen Ave</th>
                        <th>REMARKS</th>
                        </thead>
                        <?php
                        require_once('../config.php');
                        $sql = "SELECT a.STUDENT_ID,a.SUBJECT, a.GRADE,a.SEMESTRAL_PERIOD, a.GEN_AVE, a.REMARKS, b.SUBJECT_TITLE, b.UNIT from grades_details a
                       INNER JOIN subject_details b on a.SUBJECT = b.subject_code where a.STUDENT_ID = '".$_SESSION['username']."' and a.SEMESTRAL_PERIOD = 'FINAL' ";
                        $dbh = $conn->prepare($sql);
                        $dbh->execute();
                        if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                            echo '<td colspan="6"><div class="alert alert-danger"><strong>This student have no grades!</strong></div> </td>';
                        }
                        while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
                            ?>
                            <tr style="font-size: 13px">
                                <td><?php echo $row['SUBJECT']; ?></td>
                                <td><?php echo $row['SUBJECT_TITLE']; ?></td>
                                <td><?php echo $row['UNIT']; ?></td>
                                <td><?php echo $row['GRADE']; ?></td>
                                <td><?php echo $row['GEN_AVE']; ?></td>
                                <td><?php echo $row['REMARKS']; ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>


</div>

<?php
require_once ('footer.php');

?>

