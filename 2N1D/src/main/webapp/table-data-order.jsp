<%-- 
    Document   : table-data-order
    Created on : Feb 19, 2023, 6:46:32 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Order Management</title>
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
            <!-- Navbar Right Menu-->
            <ul class="app-nav">
                <!-- SignOut-->
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
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Product"><i
                            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
                </li>
                <li><a class="app-menu__item active" href="<%= getServletContext().getContextPath()%>/Admin/Order"><i class='app-menu__icon bx bx-task'></i><span
                            class="app-menu__label">Order Management</span></a></li>     
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/Admin/Report"><i
                            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Sale Statistics</span></a>
                </li>

            </ul>
        </aside>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="<%= getServletContext().getContextPath()%>/Admin/Order"><b>List of order</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">                            
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>                    
                                        <th>Order ID</th>
                                        <th>Order Date</th>
                                        <th>Account's Name</th>
                                        <th>Product's Name</th>
                                        <th>Quantity</th>
                                        <th>Total Price</th>
                                        <th>Status</th>
                                        <th>Feature</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ProductDAO dao = new ProductDAO();
                                        ResultSet rs = dao.ListAllOrder();
                                        while (rs.next()) {
                                    %>   
                                    <tr>                   
                                        <td><%= rs.getInt("order_id")%></td>
                                        <td><%= rs.getDate("order_date")%></td>
                                        <td><%= rs.getString("name")%></td>
                                        <td><%= rs.getString("product_name")%></td>
                                        <td><%= rs.getInt("quantity")%></td>
                                        <td><%= String.format("%,d" ,rs.getInt("order_price"))%></td>
                                        <%
                                            if (rs.getInt("status") == 0) {
                                        %>
                                        <td><span class="badge bg-danger">Cancel</span></td>
                                        <%
                                        } else if (rs.getInt("status") == 1) {
                                        %>
                                        <td><span class="badge bg-info">Delivering</span></td>
                                        <%
                                        } else if (rs.getInt("status") == 2) {
                                        %>
                                        <td><span class="badge bg-success">Received</span></td>
                                        <%
                                        } else {
                                        %>
                                        <td><span class="badge bg-warning">Waiting to confirm</span></td>
                                        <%
                                            }
                                        %>                    
                                        <td><button onclick="deleteOrder(this)" id="delete_<%= rs.getInt("order_id")%>" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                            <i class="fas fa-trash-alt"></i>
                                        </button><a href="<%= getServletContext().getContextPath()%>/Admin/Order/Edit/<%= rs.getInt("order_id")%>"><button class="btn btn-primary btn-sm edit" type="button"><i class="fas fa-edit"></i></button> </a>
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
        <script src="${pageContext.request.contextPath}//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/src/jquery.table2excel.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="js/plugins/pace.min.js"></script>
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.dataTable.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">$('#sampleTable').DataTable();</script>
        <script>
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
            //In dữ liệu
            var myApp = new function () {
                this.printTable = function () {
                    var tab = document.getElementById('sampleTable');
                    var win = window.open('', '', 'height=700,width=700');
                    win.document.write(tab.outerHTML);
                    win.document.close();
                    win.print();
                }
            }
            //     //Sao chép dữ liệu
            //     var copyTextareaBtn = document.querySelector('.js-textareacopybtn');

            // copyTextareaBtn.addEventListener('click', function(event) {
            //   var copyTextarea = document.querySelector('.js-copytextarea');
            //   copyTextarea.focus();
            //   copyTextarea.select();

            //   try {
            //     var successful = document.execCommand('copy');
            //     var msg = successful ? 'successful' : 'unsuccessful';
            //     console.log('Copying text command was ' + msg);
            //   } catch (err) {
            //     console.log('Oops, unable to copy');
            //   }
            // });


            //Modal
            $("#show-emp").on("click", function () {
                $("#ModalUP").modal({backdrop: false, keyboard: false})
            });
        </script>
        <script>
            function deleteRow(r) {
                var i = r.parentNode.parentNode.rowIndex;
                document.getElementById("sampleTable").deleteRow(i);
            }
            function deleteOrder(control) {
            swal({
                title: "Alert",
                text: "Are you sure to delete this order?",
                buttons: ["Cancel", "Accept"]
            })
            .then((willDelete) => {
                if (willDelete) {
                    var order_id = control.id.split('_')[1];
                    var urlDelete = window.location.href + "/Delete/" + order_id;
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
