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
    <h3 class="text-danger"><strong><i class="fa fa-envelope"></i> View Message </strong></h3>
    <hr>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-envelope"></i> Message Details</div>
                <div class="panel-body">
                    <?php
                    require_once('../config.php');
                    $id = $_GET['id'];
                    $sql = "SELECT ID, Sender, Receiver, Message from message_details where ID = '$id'";
                    $dbh = $conn->prepare($sql);
                    $dbh->execute();
                    $row = $dbh->fetch(PDO::FETCH_ASSOC);
                    ?>
                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <div class="col-md-2"><h5 class="text-danger"><strong>To:</strong></h5></div>
                            <div class="col-md-8"><label class="text-info"><?php echo $row['Receiver'] ?></label></div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2"><h5 class="text-danger"><strong>From:</strong></h5></div>
                            <div class="col-md-8"><label class="text-info"><?php echo $row['Sender'] ?></label></div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2"><h5 class="text-danger"><strong>Message:</strong></h5></div>
                            <div class="col-md-8"><div class="well" style="word-wrap: break-word"><?php echo $row['Message'] ?></div></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    </div>
<?php require_once('footer.php')?>