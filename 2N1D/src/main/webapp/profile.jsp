<%-- 
    Document   : profile
    Created on : Mar 8, 2023, 5:11:05 PM
    Author     : Admin
--%>

<%@page import="com.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ProductDAO pd = new ProductDAO();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Profile Edit &ndash; 2N1D</title>
        <meta name="description" content="description">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/logo1.png" />
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">
        <!-- Bootstap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body class="page-tt 2n1d">
        <div class="pageWrapper">
            <jsp:include page="Header.jsp"></jsp:include>
            <!--Body Content-->
            <div id="page-content">
                <!--Page Title-->
                <div class="page section-header text-center">
                    <div class="page-title">
                        <div class="wrapper"><h1 class="page-width">Profile Edit</h1></div>
                    </div>
                </div>
                <!--End Page Title-->

                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                            <div class="mb-4">
                                <form method="post" action="#" id="ProfileEdit" accept-charset="UTF-8" class="contact-form">	
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label>ID</label>
                                                <input type="text" name="fullname" placeholder="" readonly>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label>Full Name</label>
                                                <input type="text" name="fullname" placeholder="" >
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input type="text" name="username" placeholder="" >
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email" name="email" placeholder="" id="email" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <input type="radio" name="rdoGT" value="Nam"/> Nam
                                                <input type="radio" name="rdoGT" value="Nu"/> Nu                       	
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="date_of_birth">Day of birth</label>
                                                <input type="date_of_birth" name="date_of_birth" placeholder="" id="date_of_birth" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="phone_number">Phone Number</label>
                                                <input type="phone_number" name="phone_number" placeholder="" id="phone_number" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <input type="address" name="address" placeholder="" id="address" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
                                            <input type="submit" class="btn mb-3" value="Update">
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Body Content-->
            <!--Footer-->
            
            <!--End Footer-->
            <!--Scoll Top-->
            <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
            <!--End Scoll Top-->

            <!-- Including Jquery -->
            <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
            <script src="assets/js/vendor/jquery.cookie.js"></script>
            <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
            <script src="assets/js/vendor/wow.min.js"></script>
            <!-- Including Javascript -->
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/lazysizes.js"></script>
            <script src="assets/js/main.js"></script>
        </div>
    </body>
</html>