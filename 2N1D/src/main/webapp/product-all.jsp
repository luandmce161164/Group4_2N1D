<%-- 
    Document   : product-all
    Created on : Feb 20, 2023, 6:42:21 AM
    Author     : THANH HUYEN
--%>

<%@page import="java.util.List"%>
<%@page import="com.models.Product"%>
<%@page import="com.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ProductDAO pd = new ProductDAO();

%>

<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>All Product &ndash; 2N1D®</title>
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
        <jsp:include page="Header.jsp"></jsp:include>
            <!--Body Content-->
            <div id="page-content">
                <!--Collection Banner-->
                <div class="collection-header">
                    <div class="collection-hero">
                        <div class="collection-hero__image"><img class="blur-up lazyload" data-src="assets/images/product-all.jpg" src="assets/images/product-all.jpg" alt="Men" title="Men" /></div>
                        <div class="collection-hero__title-wrapper"><h1 class="collection-hero__title page-width">All Product</h1></div>
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
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="section-header text-center">
                                <h2 class="h2">Featured products of 2N1D®</h2>
                                <p>Grab these new items before they are gone!</p>
                            </div>
                            <div class="tab_container">
                                <div id="tab1" class="tab_content grid-products">
                                    <div class="productSlider" >
                                    <%            List<Product> allproduct = pd.ListAllProduct();
                                        for (Product product : allproduct) {
                                    %>
                                    <div class="col-12 item">
                                        <!-- start product image -->
                                        <div class="product-image">
                                            <!-- start product image -->
                                            <a href="view_product.jsp?id= <%= product.getProduct_id()%>">
                                                <!-- image -->
                                                <img class="primary blur-up lazyload" data-src="<%= product.getImage()%>" src="<%= product.getImage()%>" alt="image" title="product">
                                                <!-- End image -->
                                                <!-- Hover image -->
                                                <img class="hover blur-up lazyload" data-src="<%= product.getImage()%>" src="<%= product.getImage()%>" alt="image" title="product">
                                                <!-- End hover image -->
                                                <!-- product label -->
                                                <div class="product-labels rectangular"><span class="lbl on-sale">Sale -10%</span> <span class="lbl pr-label1">new</span></div>
                                                <!-- End product label -->
                                            </a>
                                            <!-- end product image -->

                                            <!-- countdown start --> 
                                            <div class="saleTime desktop" data-countdown="2023/05/05"></div>
                                            <!-- countdown end -->

                                            <!-- Start product button -->
                                            <form class="variants add" action="#" onclick="window.location.href = 'Cart?id=<%= product.getProduct_id()%>'" method="post">
                                                <button class="btn btn-addto-cart" type="button" tabHome="0">Add To Cart</button>
                                            </form>
                                            <!-- end product button -->
                                        </div>
                                        <!-- end product image -->
                                        <!--start product details -->
                                        <div class="product-details text-center">
                                            <!-- product name -->
                                            <div class="product-name">
                                                <a href="view_product.jsp?id=<%= product.getProduct_id()%>"><%= product.getName()%></a>
                                            </div>
                                            <!-- End product name -->
                                            <!-- product price -->
                                            <div class="product-price">
                                                <span class="old-price"><%= product.getProduct_price()%></span>
                                                <span class="price"><%= product.getProduct_price()%></span>
                                            </div>
                                            <!-- End product price -->
                                        </div>
                                        <!-- End product details -->
                                    </div>
                                    <%
                                        }
                                    %>       
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="infinitpaginOuter">

                    </div>
                </div>
                <!--End Main Content-->
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
    </body>
</html>
