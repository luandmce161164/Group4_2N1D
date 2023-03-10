<%-- 
    Document   : index
    Created on : Feb 19, 2023, 6:44:21 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title> Admin Management</title>
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
      <li><a class="app-menu__item active" href="index.jsp"><i class='app-menu__icon bx bx-tachometer'></i><span
            class="app-menu__label">Dash Board</span></a></li>
      <li><a class="app-menu__item " href="table-data-table.jsp"><i class='app-menu__icon bx bx-id-card'></i> <span
            class="app-menu__label">Customer Management</span></a></li>      
      <li><a class="app-menu__item" href="table-data-product.jsp"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Order Management</span></a></li>      
      <li><a class="app-menu__item" href="quan-ly-bao-cao.jsp"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Sale Statistics</span></a>
      </li>      
    </ul>
  </aside>
  <main class="app-content">
    <div class="row">
      <div class="col-md-12">
        <div class="app-title">
          <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><a href="#"><b>Dash Board</b></a></li>
          </ul>
          <div id="clock"></div>
        </div>
      </div>
    </div>
    <div class="row">
      <!--Left-->
      <div class="col-md-12 col-lg-6">
        <div class="row">
       <!-- col-6 -->
       <div class="col-md-6">
        <div class="widget-small primary coloured-icon"><i class='icon bx bxs-user-account fa-3x'></i>
          <div class="info">
            <h4>Total customers</h4>
            <p><b>56 kh??ch h??ng</b></p>
            <p class="info-tong">Total customer managed </p>
          </div>
        </div>
      </div>
       <!-- col-6 -->
          <div class="col-md-6">
            <div class="widget-small info coloured-icon"><i class='icon bx bxs-data fa-3x'></i>
              <div class="info">
                <h4>Total Products</h4>
                <p><b>1850 s???n ph???m</b></p>
                <p class="info-tong">Total product managed.</p>
              </div>
            </div>
          </div>
           <!-- col-6 -->
          <div class="col-md-6">
            <div class="widget-small warning coloured-icon"><i class='icon bx bxs-shopping-bags fa-3x'></i>
              <div class="info">
                <h4>Total orders</h4>
                <p><b>247 ????n h??ng</b></p>
                <p class="info-tong">Total sales invoices for the month</p>
              </div>
            </div>
          </div>
           <!-- col-6 -->
          <div class="col-md-6">
            <div class="widget-small danger coloured-icon"><i class='icon bx bxs-error-alt fa-3x'></i>
              <div class="info">
                <h4>Out of stock</h4>
                <p><b>4 s???n ph???m</b></p>
                <p class="info-tong">The number of warning products out of stock needs to be added</p>
              </div>
            </div>
          </div>
           <!-- col-12 -->
           <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">Status order</h3>
              <div>
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>Order ID</th>
                      <th>Customer</th>
                      <th>Total Money</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>AL3947</td>
                      <td>Ph???m Th??? Ng???c</td>
                      <td>
                        19.770.000 ??
                      </td>
                      <td><span class="badge bg-info">Ch??? x??? l??</span></td>
                    </tr>
                    <tr>
                      <td>ER3835</td>
                      <td>Nguy???n Th??? M??? Y???n</td>
                      <td>
                        16.770.000 ??	
                      </td>
                      <td><span class="badge bg-warning">??ang v???n chuy???n</span></td>
                    </tr>
                    <tr>
                      <td>MD0837</td>
                      <td>Tri???u Thanh Ph??</td>
                      <td>
                        9.400.000 ??	
                      </td>
                      <td><span class="badge bg-success">???? ho??n th??nh</span></td>
                    </tr>
                    <tr>
                      <td>MT9835</td>
                      <td>?????ng Ho??ng Ph??c	</td>
                      <td>
                        40.650.000 ??	
                      </td>
                      <td><span class="badge bg-danger">???? h???y	</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- / div tr???ng-->
            </div>
           </div>
            <!-- / col-12 -->            
        </div>
      </div>
      <!--END left-->
      <!--Right-->
      <div class="col-md-12 col-lg-6">
        <div class="row">
         <div class="col-md-12">
                <div class="tile">
                  <h3 class="tile-title">New Customer</h3>
                <div>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Date Of Birth</th>
                        <th>Phone Number</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>#183</td>
                        <td>H???t v???t mu???i</td>
                        <td>21/7/1992</td>
                        <td><span class="tag tag-success">0921387221</span></td>
                      </tr>
                      <tr>
                        <td>#219</td>
                        <td>B??nh tr??ng tr???n</td>
                        <td>30/4/1975</td>
                        <td><span class="tag tag-warning">0912376352</span></td>
                      </tr>
                      <tr>
                        <td>#627</td>
                        <td>C??t rang b??</td>
                        <td>12/3/1999</td>
                        <td><span class="tag tag-primary">01287326654</span></td>
                      </tr>
                      <tr>
                        <td>#175</td>
                        <td>H??? ti???u nam vang</td>
                        <td>4/12/20000</td>
                        <td><span class="tag tag-danger">0912376763</span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>

              </div>
            </div>          
        </div>
      </div>
      <!--END right-->
    </div>


    <div class="text-center" style="font-size: 13px">
      <p><b>
          <script type="text/javascript">
            document.write(new Date().getFullYear());
          </script> - 2N1D Dev Team
        </b></p>
    </div>
  </main>
  <script src="js/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="js/popper.min.js"></script>
  <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
  <!--===============================================================================================-->
  <script src="js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
  <script src="js/main.js"></script>
  <!--===============================================================================================-->
  <script src="js/plugins/pace.min.js"></script>
  <!--===============================================================================================-->
  <script type="text/javascript" src="js/plugins/chart.js"></script>
  <!--===============================================================================================-->
  <script type="text/javascript">
    var data = {
      labels: ["Th??ng 1", "Th??ng 2", "Th??ng 3", "Th??ng 4", "Th??ng 5", "Th??ng 6"],
      datasets: [{
        label: "D??? li???u ?????u ti??n",
        fillColor: "rgba(255, 213, 59, 0.767), 212, 59)",
        strokeColor: "rgb(255, 212, 59)",
        pointColor: "rgb(255, 212, 59)",
        pointStrokeColor: "rgb(255, 212, 59)",
        pointHighlightFill: "rgb(255, 212, 59)",
        pointHighlightStroke: "rgb(255, 212, 59)",
        data: [20, 59, 90, 51, 56, 100]
      },
      {
        label: "D??? li???u k??? ti???p",
        fillColor: "rgba(9, 109, 239, 0.651)  ",
        pointColor: "rgb(9, 109, 239)",
        strokeColor: "rgb(9, 109, 239)",
        pointStrokeColor: "rgb(9, 109, 239)",
        pointHighlightFill: "rgb(9, 109, 239)",
        pointHighlightStroke: "rgb(9, 109, 239)",
        data: [48, 48, 49, 39, 86, 10]
      }
      ]
    };
    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);

    var ctxb = $("#barChartDemo").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
  </script>
  <script type="text/javascript">
    //Th???i Gian
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
