<%-- 
    Document   : quan-ly-bao-cao
    Created on : Feb 19, 2023, 6:44:38 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>View Sale Statistics</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin_css.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <!-- Navbar-->
        <header class="app-header">
            <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                            aria-label="Hide Sidebar"></a>
            <!-- Navbar Right Menu-->
            <ul class="app-nav">


                <!-- User Menu-->
                <li><a class="app-nav__item" href="/index.jsp"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <aside class="app-sidebar">
            <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="${pageContext.request.contextPath}/images/logo-removebg-preview.png" width="50px"
                                                alt="User Image">
                <div>        
                    <p class="app-sidebar__user-designation">Hi! Welcome Back</p>
                </div>
            </div>
            <hr>
            <ul class="app-menu">      
                <li><a class="app-menu__item " href="<%= getServletContext().getContextPath()%>/"><i class='app-menu__icon bx bx-tachometer'></i><span
                            class="app-menu__label">Dash Board</span></a></li>
                <li><a class="app-menu__item " href="<%= getServletContext().getContextPath()%>/Admin/Customer"><i class='app-menu__icon bx bx-id-card'></i> <span
                            class="app-menu__label">Customer Management</span></a></li>      
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Product"><i
                            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
                </li>
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Order"><i class='app-menu__icon bx bx-task'></i><span
                            class="app-menu__label">Order Management</span></a></li>      
                <li><a class="app-menu__item active" href="<%= getServletContext().getContextPath()%>/Admin/Report"><i
                            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sale Statistics</span></a>
                </li>      
            </ul>
        </aside>
        <main class="app-content">
            <div class="row">
                <div class="col-md-12">
                    <div class="app-title">
                        <ul class="app-breadcrumb breadcrumb">
                            <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Report"><b>View Sales Statistics</b></a></li>
                        </ul>
                        <div id="clock"></div>
                    </div>
                </div>
            </div>
            <div class="row"> 
                <%
                    ProductDAO dao = new ProductDAO();
                    int a = dao.getNumberOfProduct();
                %>
                <div class="col-md-6 col-lg-3">
                    <div class="widget-small info coloured-icon"><i class='icon bx bxs-purchase-tag-alt fa-3x' ></i>
                        <div class="info">
                            <h4>Total Products</h4>
                            <p><b><%= a%> Products</b></p>
                        </div>
                    </div>
                </div>
                <%
                    int a1 = dao.getNumberOfOrders();
                %>
                <div class="col-md-6 col-lg-3">
                    <div class="widget-small warning coloured-icon"><i class='icon fa-3x bx bxs-shopping-bag-alt'></i>
                        <div class="info">
                            <h4>Total Orders</h4>
                            <p><b><%= a1%> Orders</b></p>
                        </div>
                    </div>
                </div>      
                <%
                    int a2 = dao.getTotalIncome();
                %>
                <div class="col-md-6 col-lg-3">
                    <div class="widget-small primary coloured-icon"><i class='icon fa-3x bx bxs-chart' ></i>
                        <div class="info">
                            <h4>Total Income</h4>
                            <p><b><%= a2%> đ</b></p>
                        </div>
                    </div>
                </div>   
                <%
                    int a3 = dao.getOutofStock();
                %>
                <div class="col-md-6 col-lg-3">
                    <div class="widget-small warning coloured-icon"><i class='icon fa-3x bx bxs-tag-x' ></i>
                        <div class="info">
                            <h4>Out of stock</h4>
                            <p><b><%= a3%> Product</b></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">                     
                <%
                    int a4 = dao.getTotalCancelOrder();
                %>
                <div class="col-md-6 col-lg-3">
                    <div class="widget-small danger coloured-icon"><i class='icon fa-3x bx bxs-receipt' ></i>
                        <div class="info">
                            <h4>order is canceled</h4>
                            <p><b><%= a4%> Orders</b></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div>
                            <h3 class="tile-title">Best Seller</h3>
                        </div>
                        <div class="tile-body">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Name</th>
                                        <th>Image</th>
                                        <th>Price</th>
                                        <th>Product Detail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rss = dao.getBestSeller();
                                        while (rss.next()) {
                                    %> 
                                    <tr>
                                        <td><%= rss.getString("product_id")%></td>                                      
                                        <td><%= rss.getString("product_name")%></td>
                                        <td><img src="${pageContext.request.contextPath}/<%= rss.getString("image")%>" alt="" width="100px"></td>
                                        <td><%= rss.getInt("product_price")%></td> 
                                        <td><%= rss.getString("detail_product")%></td> 
                                    </tr> 
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div>
                            <h3 class="tile-title">Total Orders</h3>
                        </div>
                        <div class="tile-body">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Customer Name</th>
                                        <th>Product Name</th>
                                        <th>Quantity</th>
                                        <th>Order Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rs = dao.ListOrderReport();
                                        while (rs.next()) {
                                    %> 
                                    <tr>
                                        <td><%= rs.getInt("order_id")%></td>
                                        <td><%= rs.getString("name")%></td>
                                        <td><%= rs.getString("product_name")%></td>
                                        <td><%= rs.getInt("quantity")%></td>
                                        <td><%= rs.getInt("order_price")%></td>                                        
                                    </tr>    
                                    <%
                                        }
                                    %>
                                    <tr>
                                        <th colspan="4">Total</th>
                                        <td><%= a2%></td>
                                    </tr>                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div>
                            <h3 class="tile-title">Out Of Stock</h3>
                        </div>
                        <div class="tile-body">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                        <th>Product ID</th>
                                        <th>Product Name</th>
                                        <th>Image</th>
                                        <th>Quantity</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                        <th>Detail Product</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rst = dao.getDetailOutofStock();
                                        while (rst.next()) {
                                    %> 
                                    <tr>
                                        <td><%= rst.getString("product_id")%></td>                                      
                                        <td><%= rst.getString("product_name")%></td>
                                        <td><img src="${pageContext.request.contextPath}/<%= rst.getString("image")%>" alt="" width="100px"></td>
                                        <td><%= rst.getInt("quantity")%></td>                                          
                                        <td><span class="badge bg-danger">Out of Stock</span></td>  
                                        <td><%= rst.getInt("product_price")%></td> 
                                        <td><%= rst.getString("detail_product")%></td> 
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>                
            <div class="text-right" style="font-size: 12px">
                <p><b> Code by 2N1D Dev Team </b></p>
            </div>
        </main>
        <!-- Essential javascripts for application to work-->
        <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
        <!-- Page specific javascripts-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/chart.js"></script>
        <script type="text/javascript">
        var data = {
            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
            datasets: [{
                    label: "Dữ liệu đầu tiên",
                    fillColor: "rgba(255, 255, 255, 0.158)",
                    strokeColor: "black",
                    pointColor: "rgb(220, 64, 59)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "green",
                    data: [20, 59, 90, 51, 56, 100, 40, 60, 78, 53, 33, 81]
                },
                {
                    label: "Dữ liệu kế tiếp",
                    fillColor: "rgba(255, 255, 255, 0.158)",
                    strokeColor: "rgb(220, 64, 59)",
                    pointColor: "black",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "green",
                    data: [48, 48, 49, 39, 86, 10, 50, 70, 60, 70, 75, 90]
                }
            ]
        };


        var ctxl = $("#lineChartDemo").get(0).getContext("2d");
        var lineChart = new Chart(ctxl).Line(data);

        var ctxb = $("#barChartDemo").get(0).getContext("2d");
        var barChart = new Chart(ctxb).Bar(data);
        </script>
        <!-- Google analytics script-->
        <script type="text/javascript">
            if (document.location.hostname == 'pratikborsadiya.in') {
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-72504830-1', 'auto');
                ga('send', 'pageview');
            }
        </script>
        <script type="text/javascript">
            //Thời Gian
            function time() {
                var today = new Date();
                var weekday = new Array(7);
                weekday[0] = "Sunday";
                weekday[1] = "Monday";
                weekday[2] = "Tuesday";
                weekday[3] = "Wednesday";
                weekday[4] = "Thursday";
                weekday[5] = "Friday";
                weekday[6] = "Saturday";
                var day = weekday[today.getDay()];
                var dd = today.getDate();
                var mm = today.getMonth() + 1;
                var yyyy = today.getFullYear();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                nowTime = h + " : " + m + " : " + s;
                if (dd < 10) {
                    dd = '0' + dd
                }
                if (mm < 10) {
                    mm = '0' + mm
                }
                today = day + ', ' + dd + '/' + mm + '/' + yyyy;
                tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                        '</span>';
                document.getElementById("clock").innerHTML = tmp;
                clocktime = setTimeout("time()", "1000", "Javascript");

                function checkTime(i) {
                    if (i < 10) {
                        i = "0" + i;
                    }
                    return i;
                }
            }
        </script>
    </body>

</html>
