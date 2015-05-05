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
<h3 class="text-danger"><strong><i class="fa fa-envelope"></i> Message Details</strong></h3>
<hr>

        <div class="row" id="message" style="display: none">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-envelope"></i> Message Details</div>
                    <div class="panel-body">
                        <form class="form-horizontal" method="post" action="sendmessage.php">
                            <div class="form-group">
                                <div class="col-md-2"><h5 class="text-danger"><strong>To:</strong></h5></div>
                                <div class="col-md-8"><input type="text" name="receiver" id="auto" class="form-control" placeholder="Search students lastname" required></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2"><h5 class="text-danger"><strong>From:</strong></h5></div>
                                <div class="col-md-8"><input type="text" name="sender" class="form-control" value="<?php echo $_SESSION['fullname'] ?>" required readonly style="background-color: #ffffff"></div>
                            </div>
                            <?php
                            $Today = date('y:m:d');
                            $new = date('l, F d, Y', strtotime($Today));
                            ?>
                            <div class="form-group">
                                <div class="col-md-2"><h5 class="text-danger"><strong>Date:</strong></h5></div>
                                <div class="col-md-8"><input type="text" name="date" class="form-control" value="<?php echo $new ?>" required readonly style="background-color: #ffffff"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2"><h5 class="text-danger"><strong>Message:</strong></h5></div>
                                <div class="col-md-8"><textarea cols="8" name="message" rows="10" class="form-control"></textarea></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-3"></div>
                                <div class="col-md-7"><button class="btn btn-primary btn-group-lg col-sm-8" type="submit" name="submit"><i class="fa fa-send"></i> Send</button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#inbox"><i class="fa fa-inbox"></i> Inbox</a></li>
    </ul>
    <div class="tab-content">
        <div id="inbox" class="tab-pane fade in active">
            <br>
            <table class="table" id="example">
                <thead style="font-size: 13px" class="text-danger">
                <th width="150">Sender</th>
                <th width="200">Date</th>
                <th>Message</th>
                <th width="100">Action</th>
                </thead>
                <?php
                $sql = "SELECT ID, Receiver, Sender, DATE, Message from message_details where RECEIVER = '".$_SESSION['fullname']."'";
                $dbh = $conn->prepare($sql);
                $dbh->execute();
                if($dbh->rowCount(PDO::FETCH_NUM) == 0){
                    echo '<td colspan="4"><div class="alert alert-info"><i class="fa fa-info"></i> <strong>Your Message is Empty.</strong></div> </td>';
                }
                while($row = $dbh->fetch(PDO::FETCH_ASSOC)){
                ?>
                <tr>
                <td><?php echo $row['Sender'] ?></td>
                <td><?php echo $row['DATE'] ?></td>
                <td><?php echo substr($row['Message'], 0 , 60) ?></td>
                <td>
                    <a href="viewmessage.php?id=<?php echo $row['ID']?>" data-placement="top" data-toggle="tooltip" title="View Message" class="btn btn-info tip-top"><i class="fa fa-envelope"></i> </a>
                    <a href="#" id="<?php echo $row['ID']?>" data-placement="top" data-toggle="tooltip" title="Delete Message" class="delbutton btn btn-danger tip-top"><i class="fa fa-trash-o"></i> </a>
                </td>
                </tr>
                <?php } ?>
            </table>
        </div>
    </div>
        </div>
<?php require_once('footer.php')?>
