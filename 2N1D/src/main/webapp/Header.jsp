<%-- 
    Document   : Header
    Created on : Feb 28, 2023, 10:00:13 AM
    Author     : DELL7250
--%>

<%@page import="com.models.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body>
        <div class="pageWrapper">
            <!--Search Form Drawer-->
            <div class="search">
                <div class="search__form">
                    <form class="search-bar__form" action="#">
                        <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
                        <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
                    </form>
                    <button type="button" class="search-trigger close-btn"><i class="anm anm-times-l"></i></button>
                </div>
            </div>
            <!--End Search Form Drawer-->
            <!--Top Header-->
            <div class="top-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                            <p class="phone-no"><i class="anm anm-phone-s"></i> +84123456789</p>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
                            <div class="text-center"><p class="top-header_middle-text">Made in Vietnam</p></div>
                        </div>
                        <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                            <span class="user-menu d-block d-lg-none"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                            <ul class="customer-links list-inline">
                                <%
                                    Account account = (Account) session.getAttribute("acc");
                                    if (account == null) {
                                %>
                                <li><a href="Login.jsp">Login</a></li>
                                <li><a href="SignUp.jsp">Create Account</a></li>
                                    <%
                                    } else {
                                    %>
                                <li><a href="view-personal-information.jsp">Hello <%= account.getUsername()%></a></li>
                                <li><a href="LogoutController">Sign out</a></li>
                                    <%
                                        }
                                    %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Top Header-->
            <!--Header-->
            <div class="header-wrap animated d-flex">
                <div class="container-fluid">        
                    <div class="row align-items-center">
                        <!--Desktop Logo-->
                        <div class="logo col-md-2 col-lg-2 d-none d-lg-block">
                            <a href="Home.jsp">
                                <img src="assets/images/logo1.png" alt="2N1D" title="2N1D" />
                            </a>
                        </div>
                        <!--End Desktop Logo-->
                        <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                            <div class="d-block d-lg-none">
                                <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
                                    <i class="icon anm anm-times-l"></i>
                                    <i class="anm anm-bars-r"></i>
                                </button>
                            </div>
                            <!--Desktop Menu-->
                            <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
                                <!-- for mobile -->
                                <ul id="siteNav" class="site-nav medium center hidearrow">
                                    <li class="lvl1 parent megamenu"><a href="Home.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
                                    <li class="lvl1 parent megamenu"><a href="about-us.jsp">About Us <i class="anm anm-angle-down-l"></i></a>
                                        <!--<div class="megamenu style4"> </div>-->
                                    </li>
                                    <li class="lvl1 parent dropdown"><a href="product-all.jsp">Product <i class="anm anm-angle-down-l"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="product-all.jsp" class="site-nav">All </a></li>
                                            <li><a href="product-tee.jsp" class="site-nav">Tee</a></li>
                                            <li><a href="product-pants.jsp" class="site-nav">Pants</a></li>
                                        </ul>
                                    </li>
                                    <li class="lvl1 parent dropdown"><a href="#.jsp">Customer Care <i class="anm anm-angle-down-l"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="care1.jsp" class="site-nav">chinh sach doi tra va bao hanh </a></li>
                                            <li><a href="care2.jsp" class="site-nav">huong dan mua hang va bao quan </a></li>
                                        </ul>
                                    </li>
                                    <li class="lvl1 parent dropdown"><a href="contact-us.jsp">Contact Us<i class="anm anm-angle-down-l"></i></a>
                                    </li>
                                </ul>
                            </nav>
                            <!--End Desktop Menu-->
                        </div>
                        <!--Mobile Logo-->
                        <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                            <div class="logo">
                                <a href="Home.jsp">
                                    <img src="assets/images/logo1.png" alt="2N1D" title="2N1D" />
                                </a>
                            </div>
                        </div>
                        <!--end Mobile Logo-->
                        <div class="col-4 col-sm-3 col-md-3 col-lg-2">
                            <div class="site-cart">
                                <a href="Cart.jsp"  title="Cart">
                                    <i class="icon anm anm-bag-l"></i>
                                    <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count">+</span> <!-- so tren gio hang -->
                                </a>
                            </div>
                            <div class="site-header__search">
                                <button type="button" class="search-trigger"><i class="icon anm anm-search-l"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Header-->
            <!--Mobile Menu-->
            <div class="mobile-nav-wrapper" role="navigation">
                <div class="closemobileMenu"><i class="icon anm anm-times-l pull-right"></i> Close Menu</div>
                <ul id="MobileNav" class="mobile-nav">
                    <li class="lvl1 parent megamenu"><a href="Home.jsp">Home <i class="anm anm-plus-l"></i></a></li>
                    <li class="lvl1 parent megamenu"><a href="about-us.jsp">About Us <i class="anm anm-plus-l"></i></a></li>
                    <li class="lvl1 parent megamenu"><a href="product-all.jsp" class="site-nav" >Product <i class="anm anm-plus-l"></i></a>
                        <ul>
                            <li><a href="product-all.jsp" class="site-nav">All<i class="anm anm-plus-l"></i></a>
                            </li>
                            <li><a href="product-tee.jsp" class="site-nav">Tee<i class="anm anm-plus-l"></i></a>
                            </li>
                            <li><a href="product-pants.jsp" class="site-nav">Pants<i class="anm anm-plus-l"></i></a>
                            </li>
                        </ul>
                    </li>
                    <!--                    <li class="lvl1 parent megamenu"><a href="discount.jsp">Discount<i class="anm anm-plus-l"></i></a>-->

                    <li><a href="cart-variant1.jsp" class="site-nav">Customer Care<i class="anm anm-plus-l"></i></a>
                        <ul class="dropdown">
                            <li><a href="care1.jsp" class="site-nav">chinh sach doi tra va bao hanh</a></li>
                            <li><a href="care2.jsp" class="site-nav">huong dan mua hang va bao quan </a></li>
                        </ul>
                    </li>
                    <li><a href="contact-us.jsp" class="site-nav">Contact Us<i class="anm anm-plus-l"></i></a>
                        <!--                        <ul class="dropdown">
                                                    <li><a href="compare-variant1.jsp" class="site-nav">Compare Variant1</a></li>
                                                    <li><a href="compare-variant2.jsp" class="site-nav">Compare Variant2</a></li>
                                                </ul>-->
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
