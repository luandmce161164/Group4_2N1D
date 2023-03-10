<%-- 
    Document   : table-data-product
    Created on : Feb 19, 2023, 6:46:19 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Product Management</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin_css.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">          
    </head>

    <body onload="time()" class="app sidebar-mini rtl">        
    </style>        
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
            <li><a class="app-menu__item active" href="<%= getServletContext().getContextPath()%>/Admin/Product"><i
                        class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
            </li>
            <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Order"><i class='app-menu__icon bx bx-task'></i><span
                        class="app-menu__label">Order Management</span></a></li>      
            <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Report"><i
                        class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sales Statistics</span></a>
            </li>      
        </ul>
    </aside>
    <main class="app-content">
        <div class="app-title">
            <ul class="app-breadcrumb breadcrumb side">
                <li class="breadcrumb-item active"><a href="<%= getServletContext().getContextPath()%>/Admin/Product"><b>List of Product</b></a></li>
            </ul>
            <div id="clock"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="row element-button">
                            <div class="col-sm-2">

                                <a class="btn btn-add btn-sm" href="<%= getServletContext().getContextPath()%>/Admin/Product/Add" title="Thêm"><i class="fas fa-plus"></i>
                                    Add New Product</a>
                            </div>                                                        
                        </div>
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr>                                        
                                    <th>Product ID</th>
                                    <th>Product Name</th>
                                    <th>Product Price</th>
                                    <th>Image</th>                                    
                                    <th>Category</th>
                                    <th>Publish Date</th>                                    
                                    <th>Status</th>
                                    <th>Description</th>
                                    <th>Size</th>
                                    <th>Quantity</th>                                   
                                    <th>Feature</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ProductDAO dao = new ProductDAO();
                                    ResultSet rs = dao.ListAllProduct();
                                    while (rs.next()) {
                                %>   
                                <tr>                                        
                                    <td><%= rs.getString("product_id")%></td>
                                    <td><%= rs.getString("product_name")%></td>
                                    <td><%= rs.getInt("product_price")%></td>                                   
                                    <td><img src="${pageContext.request.contextPath}/<%= rs.getString("image")%>" alt="" width="100px"></td>                                    
                                    <td><%= rs.getString("category_name")%></td>                                    
                                    <td><%= rs.getDate("publish_date")%></td>

                                    <%
                                        if (rs.getInt("status") == 1) {
                                    %>
                                    <td><span class="badge bg-success">On Stock</span></td>
                                    <%
                                    } else {
                                    %> 
                                    <td><span class="badge bg-danger">Out of Stock</span></td>
                                    <%
                                        }
                                    %> 
                                    <td><%= rs.getString("detail_product")%></td>
                                    <td><%= rs.getString("size")%></td>
                                    <td><%= rs.getInt("quantity")%></td>                                    
                                    <td>
                                        <button onclick="deleteProduct(this)" id="delete_<%= rs.getString("product_id")%>" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                            <i class="fas fa-trash-alt"></i>
                                        </button>
                                        <a href="<%= getServletContext().getContextPath()%>/Admin/Product/Edit/<%= rs.getString("product_id")%>">
                                            <button class="btn btn-primary btn-sm edit" type="button">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                        </a>
                                    </td>
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
    </main>


    <!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/src/jquery.table2excel.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <!--The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <!-- Data table plugin-->        
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.dataTable.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/dataTables.bootstrap.min.js"></script>  
    <script type="text/javascript">
                                            $('#sampleTable').DataTable();
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
    <script>
        function deleteRow(r) {
            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("sampleTable").deleteRow(i);
        }

        function deleteProduct(control) {
            swal({
                title: "Cảnh báo",
                text: "Bạn có chắc chắn là muốn xóa sản phẩm này?",
                buttons: ["Hủy bỏ", "Đồng ý"]
            })
            .then((willDelete) => {
                if (willDelete) {
                    var product_id = control.id.split('_')[1];
                    var urlDelete = window.location.href + "/Delete/" + product_id;
                    window.location.href = urlDelete;
                    //swal("Đã xóa thành công.!", {});
                }
            });
        }


        oTable = $('#sampleTable').dataTable();
        $('#all').click(function (e) {
            $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
            e.stopImmediatePropagation();
        });
    </script>        
</body>

</html>
