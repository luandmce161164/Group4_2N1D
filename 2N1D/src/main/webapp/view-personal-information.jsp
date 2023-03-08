<%-- 
    Document   : profile
    Created on : Mar 8, 2023, 5:11:05 PM
    Author     : Admin
--%>

<%@page import="com.dao.AccountDAO"%>
<%@page import="com.models.Account"%>
<%@page import="com.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                            <div class="mb-4">
                            <%
//                                Account account;
//                                if (request.getParameter("id") != null) {
//                                    String id = request.getParameter("id");
//                                    AccountDAO dao = new AccountDAO();
//                                    account = dao.getAccountByID(id);
                                  Account account = (Account) session.getAttribute("acc");
                            %>
                            <form method="post" action="ChangeInforController" id="ProfileEdit" accept-charset="UTF-8" class="contact-form">	
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label>ID</label>
                                            <input type="text" name="id" placeholder="" readonly value="<%= account.getAccount_id()%>">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input type="text" name="fullname" placeholder="" value="<%= account.getName()%>">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="username">Username</label>
                                            <input type="text" name="username" placeholder="" value="<%= account.getUsername()%>">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="username">Password</label>
                                            <input type="text" name="password" placeholder="" value="<%= account.getPassword()%>">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" name="email" placeholder="" id="email" class="" value="<%= account.getEmail()%>" autocorrect="off" autocapitalize="off" autofocus="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <input type="radio" name="rdoGT" value="0" <%= (account.getSex() == 0 ? "checked" : "")%> /> Male
                                            <input type="radio" name="rdoGT" value="1" <%= (account.getSex() == 1 ? "checked" : "")%> /> Female                       	
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="date_of_birth">Day of birth</label>
                                            <input type="date_of_birth" name="date_of_birth" placeholder="" id="date_of_birth" value="<%= account.getDate_of_birth()%>" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="phone_number">Phone Number</label>
                                            <input type="phone_number" name="phone_number" placeholder="" id="phone_number" value="<%= account.getPhone_number()%>" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="address">Address</label>
                                            <input type="address" name="address" placeholder="" id="address" value="<%= account.getAddress()%>" class="" autocorrect="off" autocapitalize="off" autofocus="">
                                        </div>
                                    </div>
                                </div>`
                                <div class="row">
                                    <div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
                                        <input type="submit" class="btn mb-3" value="Update" name="btnUpdate">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>   


            <jsp:include page="Footer.jsp"></jsp:include>

            <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>

            <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
            <script src="assets/js/vendor/jquery.cookie.js"></script>
            <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
            <script src="assets/js/vendor/wow.min.js"></script>

            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/popper.min.js"></script>
            <script src="assets/js/lazysizes.js"></script>
            <script src="assets/js/main.js"></script>
        </div>
    </body>      

</html>