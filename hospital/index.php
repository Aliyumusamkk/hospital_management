<!DOCTYPE HTML>
<html>

<head>
    <title>Hospital Management System</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="hms/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/responsiveslides.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>

    <style>
        body {
            height: 100vh;
            background: url("images/slider-image2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
        }
        
        nav {
            background: cornflowerblue;
            height: 60px;
            position: relative;
        }
        
        .title {
            margin-left: 15px;
            padding-top: 20px;
            font-size: 40px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color: whitesmoke;
            font-weight: bold;
        }
        
        nav ul {
            position: relative;
            float: right;
            margin-top: 20px;
            margin-right: 10px;
        }
        
        nav ul li {
            list-style: none;
            display: inline;
            /* margin:10px; */
        }
        
        nav ul a {
            text-decoration: none;
            background: whitesmoke;
            padding: 10px;
            margin: 7px;
            border-radius: 7px;
            color: grey;
        }
        
        nav ul a:hover {
            text-decoration: none;
            background: rgb(196, 182, 194);
            color: cornflowerblue;
        }
        
        .content-grids {
            margin-top: 390px;
            background: rgb(68, 115, 202);
        }
    </style>
    <script>

var picture = document.querySelector("body");
var Isblue = false;
setInterval(function() {
    if (Isblue) {
        picture.style.backgroundImage = "url('/img/background/background7.jpeg')";
        picture.style.backgroundSize = "cover";
    } else {
        picture.style.backgroundImage = "url('/img/background/background8.jpeg')";
        picture.style.backgroundSize = "cover";
    }
    Isblue = !Isblue;
}, 10000);
        // You can also use "$(window).load(function() {"
        $(function() {

            // Slideshow 1
            $("#slider1").responsiveSlides({
                maxwidth: 1600,
                speed: 600
            });
        });
    </script>
</head>

<body>
    <!--start-wrap-->

    <!--start-header-->
    <div class="header">
        <nav>
            <span class="title">Hospital Management System</span>
            <ul>
                <a href="hms/admin/index.php">
                    <li>Admin</li>
                </a>

                <a href="hms/registration.php">
                    <li>User</li>
                </a>

                <a href="contact.php">
                    <li>Contact Us</li>
                </a>
              
                <!-- <a href="" data-toggle="modal" data-target="#myModal">
                    <li>About</li>
                </a> -->
            </ul>
        </nav>
        <!--end-header-->
    </div>
    <div class="clear"> </div>
    <!--start-image-slider---->
    <!-- Trigger the modal with a button -->
    <!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

    <!--End-image-slider---->
    <div class="clear"> </div>
    <div class="content-grids">
        <div class="wrap">
            <div class="section group">


                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/grid-img3.png">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>Receptionist</h3>
                        <div class="button"><span><a href="hms/user-login.php">Click Here</a></span></div>
                    </div>
                </div>

                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/grid-img1.png">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>Doctors Login</h3>
                        <div class="button"><span><a href="hms/doctor/">Click Here</a></span></div>
                    </div>
                </div>


                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/grid-img2.png">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>pharmacist Login</h3>

                        <div class="button"><span><a href="hms/pharmacy/">Click Here</a></span></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap">
    </div>
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"> <b>About Developer</b></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-4">
                            <img src="images/me.jpg" alt="" srcset="" style="width: 400px; height: 170px;">
                        </div>
                        <div class="col-sm-8">
                            <b>OLA ADEKUNLE</b>
                            <P>Bayero University Kano</P>
                            <p>Faculty Of Engeenering</p>
                            <p>Department Of Computer Engineering</p>

                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    <!-- end of modal -->
    <div class="clear"> </div>
    <script src="js/display.js"></script>
    <script src="hms/vendor/jquery/jquery.min.js"></script>
    <script src="hms/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!--end-wrap-->
</body>

</html>