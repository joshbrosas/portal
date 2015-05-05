<?php
session_start();
if($_SESSION['username'] == "" || $_SESSION['password'] == ''){
    header("location: ../index.php");
}
require_once ('../config.php');
require_once('inhead.php');
require_once('innavi.php');
?>
<div id="content1">
<div class="alert alert-success"><strong>Welcome
        <?php
        $sql= $conn->query("SELECT LASTNAME, FIRSTNAME FROM student_details WHERE STUDENT_ID = '".$_SESSION['username']."'");
        while($row = $sql->fetch(PDO::FETCH_ASSOC)){
            echo $row['LASTNAME'] .', '. $row['FIRSTNAME'];
        }
        ?>
        !</strong>
    <div class="pull-right"><strong>
            <?php
            echo date('l, F j, Y');
            ?>
        </strong>
    </div></div>
<hr>
<h3><strong>Student Details:</strong></h3>
<hr>
<img src="images/students.jpg" style="margin-left: 15%">
<h3><strong>Students</strong></h3>
<hr>
<p id="pf">
    STI gears its students with the necessary skills and technical know-how’s that help them succeed in their future endeavors.
    At the same time, STI complements these with various school services with the general objective of ensuring that the needs of students are duly addressed.
    The specific objectives of these student services offices in the schools are:

<h3><strong>Student Records</strong></h3>
<hr>
<p id="pf">
    To maintain accurate student academic and financial records and preserve the confidentiality and ethical standing of these records.

    To maintain all official student records, the administration of registration activities, the distribution of class schedule confirmations, grade reports, and graduation/diploma related services.
</p>
<h3><strong>Earn While You Learn Program</strong></h3>
<hr>
<p id="pf">

    To provide financial support to students who want to continue their studies by assisting them in finding work and earn for their living allowance and tuition.

    To instill in the students the value of self-discipline and perseverance so that they can pursue part-time jobs in business corporations.


</p>
</div>
<?php
require_once('footer.php');
?>
