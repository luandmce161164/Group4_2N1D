<%-- 
    Document   : form-add-don-hang
    Created on : Feb 19, 2023, 6:44:50 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Add New Order</title>
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
                <li><a class="app-menu__item " href="<%= getServletContext().getContextPath()%>/Admin/Customer"><i class='app-menu__icon bx bx-id-card'></i>
                        <span class="app-menu__label">Customer Management</span></a></li>      
                <li><a class="app-menu__item " href="<%= getServletContext().getContextPath()%>/Admin/Product"><i
                            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
                </li>
                <li><a class="app-menu__item active" href="<%= getServletContext().getContextPath()%>/Admin/Order"><i class='app-menu__icon bx bx-task'></i><span
                            class="app-menu__label">Order Management</span></a></li>      
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Report"><i
                            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sales Statistics</span></a>
                </li>      
            </ul>
        </aside>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Order">List Of Orders</a></li>
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Order/Add">Add new order</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Add New Order</h3>
                        <div class="tile-body">
                            <form class="row" action="OrderController" method="post">                               
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Customer's ID</label>
                                    <input class="form-control" type="text" name="txtCustomerID"require>
                                </div>
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Product's ID</label>
                                    <input class="form-control" type="text" name="txtProductID"require>
                                </div>
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Date</label>
                                    <input class="form-control" type="text" name="txtDate"require>
                                </div>
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Quantity</label>
                                    <input class="form-control" type="text" name="txtQuantity"require>
                                </div>                             
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Total Price</label>
                                    <input class="form-control" type="text" name="txtTPrice" require>
                                </div>                                                               
                                <div class="form-group col-md-4">
                                    <label for="exampleSelect1" class="control-label">Status</label>
                                    <select class="form-control" id="exampleSelect1" name="txtStatus" require>
                                        <option>-- Select status --</option>
                                        <option value="3">Waiting for confirm</option>
                                        <option value="1">Delivery</option>
                                        <option value="2">Received</option>                                        
                                        <option value="0">Cancel</option>                                        
                                    </select>
                                </div>                                

                        </div>
                        <button class="btn btn-save" type="Submit" value="submit" name="btnInsert">Save</button>
                        <a class="btn btn-cancel" href="<%= getServletContext().getContextPath()%>/Admin/Order">Cancel</a>
                        </form> 
                    </div>
                    </main>
                    <!-- Essential javascripts for application to work-->
                    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/main.js"></script>
                    <!-- The javascript plugin to display page loading on top-->
                    <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
                    </body>
                    </html>
