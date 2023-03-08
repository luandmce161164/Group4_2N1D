<%-- 
    Document   : view_product
    Created on : Feb 20, 2023, 6:48:46 AM
    Author     : THANH HUYEN
--%>

<%@page import="com.models.Product"%>
<%@page import="com.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- 2n1d/short-description.html   11 Nov 2019 12:43:10 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>View Product &ndash; 2N1D</title>
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
    <body class="tt-product 2n1d">
        <%
            ProductDAO pd = new ProductDAO();
            Product product;
            if (request.getParameter("id") != null) {
                String id = request.getParameter("id");
                ProductDAO dao = new ProductDAO();
                product = dao.getProductByID(id);
        %>
        <div class="pageWrapper">
            <jsp:include page="Header.jsp"></jsp:include>
                <!--Body Content-->
                <div id="page-content">
                    <!--MainContent-->
                    <div id="MainContent" class="main-content" role="main">
                        <!--Breadcrumb-->
                        <div class="bredcrumbWrap">
                            <div class="container breadcrumbs">
                                <a href="Home.jsp" title="Back to the home page">Home</a><span aria-hidden="true">›</span><span>Short Description</span>
                            </div>
                        </div>
                        <!--End Breadcrumb-->

                        <div id="ProductSection-product-tt" class="product-tt__container prstyle1 container">
                            <!--product-single-->
                            <div class="product-single">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="product-details-img">
                                            <div class="zoompro-wrap product-zoom-right pl-20">
                                                <div class="zoompro-span">
                                                    <img class="zoompro blur-up lazyload" data-zoom-image="<%= product.getImage()%>" alt="" src="<%= product.getImage()%>" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="product-single__meta">
                                            <h1 class="product-single__title"><%= product.getName()%></h1>
                                        <div class="product-nav clearfix">					
                                            <a href="#" class="next" title="Next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="prInfoRow">
                                            <div class="product-stock"> <span class="instock ">On Stock</span> <span class="outstock hide">Unavailable</span> </div>

                                        </div>
                                        <p class="product-single__price product-single__price-product-tt">
                                            <!--                                            <span class="visually-hidden">Regular price</span>-->
                                            <s id="ComparePrice-product-tt"><span class="money"><%= product.getProduct_price() %></span></s>
                                            <span class="product-price__price product-price__price-product-tt product-price__sale product-price__sale--single">
                                                <span id="ProductPrice-product-tt"><span class="money"><%= product.getProduct_price() %> VND</span></span>
                                            </span>

                                        </p>
                                        <!--                                        <div class="orderMsg" data-user="23" data-time="24">
                                                                                    <img src="assets/images/order-icon.jpg" alt="" /> <strong class="items"> ...</strong> sold in last <strong class="time">26</strong> hours</div>-->
                                    </div>
                                    <div class="product-single__description rte">
                                        <p><%= product.getDetail_product() %></p>
                                        <ul>
                                            <li>Size S: Height from 1m50 - 1m65, weight over 55kg</li>
                                            <li>Size M: Height from 1m65 - 1m72, weight under 65kg</li>
                                            <li>Size L: Height from 1m70 - 1m77, weight less than 80kg</li>
                                            <li>Size XL: Height over 1m75, weight less than 95kg</li>
                                            <li>Size XXL: Height over 1m80, weight under 100kg.</li>
                                        </ul>
                                    </div>
                                    <form method="post" action="" id="product_form_10508262282" accept-charset="UTF-8" class="product-form product-form-product-tt hidedropdown" enctype="multipart/form-data">
                                        <div class="swatch clearfix swatch-1 option2" data-option-index="1">
                                            <div class="product-form__item">
                                                <label class="header">Size: <span class="slVariant"><%= product.getSize()%></span></label>
                                            </div>
                                        </div>

                                        <!-- Product Action -->
                                        <div class="product-action clearfix">
                                            <div class="product-form__item--quantity">
                                                <div class="wrapQtyBtn">
                                                    <div class="qtyField">
                                                        <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                        <input type="text" id="Quantity" name="quantity" value="1" class="product-form__input qty">
                                                        <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                            </div>                                
                                            <div class="product-form__item--submit">
                                                <button type="button" name="add" class="btn product-form__cart-submit">
                                                    <span>Add to cart</span>
                                                </button>
                                            </div>

                                        </div>
                                        <!-- End Product Action -->
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!--End-product-single-->
                    </div>
                    <!--#ProductSection-product-tt-->
                </div>
                <!--MainContent-->
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
                <!-- Photoswipe Gallery -->
                <script src="assets/js/vendor/photoswipe.min.js"></script>
                <script src="assets/js/vendor/photoswipe-ui-default.min.js"></script>
                <script>
                    $(function () {
                        var $pswp = $('.pswp')[0],
                                image = [],
                                getItems = function () {
                                    var items = [];
                                    $('.lightboximages a').each(function () {
                                        var $href = $(this).attr('href'),
                                                $size = $(this).data('size').split('x'),
                                                item = {
                                                    src: $href,
                                                    w: $size[0],
                                                    h: $size[1]
                                                }
                                        items.push(item);
                                    });
                                    return items;
                                }
                        var items = getItems();

                        $.each(items, function (index, value) {
                            image[index] = new Image();
                            image[index].src = value['src'];
                        });
                        $('.prlightbox').on('click', function (event) {
                            event.preventDefault();

                            var $index = $(".active-thumb").parent().attr('data-slick-index');
                            $index++;
                            $index = $index - 1;

                            var options = {
                                index: $index,
                                bgOpacity: 0.9,
                                showHideOpacity: true
                            }
                            var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                            lightBox.init();
                        });
                    });
                </script>
            </div>
        <%
        }
        %>
        <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap"><div class="pswp__container"><div class="pswp__item"></div><div class="pswp__item"></div><div class="pswp__item"></div></div><div class="pswp__ui pswp__ui--hidden"><div class="pswp__top-bar"><div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button><button class="pswp__button pswp__button--share" title="Share"></button><button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button><button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button><div class="pswp__preloader"><div class="pswp__preloader__icn"><div class="pswp__preloader__cut"><div class="pswp__preloader__donut"></div></div></div></div></div><div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap"><div class="pswp__share-tooltip"></div></div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button><button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button><div class="pswp__caption"><div class="pswp__caption__center"></div></div></div></div></div>

    </body>
</html>
