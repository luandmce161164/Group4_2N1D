<%-- 
    Document   : Home
    Created on : Feb 22, 2023, 6:24:43 PM
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
    <body class="tt-Home 2n1d tt-Home-2n1d">
        <jsp:include page="Header.jsp"></jsp:include>
            <!--Body Content-->
            <div id="page-content">
                <!--Home slider-->
                <div class="slideshow slideshow-wrapper pb-section sliderFull">
                    <div class="home-slideshow">
                        <div class="slide">
                            <div class="blur-up lazyload bg-size">
                                <img class="blur-up lazyload bg-img" data-src="assets/images/slideshow-banners/1.png" src="assets/images/slideshow-banners/1.png" alt="Shop Our New Product" title="Shop Our New Product" />
                                <div class="slideshow__text-wrap slideshow__overlay classic bottom">
                                    <div class="slideshow__text-content bottom">
                                        <div class="wrap-caption center">
                                            <h2 class="h1 mega-title slideshow__title">Welcome to 2N1D</h2>
                                            <span class="mega-subtitle slideshow__subtitle">Style is temporary, class is forever</span>
                                            <span class="btn">Shop now</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="blur-up lazyload bg-size">
                                <img class="blur-up lazyload bg-img" data-src="assets/images/slideshow-banners/2.png" src="assets/images/slideshow-banners/2.png" alt="Summer Shopping" title="Summer Shopping" />
                                <div class="slideshow__text-wrap slideshow__overlay classic bottom">
                                    <div class="slideshow__text-content bottom">
                                        <div class="wrap-caption center">
                                            <h2 class="h1 mega-title slideshow__title">Summer Shopping</h2>
                                            <span class="mega-subtitle slideshow__subtitle">Save up to 10% off this weekend only</span>
                                            <span class="btn">Shop now</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Home slider-->
                <!--Collection Tab slider-->
                <div class="tab-slider-product section">
                    <div class="container">
                        <div class="row">
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
                                                    <%
                                                        int random;
                                                        random = (int) (Math.random() * 12 + 4);
                                                        if (random % 3 == 0) {
                                                    %>
                                                    <!-- product label -->
                                                    <div class="product-labels rectangular"><span class="lbl on-sale">Sale -10%</span> <span class="lbl pr-label1">new</span></div>
                                                    <!-- End product label -->
                                                    <%
                                                        }
                                                    %>
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
                    </div>    
                </div>
            </div>
            <!--Collection Tab slider-->

            <!--Featured Product-->
            <div class="product-rows section">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="section-header text-center">
                                <h2 class="h2">The layouts from 2N1D® for you</h2>
                                <p>Our most popular products based on sales</p>
                            </div>
                        </div>
                    </div>
                    <div class="grid-products">
                        <div class="row">
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix1.jpg" src="assets/images/product-images/mix1.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix1.jpg" src="assets/images/product-images/mix1.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels rectangular"><span class="lbl on-sale">-8%</span> <span class="lbl pr-label1">new</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® | DORAEMON POPULAR CAT TEE/ GREY</a>
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
                            </div>
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix2.jpg" src="assets/images/product-images/mix2.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix2.jpg" src="assets/images/product-images/mix2.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® PLAY LOGO TEE/ WHITE</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <span class="price">$748.00</span>
                                        </div>
                                    </div>
                                    <!-- End product details -->
                                </div>
                            </div>
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix3.jpg" src="assets/images/product-images/mix3.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix3.jpg" src="assets/images/product-images/mix3.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels rectangular"><span class="lbl on-sale">-16%</span> <span class="lbl pr-label1">new</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® EARTH TEE/ PURPLE</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <span class="price">$550.00</span>
                                        </div>
                                    </div>
                                    <!-- End product details -->
                                </div>
                            </div>
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix4.jpg" src="assets/images/product-images/mix4.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix4.jpg" src="assets/images/product-images/mix4.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® POPULAR LOGO 2.0 TEE/ BLACK</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <span class="old-price">$900.00</span>
                                            <span class="price">$788.00</span>
                                        </div>
                                    </div>

                                    <!-- End product details -->
                                </div>
                            </div>
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix5.jpg" src="assets/images/product-images/mix5.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix5.jpg" src="assets/images/product-images/mix5.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                        <!-- product label -->
                                        <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                                        <!-- End product label -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® POPULAR LOGO 2.0 TEE/ RED</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <span class="old-price">$900.00</span>
                                            <span class="price">$788.00</span>
                                        </div>

                                    </div>

                                    <!-- End product details -->
                                </div>
                            </div>
                            <div class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
                                <div class="grid-view_image">
                                    <!-- start product image -->
                                    <a href="view_product.jsp" class="grid-view-item__link">
                                        <!-- image -->
                                        <img class="grid-view-item__image primary blur-up lazyload" data-src="assets/images/product-images/mix6.jpg" src="assets/images/product-images/mix6.jpg" alt="image" title="product">
                                        <!-- End image -->
                                        <!-- Hover image -->
                                        <img class="grid-view-item__image hover blur-up lazyload" data-src="assets/images/product-images/mix6.jpg" src="assets/images/product-images/mix6.jpg" alt="image" title="product">
                                        <!-- End hover image -->
                                    </a>
                                    <!-- end product image -->
                                    <!--start product details -->
                                    <div class="product-details hoverDetails text-center mobile">
                                        <!-- product name -->
                                        <div class="product-name">
                                            <a href="view_product.jsp">2N1D® EARTH TEE/ WHITE</a>
                                        </div>
                                        <!-- End product name -->
                                        <!-- product price -->
                                        <div class="product-price">
                                            <span class="price">$420.00</span>
                                        </div>
                                    </div>
                                    <!-- End product details -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
            <!--End Featured Product-->

            <!--Store Feature-->
            <div class="store-feature section">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <ul class="display-table store-info">
                                <li class="display-table-cell">
                                    <i class="icon anm anm-truck-l"></i>
                                    <h5>Free Shipping &amp; Return</h5>
                                    <span class="sub-text">Free shipping on all orders in Can Tho City</span>
                                </li>
                                <li class="display-table-cell">
                                    <i class="icon anm anm-dollar-sign-r"></i>
                                    <h5>Money Guarantee</h5>
                                    <span class="sub-text">30 days money back guarantee</span>
                                </li>
                                <li class="display-table-cell">
                                    <i class="icon anm anm-comments-l"></i>
                                    <h5>Online Support</h5>
                                    <span class="sub-text">We support online 24/7 on day</span>
                                </li>
                                <li class="display-table-cell">
                                    <i class="icon anm anm-credit-card-front-r"></i>
                                    <h5>Secure Payments</h5>
                                    <span class="sub-text">All payment are Secured and trusted.</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Store Feature-->
        <!--End Body Content-->

        <!--Footer-->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!--End Footer-->
        <!--Scoll Top-->
        <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
        <!--End Scoll Top-->
        <!-- Including Jquery -->
        <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
        <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
        <script src="assets/js/vendor/jquery.cookie.js"></script>
        <script src="assets/js/vendor/wow.min.js"></script>
        <!-- Including Javascript -->
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/lazysizes.js"></script>
        <script src="assets/js/main.js"></script>
        <!--For Newsletter Popup-->
        <script>
                                                        jQuery(document).ready(function () {
                                                            jQuery('.closepopup').on('click', function () {
                                                                jQuery('#popup-container').fadeOut();
                                                                jQuery('#modalOverly').fadeOut();
                                                            });

                                                            var visits = jQuery.cookie('visits') || 0;
                                                            visits++;
                                                            jQuery.cookie('visits', visits, {expires: 1, path: '/'});
                                                            console.debug(jQuery.cookie('visits'));
                                                            if (jQuery.cookie('visits') > 1) {
                                                                jQuery('#modalOverly').hide();
                                                                jQuery('#popup-container').hide();
                                                            } else {
                                                                var pageHeight = jQuery(document).height();
                                                                jQuery('<div id="modalOverly"></div>').insertBefore('body');
                                                                jQuery('#modalOverly').css("height", pageHeight);
                                                                jQuery('#popup-container').show();
                                                            }
                                                            if (jQuery.cookie('noShowWelcome')) {
                                                                jQuery('#popup-container').hide();
                                                                jQuery('#active-popup').hide();
                                                            }
                                                        });

                                                        jQuery(document).mouseup(function (e) {
                                                            var container = jQuery('#popup-container');
                                                            if (!container.is(e.target) && container.has(e.target).length === 0)
                                                            {
                                                                container.fadeOut();
                                                                jQuery('#modalOverly').fadeIn(200);
                                                                jQuery('#modalOverly').hide();
                                                            }
                                                        });
        </script>
        <!--End For Newsletter Popup-->
    </div>
</body>
</html>
