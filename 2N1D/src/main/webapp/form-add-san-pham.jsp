<%-- 
    Document   : form-add-san-pham
    Created on : Feb 19, 2023, 6:45:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Add new product</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin_css.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
        <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <script>

            function readURL(input, thumbimage) {
                let file = input.files[0];
                console.log(file);
                //var fs = require('fs');
                
                let formData = new FormData();

                formData.append("photo", file);
                var res = fetch('/images', {method: "PUT", body: file});
                console.log(res);
                
                
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
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Product">List of Product</a></li>
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Product/Add">Add new product</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Add new product</h3>
                        <div class="tile-body">                             
                            <form class="row" action="ProductController" method="post">   
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product ID</label>
                                    <input class="form-control" type="text" name="txtProductID" required>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product Name</label>
                                    <input class="form-control" type="text" name="txtProductName" required>
                                </div>
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Quantity</label>
                                    <input class="form-control" type="number" name="txtQuantity" required>
                                </div>                                
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Category</label>
                                    <select class="form-control" id="exampleSelect1" name="txtCategory" required>
                                        <option>-- Select Category --</option>
                                        <option value="0">Shirts</option>
                                        <option value="1">Pants</option>                                        
                                    </select>
                                </div>              
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product Price</label>
                                    <input class="form-control" type="text" name="txtProductPrice" required>
                                </div> 
                                <div class="form-group col-md-3">
                                    <label class="control-label">Publish Date</label>
                                    <input class="form-control" type="text" name="txtDate" required>
                                </div> 
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Size</label>
                                    <select class="form-control" id="exampleSelect1" name="txtSize" required>
                                        <option>-- Select Size --</option>
                                        <option value="S">S</option>
                                        <option value="M">M</option>                                        
                                        <option value="L">L</option>                                        
                                        <option value="XL">XL</option>                                        
                                        <option value="XXL">XXL</option>                                        
                                    </select>
                                </div>      
                                <div class="form-group col-md-12">
                                    <label class="control-label">Image</label>
                                    <div id="myfileupload">
                                        <input type="file" id="uploadfile" name="txtImage" onchange="readURL(this);" />
                                    </div>
                                    <div id="thumbbox">
                                        <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                                        <a class="removeimg" href="javascript:"></a>
                                    </div>
                                    <div id="boxchoice">
                                        <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i>Upload Image</a>
                                        <p style="clear:both"></p>
                                    </div>

                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Description</label>
                                    <textarea class="form-control"  id="mota" name="txtDescription" required></textarea>
                                    <!--<script>CKEDITOR.replace('mota');</script>-->
                                </div>

                        </div>
                        <button class="btn btn-save" type="submit" value="Submit" name="btnInsert">Save</button>
                        <a class="btn btn-cancel" href="<%= getServletContext().getContextPath()%>/Admin/Product">Cancel</a>
                        </form> 

                    </div>
                    </main>
                    <!--
                    MODEL San Pham
                    -->                    

                    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
                    <script src="${pageContext.request.contextPath}/js/main.js"></script>
                    <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
                    <script>
                                            const inpFile = document.getElementById("inpFile");
                                            const loadFile = document.getElementById("loadFile");
                                            const previewContainer = document.getElementById("imagePreview");
                                            const previewContainer = document.getElementById("imagePreview");
                                            const previewImage = previewContainer.querySelector(".image-preview__image");
                                            const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");
                                            inpFile.addEventListener("change", function () {
                                                const file = this.files[0];
                                                if (file) {
                                                    const reader = new FileReader();
                                                    previewDefaultText.style.display = "none";
                                                    previewImage.style.display = "block";
                                                    reader.addEventListener("load", function () {
                                                        previewImage.setAttribute("src", this.result);
                                                    });
                                                    reader.readAsDataURL(file);
                                                }
                                            });

                    </script>
                    </body>

                    </html>
