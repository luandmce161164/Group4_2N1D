<%-- 
    Document   : quan-ly-bao-cao
    Created on : Feb 19, 2023, 6:44:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>View Sale Statistics</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="css/main.css">
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
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="images/logo-removebg-preview.png" width="50px"
        alt="User Image">
      <div>        
        <p class="app-sidebar__user-designation">Hi! Welcome Back</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">      
      <li><a class="app-menu__item " href="index.jsp"><i class='app-menu__icon bx bx-tachometer'></i><span
            class="app-menu__label">Dash Board</span></a></li>
      <li><a class="app-menu__item " href="table-data-table.jsp"><i class='app-menu__icon bx bx-id-card'></i> <span
            class="app-menu__label">Customer Management</span></a></li>      
      <li><a class="app-menu__item" href="table-data-product.jsp"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Order Management</span></a></li>      
      <li><a class="app-menu__item active" href="quan-ly-bao-cao.jsp"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sale Statistics</span></a>
      </li>      
    </ul>
  </aside>
  <main class="app-content">
    <div class="row">
      <div class="col-md-12">
        <div class="app-title">
          <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><a href="#"><b>View Sales Statistics    </b></a></li>
          </ul>
          <div id="clock"></div>
        </div>
      </div>
    </div>
        <div class="row">            
            <div class="col-md-6 col-lg-3">
                <div class="widget-small info coloured-icon"><i class='icon bx bxs-purchase-tag-alt fa-3x' ></i>
                    <div class="info">
                        <h4>Total Products</h4>
                        <p><b>8580 s???n ph???m</b></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="widget-small warning coloured-icon"><i class='icon fa-3x bx bxs-shopping-bag-alt'></i>
                    <div class="info">
                        <h4>Total Orders</h4>
                        <p><b>457 ????n h??ng</b></p>
                    </div>
                </div>
            </div>            
            <div class="col-md-6 col-lg-3">
                <div class="widget-small primary coloured-icon"><i class='icon fa-3x bx bxs-chart' ></i>
                    <div class="info">
                        <h4>Total Income</h4>
                        <p><b>104.890.000 ??</b></p>
                    </div>
                </div>
            </div>   
            <div class="col-md-6 col-lg-3">
                <div class="widget-small warning coloured-icon"><i class='icon fa-3x bx bxs-tag-x' ></i>
                    <div class="info">
                        <h4>Out of stock</h4>
                        <p><b>1 s???n ph???m</b></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">                     
            
            <div class="col-md-6 col-lg-3">
                <div class="widget-small danger coloured-icon"><i class='icon fa-3x bx bxs-receipt' ></i>
                    <div class="info">
                        <h4>order is canceled</h4>
                        <p><b>2 ????n h??ng</b></p>
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
                                    <th>M?? s???n ph???m</th>
                                    <th>T??n s???n ph???m</th>
                                    <th>Gi?? ti???n</th>
                                    <th>Danh m???c</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>71309005</td>
                                    <td>B??n ??n g??? Theresa</td>
                                    <td>5.600.000 ??</td>
                                    <td>B??n ??n</td>
                                </tr>
                                <tr>
                                    <td>62304003</td>
                                    <td>B??n ??n Vitali m???t ????</td>
                                    <td>33.235.000 ??</td>
                                    <td>B??n ??n</td>
                                </tr>
                                <tr>
                                    <td>72109004</td>
                                    <td>Gh??? l??m vi???c Zuno</td>
                                    <td>3.800.000 ??</td>
                                    <td>Gh??? g???</td>
                                </tr>
                                <tr>
                                    <td>83826226</td>
                                    <td>T??? ly - t??? b??t</td>
                                    <td>2.450.000 ??</td>
                                    <td>T???</td>
                                </tr>
                                <tr>
                                    <td>71304041</td>
                                    <td>B??n ??n m??? r???ng Vegas</td>
                                    <td>21.550.000 ??</td>
                                    <td>B??n th??ng minh</td>
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
                            <h3 class="tile-title">Total Orders</h3>
                        </div>
                        <div class="tile-body">
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                            <th>ID ????n h??ng</th>
                                            <th>Kh??ch h??ng</th>
                                            <th>????n h??ng</th>
                                            <th>S??? l?????ng</th>
                                            <th>T???ng ti???n</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                            <td>MD0837</td>
                                            <td>Tri???u Thanh Ph??</td>
                                            <td>Gh??? l??m vi???c Zuno, B??n ??n g??? Theresa</td>
                                            <td>2 s???n ph???m</td>
                                            <td>9.400.000 ??</td>
                                    </tr>
                                    <tr>
                                            <td>M??8265</td>
                                            <td>Nguy???n Th??? Ng???c C???m</td>
                                            <td>Gh??? ??n g??? Lucy m??u tr???ng</td>
                                            <td>1 s???n ph???m</td>
                                            <td>3.800.000 ??</td>   
                                    </tr>
                                    <tr>
                                            <td>MT9835</td>
                                            <td>?????ng Ho??ng Ph??c</td>
                                            <td>Gi?????ng ng??? Jimmy, B??n ??n m??? r???ng cao c???p Dolas, Gh??? l??m vi???c Zuno</td>
                                            <td>3 s???n ph???m</td>
                                            <td>40.650.000 ??</td>
                                    </tr>
                                    <tr>
                                            <td>ER3835</td>
                                            <td>Nguy???n Th??? M??? Y???n</td>
                                            <td>B??n ??n m??? r???ng Gepa</td>
                                            <td>1 s???n ph???m</td>
                                            <td>16.770.000 ??</td>
                                    </tr>
                                    <tr>
                                            <td>AL3947</td>
                                            <td>Ph???m Th??? Ng???c</td>
                                            <td>B??n ??n Vitali m???t ????, Gh??? ??n g??? Lucy m??u tr???ng</td>
                                            <td>2 s???n ph???m</td>
                                            <td>19.770.000 ??</td>
                                    </tr>
                                    <tr>
                                            <td>QY8723</td>
                                            <td>Ng?? Th??i An</td>
                                            <td>Gi?????ng ng??? Kara 1.6x2m</td>
                                            <td>1 s???n ph???m</td>
                                            <td>14.500.000 ??</td>
                                    </tr>
                                    <tr>
                                       <th colspan="4">T???ng c???ng:</th>
                                        <td>104.890.000 ??</td>
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
                                            <th>M?? s???n ph???m</th>
                                            <th>T??n s???n ph???m</th>
                                            <th>???nh</th>
                                            <th>S??? l?????ng</th>
                                            <th>T??nh tr???ng</th>
                                            <th>Gi?? ti???n</th>
                                            <th>Danh m???c</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                            <td>83826226</td>
                                            <td>T??? ly - t??? b??t</td>
                                            <td><img src="/img-sanpham/tu.jpg" alt="" width="100px;"></td>
                                            <td>0</td>
                                            <td><span class="badge bg-danger">H???t h??ng</span></td>
                                            <td>2.450.000 ??</td>
                                            <td>T???</td>
                                    </tr>
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
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script type="text/javascript" src="js/plugins/chart.js"></script>
    <script type="text/javascript">
    var data = {
      labels: ["Th??ng 1", "Th??ng 2", "Th??ng 3", "Th??ng 4", "Th??ng 5", "Th??ng 6", "Th??ng 7", "Th??ng 8", "Th??ng 9", "Th??ng 10", "Th??ng 11", "Th??ng 12"],
      datasets: [{
          label: "D??? li???u ?????u ti??n",
          fillColor: "rgba(255, 255, 255, 0.158)",
          strokeColor: "black",
          pointColor: "rgb(220, 64, 59)",
          pointStrokeColor: "#fff",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "green",
          data: [20, 59, 90, 51, 56, 100, 40, 60, 78, 53, 33, 81]
        },
        {
          label: "D??? li???u k??? ti???p",
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
</body>

</html>
