<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registeration</title>
        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--custom css-->
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <!--icon css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 88% 0, 100% 0, 100% 88%, 77% 91%, 50% 100%, 20% 93%, 0 99%, 0 0, 20% 0);   }
            </style>
        </head>
        <body>
            <!--navbar-->
            <%@include file="navbar.jsp" %>
            <main class=" d-flex align-items-center primary-background banner-background " style="padding:80px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header text-center">
                                <span class="fa fa-user-circle-o fa-3x"></span>
                                <p class="mt-1">Sign up here<p>
                            </div>
                            <div class="card-body">
                                <form action="registrationservlet" method="post" id="reg-submit">
                                    <div class="form-group">
                                        <label for="username">User Name</label>
                                        <input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter name">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="form-group">
                                        <label for="gender">Select Gender</label><br>
                                        <input type="radio"  id="male" name="gender" value="male">Male
                                        <input type="radio"  id="female" name="gender" value="female">Female
                                    </div>

                                    <div class="form-group">

                                        <textarea type="text"  name="about" class="form-control" placeholder="enter something about yourself" id="" rows="5"></textarea>
                                    </div>

                                    <div class="form-check">
                                        <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
                                    </div>
                                    <br>
                                    <div class="text-center" style="display:none" id="loader">
                                        <span class="fa fa-refresh fa-3x fa-spin "></span>
                                        <h4>Please Wait..</h4>
                                    </div>
                                    <button type="submit" id="btn-submit"  class="btn btn-success">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>



        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--custom js-->
        <script src="js/myjs.js" type="text/javascript"></script>
        <!--sweet alert-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                /// console.log("loaded");
                $("#reg-submit").on('submit', function (event) {

                    $("#btn-submit").hide();
                    $("#loader").show();
                    event.preventDefault();


                    let formdata = new FormData(this);

//                  send register servlet
                    $.ajax({
                        url: "registrationservlet",
                        type: "post",
                        data: formdata,
                        processData: false,
                        contentType: false,
                        success: function (data, textStatus, jqXHR) {
                            $("#btn-submit").show();
                            $("#loader").hide();
                            console.log(data);
                            
                            if(data=="done")
                            {
                                  swal("Registrated Successfull!! You are going to redirect Login page")
                                    .then((value) => {
                                        window.location = "login.jsp";
                                    });
                            }
                            if(data=="error")
                            {
                                  swal("Something Went Wrong!!")
                                    .then((value) => {

                                    });
                            }
                            if(data=="please check teams and condition.")
                            {
                                  swal("please check teams and condition.")
                                    .then((value) => {

                                    });
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#btn-submit").show();
                            $("#loader").hide();
                            swal("Something Went Wrong!!")
                                    .then((value) => {

                                    });
                        }
                    });

                });

            });
        </script>
    </body>
</html>
