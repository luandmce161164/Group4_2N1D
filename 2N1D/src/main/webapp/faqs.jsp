<%-- 
    Document   : faqs
    Created on : Mar 8, 2023, 3:57:12 PM
    Author     : Admin
--%>
<%@page import="com.dao.ProductDAO"%>
<%
    ProductDAO pd = new ProductDAO();

%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>FAQs &ndash; 2N1D</title>
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
                            <div class="wrapper"><h1 class="page-width">FAQs</h1></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                                <div id="accordionExample">
                                    <h2 class="title h2">Most frequently asked questions</h2>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Does 2N1D have a time limit for online ordering?</h4>
                                        <div id="collapseOne" class="collapse panel-content" data-parent="#accordionExample"> You can place an order 24 hours a day, we are always ready to receive your order.</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">How long will it take to receive the goods?</h4>
                                        <div id="collapseTwo" class="collapse panel-content">You will receive the goods after 3-5 days from the time you receive the order confirmation from our department. <br>Note: Delivery time does not include Saturday, Sunday or public holidays. For big discounts or due to unpredictable weather conditions, the above time may change from the scheduled time.</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">How do I know my order has been successfully placed?</h4>
                                        <div class="panel-content collapse" id="collapseThree">After you complete the order steps according to the unique instructions on the website, we will call you on the phone number to confirm the order.</div>
                                    </div>
                                    <!--                                <h2 class="title h2">Other Resources</h2>-->
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">How to cancel an order once it has been placed?</h4>
                                        <div class="panel-content collapse" id="collapseFour">You immediately contact the Hotline so that we can support timely update CANCEL your new order</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Do I need to register for an account when ordering online?</h4>
                                        <div class="panel-content collapse" id="collapseFive">Yes, you should register an account so that the system stores information and confirms orders faster and more conveniently.</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Is it possible to register multiple accounts on 2N1D?</h4>
                                        <div class="panel-content collapse" id="collapseSix">2N1D does not stipulate that customers can only register for one account on the website, you can register for multiple accounts without having the same phone number. However, you should register and use an account with the most used personal information to avoid confusing orders and delivery addresses.</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">How to change personal information in the account?</h4>
                                        <div class="panel-content collapse" id="collapseSeven">To change your information, you need to log in to your account on 2N1D. Then, go to Account and click edit to change the information as desired.</div>
                                    </div>
                                    <div class="faq-body">
                                        <h4 class="panel-title" data-toggle="collapse" data-target="#collapseEigth" aria-expanded="false" aria-controls="collapseEigth">How to contact 2N1D when ordering on the website is not possible?</h4>
                                        <div class="panel-content collapse" id="collapseEigth">In case you cannot access the website, you can call us via Hotline 2N1D for quick support. If the response line is overloaded, we will call back immediately.</div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Body Content-->

                <!--Footer-->
            <jsp:include page="Footer.jsp"></jsp:include>
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
