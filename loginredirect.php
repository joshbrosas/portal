<?php
session_start();
include('header.php');
?>
<hr>
<?php
if(isset($_SESSION['FAILED'])){
    echo '<br><div class="alert alert-danger" font-size:12px;">';
    echo $_SESSION['FAILED'];
    unset($_SESSION['FAILED']);
    echo '</div>';
}?>


    <form class="form-horizontal"  method="post" action="login.php">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Student ID :</label>
            <div class="col-sm-4">
                <input type="text" class="form-control " id="inputEmail3" name="username" placeholder="Username">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password :</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary btn-group-lg ">Login</button>
                </div>
        </div>
        </form>

<?php
include('footer.php');
?>