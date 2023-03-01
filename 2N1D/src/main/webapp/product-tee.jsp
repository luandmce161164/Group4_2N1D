<%-- 
    Document   : product-tees
    Created on : Feb 20, 2023, 6:44:58 AM
    Author     : THANH HUYEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>T-shirt &ndash; 2N1D®</title>
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
    <body class="tt-collection 2n1d">
        <div class="pageWrapper">
            <!--Search Form Drawer-->
            <div class="search">
                <div class="search__form">
                    <form class="search-bar__form" action="#">
                        <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
                        <input class="search__input" type="search" name="q" value="" placeholder="Search entire store..." aria-label="Search" autocomplete="off">
                    </form>
                    <button type="button" class="search-trigger close-btn"><i class="icon anm anm-times-l"></i></button>
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
                                <li><a href="login.jsp">Login</a></li>
                                <li><a href="register.jsp">Create Account</a></li>
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
                            <a href="index.jsp">
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
                                    <li class="lvl1 parent megamenu"><a href="index.jsp">Home <i class="anm anm-angle-down-l"></i></a></li>
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
<!--                                    <li class="lvl1 parent dropdown"><a href="discount.jsp">Discount <i class="anm anm-angle-down-l"></i></a>
                                                                                                                 <ul class="dropdown">
                                                                                                                               <li><a href="about-us.jsp" class="site-nav">About Us </a></li>
                                                                                                                               <li><a href="contact-us.jsp" class="site-nav">Contact Us</a></li>
                                                                                                                        </ul>
                                    </li>-->
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
                        <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                            <div class="logo">
                                <a href="index.jsp">
                                    <img src="assets/images/logo1.png" alt="2N1D" title="2N1D" />
                                </a>
                            </div>
                        </div>
                        <div class="col-4 col-sm-3 col-md-3 col-lg-2">
                            <div class="site-cart">
                                <a href="#;" class="site-header__cart" title="Cart">
                                    <i class="icon anm anm-bag-l"></i>
                                    <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count">2</span>
                                </a>
                                <!--Minicart Popup-->
