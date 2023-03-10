<%-- 
    Document   : table-data-table
    Created on : Feb 19, 2023, 6:46:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Customer Management</title>
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
      <li><a class="app-menu__item active" href="table-data-table.jsp"><i class='app-menu__icon bx bx-id-card'></i>
          <span class="app-menu__label">Customer Management</span></a></li>    
      <li><a class="app-menu__item" href="table-data-product.jsp"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Product Management</span></a>
      </li>
      <li><a class="app-menu__item" href="table-data-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Order Management</span></a></li>   
      <li><a class="app-menu__item" href="quan-ly-bao-cao.jsp"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sale Statistics</span></a>
      </li>      
    </ul>
  </aside>
  <main class="app-content">
    <div class="app-title">
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item active"><a href="#"><b>List of customer</b></a></li>
      </ul>
      <div id="clock"></div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <div class="tile-body">

            <div class="row element-button">
              <div class="col-sm-2">

                <a class="btn btn-add btn-sm" href="form-add-khach-hang.jsp" title="Th??m"><i class="fas fa-plus"></i>
                  Add New Customer</a>
              </div>              
              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm" type="button" title="X??a" onclick="myFunction(this)"><i
                    class="fas fa-trash-alt"></i> Delete All </a>
              </div>
            </div>
            <table class="table table-hover table-bordered js-copytextarea" cellpadding="0" cellspacing="0" border="0"
              id="sampleTable">
              <thead>
                <tr>
                  <th width="10"><input type="checkbox" id="all"></th>
                  <th>ID kh??ch h??ng</th>
                  <th width="150">H??? v?? t??n</th>                  
                  <th width="300">?????a ch???</th>
                  <th>Ng??y sinh</th>
                  <th>Gi???i t??nh</th>
                  <th>S??T</th>                  
                  <th width="100">T??nh n??ng</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td width="10"><input type="checkbox" name="check1" value="1"></td>
                  <td>#CD12837</td>
                  <td>H??? Th??? Thanh Ng??n</td>                  
                  <td>155-157 Tr???n Qu???c Th???o, Qu???n 3, H??? Ch?? Minh </td>
                  <td>12/02/1999</td>
                  <td>N???</td>
                  <td>0926737168</td>                  
                  <td class="table-td-center"><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                      onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox" name="check2" value="2"></td>
                  <td>#SX22837</td>
                  <td>Tr???n Kh??? ??i</td>                  
                  <td>6 Nguy???n L????ng B???ng, T??n Ph??, Qu???n 7, H??? Ch?? Minh</td>
                  <td>22/12/1999</td>
                  <td>N???</td>
                  <td>0931342432</td>                  
                  <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a"
                      onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox" name="check3" value="3"></td>
                  <td>#LO2871</td>
                  <td>Ph???m Thu C??c</td>                  
                  <td>S??? 3 H??a B??nh, Ph?????ng 3, Qu???n 11, H??? Ch?? Minh </td>
                  <td>02/06/1998</td>
                  <td>N???</td>
                  <td>0931491997</td>                 
                  <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a" onclick="myFunction()"><i
                        class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox"></td>
                  <td>#SR28746</td>
                  <td>Tr???n Anh Khoa</td>                  
                  <td>19 ???????ng Nguy???n H???u Th???, T??n H??ng, Qu???n 7, H??? Ch?? Minh </td>
                  <td>18/02/1995</td>
                  <td>Nam</td>
                  <td>0916706633</td>                  
                  <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a" onclick="myFunction()"><i
                        class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox"></td>
                  <td>#KJS276</td>
                  <td>Nguy???n Th??nh Nh??n</td>                  
                  <td>S??? 13, T??n Thu???n ????ng, Qu???n 7, H??? Ch?? Minh </td>
                  <td>10/03/1996</td>
                  <td>Nam</td>
                  <td>0971038066</td>                  
                  <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a" onclick="myFunction()"><i
                        class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox"></td>
                  <td>#BS76228</td>
                  <td>Nguy???n ?????ng Tr???ng Nh??n</td>                  
                  <td>59C Nguy???n ????nh Chi???u, Qu???n 3, H??? Ch?? Minh </td>
                  <td>23/07/1996</td>
                  <td>Nam</td>
                  <td>0846881155</td>                  
                  <td><button class="btn btn-primary btn-sm trash" type="button" title="X??a" onclick="myFunction()"><i
                        class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="S???a" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td width="10"><input type="checkbox"></td>
                  <td>#YUI21376</td>
                  <td>Nguy???n Th??? Mai</td>                
                  <td>???????ng S??? 3, T??n T???o A, B??nh T??n, H??? Ch?? Minh</td>
                  <td>09/12/2000</td>
                  <td>N??? </td>
                  <td>0836333037</td>                  
                  <td><button class="btn btn-primary btn-sm trash" title="X??a" onclick="myFunction()"><i
                        class="fas fa-trash-alt"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" title="S???a" id="show-emp" data-toggle="modal"
                      data-target="#ModalUP"><i class="fas fa-edit"></i>
                    </button>
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
                <h5>Ch???nh s???a th??ng tin kh??ch h??ng c?? b???n</h5>
              </span>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-6">
              <label class="control-label">ID kh??ch h??ng</label>
              <input class="form-control" type="text" required value="#CD2187" disabled>
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">H??? v?? t??n</label>
              <input class="form-control" type="text" required value="V?? Tr?????ng">
            </div>
            <div class="form-group  col-md-6">
              <label class="control-label">S??? ??i???n tho???i</label>
              <input class="form-control" type="number" required value="09267312388">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">?????a ch??? email</label>
              <input class="form-control" type="text" required value="truong.vd2000@gmail.com">
            </div>
            <div class="form-group col-md-6">
              <label class="control-label">Ng??y sinh</label>
              <input class="form-control" type="date" value="15/03/2000">
            </div>
<!--            <div class="form-group  col-md-6">
              <label for="exampleSelect1" class="control-label">Ch???c v???</label>
              <select class="form-control" id="exampleSelect1">
                <option>B??n h??ng</option>
                <option>T?? v???n</option>
                <option>D???ch v???</option>
                <option>Thu Ng??n</option>
                <option>Qu???n kho</option>
                <option>B???o tr??</option>
                <option>Ki???m h??ng</option>
                <option>B???o v???</option>
                <option>T???p v???</option>
              </select>
            </div>-->
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
  <script type="text/javascript">$('#sampleTable').DataTable();</script>
  <script>
    function deleteRow(r) {
      var i = r.parentNode.parentNode.rowIndex;
      document.getElementById("myTable").deleteRow(i);
    }
    jQuery(function () {
      jQuery(".trash").click(function () {
        swal({
          title: "C???nh b??o",
         
          text: "B???n c?? ch???c ch???n l?? mu???n x??a kh??ch h??ng n??y?",
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

    //EXCEL
    // $(document).ready(function () {
    //   $('#').DataTable({

    //     dom: 'Bfrtip',
    //     "buttons": [
    //       'excel'
    //     ]
    //   });
    // });


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
    //In d??? li???u
    var myApp = new function () {
      this.printTable = function () {
        var tab = document.getElementById('sampleTable');
        var win = window.open('', '', 'height=700,width=700');
        win.document.write(tab.outerHTML);
        win.document.close();
        win.print();
      }
    }
    //     //Sao ch??p d??? li???u
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
      $("#ModalUP").modal({ backdrop: false, keyboard: false })
    });
  </script>
</body>

</html>
