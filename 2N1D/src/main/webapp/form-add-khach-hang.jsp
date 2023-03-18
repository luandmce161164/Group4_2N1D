<%-- 
    Document   : form-add-khach-hang
    Created on : Feb 19, 2023, 6:45:13 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Add new customer</title>
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
        <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <script>

            function readURL(input, thumbimage) {
                if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#thumbimage").attr('src', e.target.result);
                    }
                    reader.readAsDataURL(input.files[0]);
                } else { // Sử dụng cho IE
                    $("#thumbimage").attr('src', input.value);

                }
                $("#thumbimage").show();
                $('.filename').text($("#uploadfile").val());
                $('.Choicefile').css('background', '#14142B');
                $('.Choicefile').css('cursor', 'default');
                $(".removeimg").show();
                $(".Choicefile").unbind('click');

            }
            $(document).ready(function () {
                $(".Choicefile").bind('click', function () {
                    $("#uploadfile").click();

                });
                $(".removeimg").click(function () {
                    $("#thumbimage").attr('src', '').hide();
                    $("#myfileupload").jsp('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
                    $(".removeimg").hide();
                    $(".Choicefile").bind('click', function () {
                        $("#uploadfile").click();
                    });
                    $('.Choicefile').css('background', '#14142B');
                    $('.Choicefile').css('cursor', 'pointer');
                    $(".filename").text("");
                });
            })
        </script>
    </head>

    <body class="app sidebar-mini rtl">
        <style>
            .Choicefile {
                display: block;
                background: #14142B;
                border: 1px solid #fff;
                color: #fff;
                width: 150px;
                text-align: center;
                text-decoration: none;
                cursor: pointer;
                padding: 5px 0px;
                border-radius: 5px;
                font-weight: 500;
                align-items: center;
                justify-content: center;
            }

            .Choicefile:hover {
                text-decoration: none;
                color: white;
            }

            #uploadfile,
            .removeimg {
                display: none;
            }

            #thumbbox {
                position: relative;
                width: 100%;
                margin-bottom: 20px;
            }

            .removeimg {
                height: 25px;
                position: absolute;
                background-repeat: no-repeat;
                top: 5px;
                left: 5px;
                background-size: 25px;
                width: 25px;
                /* border: 3px solid red; */
                border-radius: 50%;

            }

            .removeimg::before {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                content: '';
                border: 1px solid red;
                background: red;
                text-align: center;
                display: block;
                margin-top: 11px;
                transform: rotate(45deg);
            }

            .removeimg::after {
                /* color: #FFF; */
                /* background-color: #DC403B; */
                content: '';
                background: red;
                border: 1px solid red;
                text-align: center;
                display: block;
                transform: rotate(-45deg);
                margin-top: -2px;
            }
            small {
                color: red;
            }
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
                <li><a class="app-menu__item" href="<%= getServletContext().getContextPath()%>/"><i class='app-menu__icon bx bx-tachometer'></i><span
                            class="app-menu__label">Dash Board</span></a></li>
                <li><a class="app-menu__item active" href="<%= getServletContext().getContextPath()%>/Admin/Customer"><i class='app-menu__icon bx bx-id-card'></i>
                        <span class="app-menu__label">Customer Management</span></a></li>      
                <li><a class="app-menu__item " href="<%= getServletContext().getContextPath()%>/Admin/Product"><i
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
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Customer">List Of Customer</a></li>
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Customer/Add">Add new customer</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <div class="tile">

                        <h3 class="tile-title">Add new customer</h3>
                        <div class="tile-body">            
                            <form class="row" action="CustomerController" method="post">   
                                <div class="form-group col-md-4">
                                    <label class="control-label">Customer ID</label>
                                    <input class="form-control" type="text" id ="CustomerID" name="txtCustomerID">
                                    <small></small>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Username</label>
                                    <input class="form-control" type="text" id ="Username" name="txtUsername">
                                    <small></small>
                                </div>                               
                                <div class="form-group col-md-4">
                                    <label class="control-label">Full Name</label>
                                    <input class="form-control" type="text" id ="FullName" name="txtCustomerName">
                                    <small></small>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Date Of Birth</label>
                                    <input class="form-control" type="date" id ="DateOfBirth" name="txtCustomerDOB">
                                    <small></small>
                                </div>  
                                <div class="form-group col-md-4">
                                    <label class="control-label">Email</label>
                                    <input class="form-control" type="Email" id ="Email" name="txtCustomerEmail">
                                    <small></small>
                                </div>                                
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Phone Number</label>
                                    <input class="form-control" type="text" id ="PhoneNumber" name="txtCustomerPhoneNumber">
                                    <small></small>
                                </div>
                                <div class="form-group  col-md-4">
                                    <label class="control-label">Password</label>
                                    <input class="form-control" type="text" id ="Password" name="txtCustomerPassword">
                                    <small></small>
                                </div>                                            
                                <div class="form-group col-md-3">
                                    <label class="control-label">Sex</label>
                                    <select class="form-control" id ="Gender" name="txtCustomerSex">
                                        <option value="">-- Select Sex --</option>
                                        <option value="0">Male</option>
                                        <option value="1">Female</option>
                                    </select>
                                    <small></small>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="control-label">Address</label>
                                    <input class="form-control" type="text" id ="Address" name="txtCustomerAddress">
                                    <small></small>
                                </div>
                        </div>
                        <button class="btn btn-save" type="submit" value="Submit" name="btnInsert">Save</button>
                        <a class="btn btn-cancel" href="<%= getServletContext().getContextPath()%>/Admin/Customer">Cancel</a>
                        </form> 
                    </div>
                    </main>
                    <script>
                        var customer_id = document.querySelector('#CustomerID');
                        var usname = document.querySelector('#Username');
                        var fullname = document.querySelector('#FullName');
                        var dob = document.querySelector('#DateOfBirth');
                        var email = document.querySelector('#Email');
                        var phone = document.querySelector('#PhoneNumber');
                        var pwd = document.querySelector('#Password');
                        var gender = document.querySelector('#Gender');
                        var address = document.querySelector('#Address');
                        var form = document.querySelector('form');

                        function showError(input, message) {
                            let parent = input.parentElement;
                            let small = parent.querySelector('small');

                            parent.classList.add('error');
                            small.innerText = message;
                        }

                        function showSuccess(input) {
                            let parent = input.parentElement;
                            let small = parent.querySelector('small');
                            parent.classList.remove('error');
                            small.innerText = '';
                        }

                        function getFieldName(input) {
                            return input.id.charAt(0).toUpperCase() + input.id.slice(1)
                        }

                        function checkEmptyError(listInput) {
                            let isEmptyError = false;
                            listInput.forEach(input => {

                                if (!input.value) {
                                    isEmptyError = true;
                                    let error = getFieldName(input) + ' is required';
                                    showError(input, error);
                                } else {
                                    showSuccess(input);
                                }
                            });
                            return isEmptyError;
                        }

                        function checkEmail(input) {
                            const regEmail = /^\w+([\.\-_]?\w+)*\@\w+([\.\-_]?\w+)*(\.\w{2,3})+$/;
                            input.value = input.value.trim();

                            let isEmailError = !regEmail.test(input.value);
                            if (regEmail.test(input.value)) {
                                showSuccess(input);
                            } else {
                                showError(input, 'Your Email is invalid');
                            }
                            return isEmailError;
                        }
                        
                        function checkPhone(input) {
                            const regPhone = /^0[1-9]\d{8,9}$/;
                            input.value = input.value.trim();

                            let isPhoneError = !regPhone.test(input.value);
                            if (regPhone.test(input.value)) {
                                showSuccess(input);
                            } else {
                                showError(input, 'Your Phone Number is invalid');
                            }
                            return isPhoneError;
                        }

                        function checkLength(input, min, max) {
                            input.value = input.value.trim();

                            if (input.value.length < min) {
                                let error = 'Please enter at least ' + min + ' character';
                                showError(input, error);
                                return true;
                            }

                            if (input.value.length > max) {
                                let error = 'Please enter at least ' + max + ' character';
                                showError(input, error);
                                return true;
                            }

                            return false;
                        }

                        form.addEventListener('submit', function (e) {
                            if (!checkEmptyError([customer_id, usname, fullname, dob, email, phone, pwd, gender, address])) {
                                checkLength(usname,5, 15);                                
                                checkLength(pwd, 8, 24);                                
                                checkEmail(email);
                                checkPhone(phone);
                            } else {
                                e.preventDefault();
                            }

                        });
                    </script>
                    <!-- Essential javascripts for application to work-->
                    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/main.js"></script>
                    <!-- The javascript plugin to display page loading on top-->
                    <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>

                    </body>

                    </html>
