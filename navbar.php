<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="images/stilogo2.png" HEIGHT="40PX" STYLE="margin-top :-10px" ></a>

        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Home</a></li>
                 <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
            </ul>
            <div class="pull-right" ID="DATE">
                <i class="icon-calendar icon-large"></i>
                <?php
                $Today = date('y:m:d');
                $new = date('l, F d, Y', strtotime($Today));
                echo $new;
                ?>
            </div>


        </div><!--/.nav-collapse -->
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel"><img src="images/stilogo2.png"> STI Online GRAM System</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" id="loginForm"  method="post" action="login.php">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-5 ">Student Number :</label>
                        <div class="col-sm-10 control-label">
                            <input type="text" class="form-control " id="inputEmail3" name="username" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-5">Password :</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary  btn-group-lg col-sm-5">Login</button>


                        </div>
                    </div>
                </form>

            </div>


        </div>
    </div>
</div>



