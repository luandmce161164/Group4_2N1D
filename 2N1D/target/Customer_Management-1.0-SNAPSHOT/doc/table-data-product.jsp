<%-- 
    Document   : table-data-product
    Created on : Feb 19, 2023, 6:46:19 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Product Management</title>
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
      <li><a class="app-menu__item " href="table-data-table.jsp"><i class='app-menu__icon bx bx-id-card'></i>
          <span class="app-menu__label">Customer Management</span></a></li>      
      <li><a class="app-menu__item active" href="table-data-product.jsp"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Order Management</span></a></li>      
      <li><a class="app-menu__item" href="quan-ly-bao-cao.jsp"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sales Statistics</span></a>
      </li>      
    </ul>
  </aside>
    <main class="app-content">
        <div class="app-title">
            <ul class="app-breadcrumb breadcrumb side">
                <li class="breadcrumb-item active"><a href="#"><b>List of Product</b></a></li>
            </ul>
            <div id="clock"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div class="row element-button">
                            <div class="col-sm-2">
              
                              <a class="btn btn-add btn-sm" href="form-add-san-pham.jsp" title="Th??m"><i class="fas fa-plus"></i>
                               Add New Product</a>
                            </div>                            
                            <div class="col-sm-2">
                              <a class="btn btn-delete btn-sm" type="button" title="X??a" onclick="myFunction(this)"><i
                                  class="fas fa-trash-alt"></i> Delete All </a>
                            </div>
                          </div>
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr>
                                    <th width="10"><input type="checkbox" id="all"></th>
                                    <th>M?? s???n ph???m</th>
                                    <th>T??n s???n ph???m</th>
                                    <th>???nh</th>
                                    <th>S??? l?????ng</th>
                                    <th>T??nh tr???ng</th>
                                    <th>Gi?? ti???n</th>
                                    <th>Danh m???c</th>
                                    <th>Ch???c n??ng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71309005</td>
                                    <td>B??n ??n g??? Theresa</td>
                                    <td><img src="img-sanpham/theresa.jpg" alt="" width="100px;"></td>
                                    <td>40</td>
                                    <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>5.600.000 ??</td>
                                    <td>B??n ??n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i> 
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>61304005</td>
                                    <td>B??n ??n Reno m???t ????</td>
                                    <td><img src="img-sanpham/reno.jpg" alt="" width="100px;"></td>
                                    <td>70</td>
                                    <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>24.200.000 ??</td>
                                    <td>B??n ??n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>62304003</td>
                                    <td>B??n ??n Vitali m???t ????</td>
                                    <td><img src="img-sanpham/matda.jpg" alt="" width="100px;"></td>
                                    <td>40</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>33.235.000 ??</td>
                                    <td>B??n ??n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>

                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72638003</td>
                                    <td>Gh??? ??n g??? Theresa</td>
                                    <td><img src="img-sanpham/ghethera.jpg" alt="" width="100px;"></td>
                                    <td>50</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>950.000 ??</td>
                                    <td>Gh??? g???</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button> 
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72109004</td>
                                    <td>Gh??? l??m vi???c Zuno</td>
                                    <td><img src="img-sanpham/zuno.jpg" alt="" width="100px;"></td>
                                    <td>50</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>3.800.000 ??</td>
                                    <td>Gh??? g???</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>82716001</td>
                                    <td>Gh??? ??n Vitali</td>
                                    <td><img src="img-sanpham/vita.jpg" alt="" width="100px;"></td>
                                    <td>55</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>4.600.000 ??</td>
                                    <td>Gh??? g???</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>72109001</td>
                                    <td>Gh??? ??n g??? Lucy m??u tr???ng</td>
                                    <td><img src="img-sanpham/lucy.jpg" alt="" width="100px;"></td>
                                    <td>38</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>1.100.000 ??</td>
                                    <td>Gh??? g???</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i> </button>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304041</td>
                                    <td>B??n ??n m??? r???ng Vegas</td>
                                    <td><img src="img-sanpham/vegas.jpg" alt="" width="100px;"></td>
                                    <td>80</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>21.550.000 ??</td>
                                    <td>B??n th??ng minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304037</td>
                                    <td>B??n ??n m??? r???ng Gepa</td>
                                    <td><img src="img-sanpham/banan.jpg" alt="" width="100px;"></td>
                                    <td>80</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>16.770.000 ??</td>
                                    <td>B??n th??ng minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71304032</td>
                                    <td>B??n ??n m???t g???m v??n ???? Cera</td>
                                    <td><img src="img-sanpham/cera.jpg" alt="" width="100px;"></td>
                                    <td>46</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>20.790.000 ??</td>
                                    <td>B??n th??ng minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>71338008</td>
                                    <td>B??n ??n m??? r???ng cao c???p Dolas</td>
                                    <td><img src="img-sanpham/dolas.jpg" alt="" width="100px;"></td>
                                    <td>66</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>22.650.000 ??</td>
                                    <td>B??n th??ng minh</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>83826226</td>
                                    <td>T??? ly - t??? b??t</td>
                                    <td><img src="img-sanpham/tu.jpg" alt="" width="100px;"></td>
                                    <td>0</td>
                                    <td><span class="badge bg-danger">H??t h??ng</span></td>
                                    <td>2.450.000 ??</td>
                                    <td>T???</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>83252001</td>
                                    <td>Gi?????ng ng??? Thomas</td>
                                    <td><img src="img-sanpham/thomas.jpg" alt="" width="100px;"></td>
                                    <td>73</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>12.950.000 ??</td>
                                    <td>Gi?????ng ng?????i l???n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                      
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>83252002</td>
                                    <td>Gi?????ng ng??? Jimmy</td>
                                    <td><img src="img-sanpham/jimmy.jpg" alt="" width="100px;"></td>
                                    <td>60</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>16.320.000 ??</td>
                                    <td>Gi?????ng ng?????i l???n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>83216008</td>
                                    <td>Gi?????ng ng??? Tara ch??n g???</td>
                                    <td><img src="img-sanpham/tare.jpg" alt="" width="100px;"></td>
                                    <td>65</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>19.600.000 ??</td>
                                    <td>Gi?????ng ng?????i l???n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10"><input type="checkbox" name="check1" value="1"></td>
                                    <td>83216006</td>
                                    <td>Gi?????ng ng??? Kara 1.6x2m</td>
                                    <td><img src="img-sanpham/kara.jpg" alt="" width="100px;"></td>
                                    <td>60</td>
                                     <td><span class="badge bg-success">C??n h??ng</span></td>
                                    <td>14.500.000 ??</td>
                                    <td>Gi?????ng ng?????i l???n</td>
                                    <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                                            onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                        </button>
                                        <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                                   
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