<!--                                <div id="header-cart" class="block block-cart">
                                    <ul class="mini-products-list">
                                        <li class="item">
                                            <a class="product-image" href="#">
                                                <img src="assets/images/product-images/ao1.jpg" alt="ao so 1" title="" />
                                            </a>
                                            <div class="product-details">
                                                <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                                                <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                                                <a class="pName" href="cart.jsp">Sleeve Kimono Dress</a>
                                                <div class="variant-cart">Black / XL</div>
                                                <div class="wrapQtyBtn">
                                                    <div class="qtyField">
                                                        <span class="label">Qty:</span>
                                                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                        <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                                                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                                <div class="priceRow">
                                                    <div class="product-price">
                                                        <span class="money">999.000 VND</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="item">
                                            <a class="product-image" href="#">
                                                <img src="assets/images/product-images/pants1.jpg" alt="quan so 1 / Small" title="" />
                                            </a>
                                            <div class="product-details">
                                                <a href="#" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                                                <a href="#" class="edit-i remove"><i class="anm anm-edit" aria-hidden="true"></i></a>
                                                <a class="pName" href="cart.jsp">Elastic Waist Dress</a>
                                                <div class="variant-cart">Gray / XXL</div>
                                                <div class="wrapQtyBtn">
                                                    <div class="qtyField">
                                                        <span class="label">Qty:</span>
                                                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                        <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                                                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                                <div class="priceRow">
                                                    <div class="product-price">
                                                        <span class="money">999.999 VND </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="total">
                                        <div class="total-in">
                                            <span class="label">Cart Subtotal:</span><span class="product-price"><span class="money">2.000.000 VND</span></span>
                                        </div>
                                        <div class="buttonSet text-center">
                                            <a href="cart.jsp" class="btn btn-secondary btn--small">View Cart</a>
                                            <a href="checkout.jsp" class="btn btn-secondary btn--small">Checkout</a>
                                        </div>
                                    </div>
                                </div>-->
                                <!--EndMinicart Popup-->
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
                    <li class="lvl1 parent megamenu"><a href="index.jsp">Home <i class="anm anm-plus-l"></i></a></li>
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
            <!--End Mobile Menu-->

            <!--Body Content-->
            <div id="page-content">
                <!--Collection Banner-->
                <div class="collection-header">
                    <div class="collection-hero">
                        <div class="collection-hero__image"><img class="blur-up lazyload" data-src="assets/images/product-all.jpg" src="assets/images/product-all.jpg" alt="Men" title="Men" /></div>
                        <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">T-shirt</h1></div>
                    </div>
                </div>
                <!--                Page Title
                                <div class="page section-header text-center">
                                    <div class="page-title">
                                        <div class="wrapper"><h1 class="page-width">About Us</h1></div>
                                    </div>
                                </div>
                                End Page Title-->
                <!--End Collection Banner-->

                <div class="container">
                    <div class="row">
                        <!--Main Content-->
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                            <div class="productList">
                                <div class="grid-products grid--view-items">
                                    <div class="row">
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                            <div class="product-image">
                                                <!-- start product image -->
                                                <a href="view_product.jsp">
                                                    <!-- image -->
                                                    <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao1.jpg" src="assets/images/product-images/ao1.jpg" alt="image" title="product" />
                                                    <!-- End image -->
                                                    <!-- Hover image -->
                                                    <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao1_1.jpg" src="assets/images/product-images/ao1_1.jpg" alt="image" title="product" />
                                                    <!-- End hover image -->
                                                    <!-- product label -->
                                                    <div class="product-labels rectangular"><span class="lbl on-sale">Sale -10%</span> <span class="lbl pr-label1">new</span></div>
                                                    <!-- End product label -->
                                                </a>
                                                <!-- end product image -->

                                                <!-- Start product button -->
                                                <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                    <button class="btn btn-addto-cart" type="button">Select Options</button>
                                                </form>
                                                <!-- end product button -->
                                            </div>
                                            <!-- end product image -->

                                            <!--start product details -->
                                            <div class="product-details text-center">
                                                <!-- product name -->
                                                <div class="product-name">
                                                    <a href="#">2N1D® 2LIP TEE/ CREAM</a>
                                                </div>
                                                <!-- End product name -->
                                                <!-- product price -->
                                                <div class="product-price">
                                                    <span class="old-price">500.000 VND</span>
                                                    <span class="price">450.000 VND</span>
                                                </div>
                                                <!-- End product price -->
                                            </div>
                                            <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                            <div class="product-image">
                                                <!-- start product image -->
                                                <a href="view_product.jsp">
                                                    <!-- image -->
                                                    <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao2.jpg" src="assets/images/product-images/ao2.jpg" alt="image" title="product" />
                                                    <!-- End image -->
                                                    <!-- Hover image -->
                                                    <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao2_1.jpg" src="assets/images/product-images/ao2_1.jpg" alt="image" title="product" />
                                                    <!-- End hover image -->
                                                </a>
                                                <!-- end product image -->

                                                <!-- Start product button -->
                                                <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                    <button class="btn btn-addto-cart" type="button">Select Options</button>
                                                </form>
                                                <!-- end product button -->
                                            </div>
                                            <!-- end product image -->

                                            <!--start product details -->
                                            <div class="product-details text-center">
                                                <!-- product name -->
                                                <div class="product-name">
                                                    <a href="#">2N1D® 3RD ANNIVERSARY TEE/ WHITE</a>
                                                </div>
                                                <!-- End product name -->
                                                <!-- product price -->
                                                <div class="product-price">
                                                    <span class="price">420.000 VND</span>
                                                </div>
                                                <!-- End product price -->

                                            </div>
                                            <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                            <div class="product-image">
                                                <!-- start product image -->
                                                <a href="view_product.jsp">
                                                    <!-- image -->
                                                    <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao3.jpg" src="assets/images/product-images/ao3.jpg" alt="image" title="product">
                                                    <!-- End image -->
                                                    <!-- Hover image -->
                                                    <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao3_1.jpg" src="assets/images/product-images/ao3_1.jpg" alt="image" title="product">
                                                    <!-- End hover image -->
                                                    <!-- product label -->
                                                    <div class="product-labels rectangular"><span class="lbl pr-label2">Hot</span></div>
                                                    <!-- End product label -->
                                                </a>
                                                <!-- end product image -->

                                                <!-- Start product button -->
                                                <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                    <button class="btn btn-addto-cart" type="button" tabindex="0">Add To Cart</button>
                                                </form>
                                                <!-- end product button -->
                                            </div>
                                            <!-- end product image -->

                                            <!--start product details -->
                                            <div class="product-details text-center">
                                                <!-- product name -->
                                                <div class="product-name">
                                                    <a href="#">2N1D® COLOR TEE/ BLUE</a>
                                                </div>
                                                <!-- End product name -->
                                                <!-- product price -->
                                                <div class="product-price">
                                                    <span class="price">450.000 VND</span>
                                                </div>
                                                <!-- End product price -->
                                            </div>
                                            <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao4.jpg" src="assets/images/product-images/ao4.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao4_1.jpg" src="assets/images/product-images/ao4_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->
                                                        <div class="product-labels"><span class="lbl on-sale">Sale -8%</span></div>
                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Add To Cart</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | DORAEMON POPULAR CAT TEE/ CREAM</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="old-price">450.000 VND</span>
                                                        <span class="price">414.000 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao5.jpg" src="assets/images/product-images/ao5.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao5_1.jpg" src="assets/images/product-images/ao5_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP CHAT TEE/ BLACK</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao6.jpg" src="assets/images/product-images/ao6.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao6_1.jpg" src="assets/images/product-images/ao6_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP CHAT TEE/ WHITE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao7.jpg" src="assets/images/product-images/ao7.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao7_1.jpg" src="assets/images/product-images/ao7_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | DORAEMON FAMOUS CAT TEE/ RED</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao8.jpg" src="assets/images/product-images/ao8.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao8_1.jpg" src="assets/images/product-images/ao8_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                     <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP CHAT TEE/ BLACK</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao9.jpg" src="assets/images/product-images/ao9.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao9_1.jpg" src="assets/images/product-images/ao9_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP TOY WASH TEE/ BEIGE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao10.jpg" src="assets/images/product-images/ao10.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao10_1.jpg" src="assets/images/product-images/ao10_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP FRIENDS TEE/ BEIGE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao11.jpg" src="assets/images/product-images/ao11.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao11_1.jpg" src="assets/images/product-images/ao11_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® | POPPOP FRIENDS TEE/ BEIGE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao12.jpg" src="assets/images/product-images/ao12.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao12_1.jpg" src="assets/images/product-images/ao12_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® WASH TEE/ BLACK</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao13.jpg" src="assets/images/product-images/ao13.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao13_1.jpg" src="assets/images/product-images/ao13_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® FADED TEE/ BLUE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao14.jpg" src="assets/images/product-images/ao14.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao14_1.jpg" src="assets/images/product-images/ao14_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® FADED TEE/ BLACK</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao15.jpg" src="assets/images/product-images/ao15.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao15_1.jpg" src="assets/images/product-images/ao15_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D®  FADED TEE/ YELLOW</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao16.jpg" src="assets/images/product-images/ao16.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao16_1.jpg" src="assets/images/product-images/ao16_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® SPECIAL POPULAR TEE/ WHITE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao17.jpg" src="assets/images/product-images/ao17.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao17_1.jpg" src="assets/images/product-images/ao17_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® SPECIAL POPULAR TEE/ GREY</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-4 col-lg-3 item">
                                            <!-- start product image -->
                                                <div class="product-image">
                                                    <!-- start product image -->
                                                    <a href="view_product.jsp">
                                                        <!-- image -->
                                                        <img class="primary blur-up lazyload" data-src="assets/images/product-images/ao18.jpg" src="assets/images/product-images/ao18.jpg" alt="image" title="product" />
                                                        <!-- End image -->
                                                        <!-- Hover image -->
                                                        <img class="hover blur-up lazyload" data-src="assets/images/product-images/ao18_1.jpg" src="assets/images/product-images/ao18_1.jpg" alt="image" title="product" />
                                                        <!-- End hover image -->
                                                        <!-- product label -->

                                                        <!-- End product label -->
                                                    </a>
                                                    <!-- end product image -->

                                                    <!-- Start product button -->
                                                    <form class="variants add" action="#" onclick="window.location.href = 'cart.jsp'" method="post">
                                                        <button class="btn btn-addto-cart" type="button" tabindex="0">Select Options</button>
                                                    </form>
                                                    <!-- end product button -->
                                                </div>
                                                <!-- end product image -->

                                                <!--start product details -->
                                                <div class="product-details text-center">
                                                    <!-- product name -->
                                                    <div class="product-name">
                                                        <a href="view_product.jsp">2N1D® DRAW ICON TEE/ WHITE</a>
                                                    </div>
                                                    <!-- End product name -->
                                                    <!-- product price -->
                                                    <div class="product-price">
                                                        <span class="price">420.00 VND</span>
                                                    </div>
                                                    <!-- End product price -->
                                                </div>
                                                <!-- End product details -->
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="infinitpaginOuter">

                        </div>
                    </div>
                    <!--End Main Content-->
                </div>
            </div>

        </div>
        <!--End Body Content-->

        <!--Footer-->
            <footer id="footer">
                <div class="site-footer">
                    <div class="container">
                        <!--Footer Links-->
                        <div class="footer-top">
                            <div class="row">
                                <div class="col-md-4 contact-box">
                                    <ul class="addressFooter">
                                        <li><i class="icon anm anm-map-marker-al"></i><p>365 Nguyen Van Cu, An Khanh, Ninh Kieu, Can Tho</p></li>
                                        <li class="phone"><i class="icon anm anm-phone-s"></i><p>+841234567890</p></li>
                                        <li class="email"><i class="icon anm anm-envelope-l"></i><p>trthh09@gmail.com</p></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--End Footer Links-->
                        <hr>
                    </div>
                </div>
            </footer>
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
</body>
</html>