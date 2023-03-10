<%-- 
    Document   : contact-us
    Created on : Mar 8, 2023, 11:51:11 AM
    Author     : THANH HUYEN
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
        <title>Contact Us &ndash; 2N1D</title>
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
    <body class="contact-tt page-tt 2n1d">
        <div class="pageWrapper">
            <jsp:include page="Header.jsp"></jsp:include>
                <!--Body Content-->
                <div id="page-content">
                    <!--Page Title-->
                    <div class="page section-header text-center">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">Contact Us</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->
                    <div class="map-section map">
                        <iframe src="https://www.google.com/maps/embed?pb=" height="350" allowfullscreen></iframe>
                        <div class="container">
                            <div class="row">
                                <div class="map-section__overlay-wrapper">
                                    <div class="map-section__overlay">
                                        <h3 class="h4">Our store</h3>
                                        <div class="rte-setting">
                                            <p>365 NVC.<br>Can Tho, Viet Nam</p>
                                            <p>Mon - Fri, 10am - 9pm<br>Saturday, 11am - 9pm<br>Sunday, 11am - 5pm</p>
                                        </div>
                                        <p><a href="https://maps.google.com/?daddr=80%20Spadina%20Ave,%20Toronto" class="btn btn--secondary btn--small" target="_blank">Get directions</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bredcrumbWrap">
                        <div class="container breadcrumbs">
                            <a href="Home.jsp" title="Back to the home page">Home</a><span aria-hidden="true"></span><span>Contact Us</span>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-8 col-lg-8 mb-4">
                                <h2>LETS MESSAGE</h2>
                                <p>For any request, question or reward, please use the live chat at the bottom left of your screen</p>
                                <div class="formFeilds contact-form form-vertical">
                                    <form action="http://annimexweb.com/items/2n1d/assets/php/mail.php" method="post"  id="contact_form" class="contact-form">	
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="form-group">
                                                    <input type="text" id="ContactFormName" name="name" placeholder="Name" value="" required="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="form-group">
                                                    <input type="email" id="ContactFormEmail" name="email" placeholder="Email" value="" required="">                        	
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="form-group">
                                                    <input required="" type="tel" id="ContactFormPhone" name="phone" pattern="[0-9\-]*" placeholder="Phone Number" value="">
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="form-group">
                                                    <input required="" type="text" id="ContactSubject" name="subject" placeholder="Subject" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="form-group">
                                                    <textarea required="" rows="10" id="ContactFormMessage" name="message" placeholder="Your Message"></textarea>
                                                </div>
                                            </div>  
                                        </div>
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <input type="submit" class="btn" value="Send Message">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="open-hours">
                                    <strong>Opening Hours</strong><br>
                                    Mon - Sat : 9am - 11pm<br>
                                    Sunday: 11am - 5pm
                                </div>
                                <hr />
                                <ul class="addressFooter">
                                    <li><i class="icon anm anm-map-marker-al"></i><p>365 Nguyen Van Cu, An Khanh, Ninh Kieu, Can Tho</p></li>
                                    <li class="phone"><i class="icon anm anm-phone-s"></i><p>+84123456789</p></li>
                                    <li class="email"><i class="icon anm anm-envelope-l"></i><p>trthh09@gmail.com</p></li>
                                </ul>
                                <hr />
                                <ul class="list--inline site-footer__social-icons social-icons">
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template< on Facebook"><i class="icon icon-facebook"></i></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i class="icon icon-pinterest"></i> <span class="icon__fallback-text">Pinterest</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i class="icon icon-instagram"></i> <span class="icon__fallback-text">Instagram</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i class="icon icon-tumblr-alt"></i> <span class="icon__fallback-text">Tumblr</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                                    <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i class="icon icon-vimeo-alt"></i> <span class="icon__fallback-text">Vimeo</span></a></li>
                                </ul>
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