<!--
  MODAL
-->
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
data-keyboard="false">
<div class="modal-dialog modal-dialog-centered" role="document">
  <div class="modal-content">

    <div class="modal-body">
      <div class="row">
        <div class="form-group  col-md-12">
          <span class="thong-tin-thanh-toan">
            <h5>Ch???nh s???a th??ng tin s???n ph???m c?? b???n</h5>
          </span>
        </div>
      </div>
      <div class="row">
        <div class="form-group col-md-6">
            <label class="control-label">M?? s???n ph???m </label>
            <input class="form-control" type="number" value="71309005">
          </div>
        <div class="form-group col-md-6">
            <label class="control-label">T??n s???n ph???m</label>
          <input class="form-control" type="text" required value="B??n ??n g??? Theresa">
        </div>
        <div class="form-group  col-md-6">
            <label class="control-label">S??? l?????ng</label>
          <input class="form-control" type="number" required value="20">
        </div>
        <div class="form-group col-md-6 ">
            <label for="exampleSelect1" class="control-label">T??nh tr???ng s???n ph???m</label>
            <select class="form-control" id="exampleSelect1">
              <option>C??n h??ng</option>
              <option>H???t h??ng</option>
              <option>??ang nh???p h??ng</option>
            </select>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Gi?? b??n</label>
            <input class="form-control" type="text" value="5.600.000">
          </div>
          <div class="form-group col-md-6">
            <label for="exampleSelect1" class="control-label">Danh m???c</label>
            <select class="form-control" id="exampleSelect1">
              <option>B??n ??n</option>
              <option>B??n th??ng minh</option>
              <option>T???</option>
              <option>Gh??? g???</option>
              <option>Gh??? s???t</option>
              <option>Gi?????ng ng?????i l???n</option>
              <option>Gi?????ng tr??? em</option>
              <option>B??n trang ??i???m</option>
              <option>Gi?? ?????</option>
            </select>
          </div>
      </div>
      <BR>      
      <BR>
      <BR>
      <button class="btn btn-save" type="button">L??u l???i</button>
      <a class="btn btn-cancel" data-dismiss="modal" href="#">H???y b???</a>
      <BR>
    </div>
    <div class="modal-footer">
    </div>
  </div>
</div>
</div>
<!--
MODAL
-->

    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="src/jquery.table2excel.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">
        $('#sampleTable').DataTable();
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
    <script>
        function deleteRow(r) {
            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("myTable").deleteRow(i);
        }
        jQuery(function () {
            jQuery(".trash").click(function () {
                swal({
                    title: "C???nh b??o",
                    text: "B???n c?? ch???c ch???n l?? mu???n x??a s???n ph???m n??y?",
                    buttons: ["H???y b???", "?????ng ??"],
                })
                    .then((willDelete) => {
                        if (willDelete) {
                            swal("???? x??a th??nh c??ng.!", {

                            });
                        }
                    });
            });
        });
        oTable = $('#sampleTable').dataTable();
        $('#all').click(function (e) {
            $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
            e.stopImmediatePropagation();
        });
    </script>
</body>

</html>
