<?php
require_once ('../config.php');
?>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="images/stilogo2.png" class="logo" title="STI Online Gram System"></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav nav-pills pull-left" id="nav">
                <li><a href="dashboard"><i class="fa fa-home fa-fw" data-toogle="tooltip" data-placement="bottom" title="Home"></i> Home</a></li>
                <li class="divider"></li>
                <li><a href="details"><i class="fa fa-user fa-fw"></i> Students Details</a></li>
                <li class="divider"></li>
                <li><a href="viewgrades"><i class="fa fa-file-text fa-fw"></i>View Grades</a></li>
                <li class="divider"></li>
                <li><a href="viewattendance"><i class="fa fa-check-circle fa-fw"></i>View Attendance</a></li>
                <li class="divider"></li>
                <?php
                $sql = "select COUNT(*) FROM message_details where Receiver = '".$_SESSION['fullname']."'";
                $dbh = $conn->prepare($sql);
                $dbh->execute();
                $row = $dbh->fetch(PDO::FETCH_NUM)
                ?>
                <li class="active"><a href="message"><i class="fa fa-envelope fa-fw"></i>Message<span class="active badge"><?php echo $row[0] ?></span></a></li>
                <li class="divider"></li>


            </ul>


            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><i class="fa fa-user"></i> <?php echo $_SESSION['fullname'] ?></a></li>
                <li><a href="logout.php"><i class="fa fa-power-off fa-fw"></i>Logout</a></li>

            </ul>
        </div>
    </div>
</div>



