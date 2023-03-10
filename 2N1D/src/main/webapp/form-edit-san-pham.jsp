<%-- 
    Document   : form-edit-san-pham
    Created on : Feb 19, 2023, 6:45:25 PM
    Author     : User
--%>

<%@page import="Models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Edit Product's Information</title>
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
        <script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
        <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
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
                    //$("#myfileupload").jsp('<input type="file" id="uploadfile" name="txtImage" onchange="readURL(this);"/>');
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
                <li><a class="app-menu__item" href="table-data-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
                            class="app-menu__label">Order Management</span></a></li>      
                <li><a class="app-menu__item" href="quan-ly-bao-cao.jsp"><i
                            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">View Sales Statistics</span></a>
                </li>      
            </ul>
        </aside>
        <main class="app-content">
            <div class="app-title">
                <%
                    Product pt = (Product) session.getAttribute("PT");
                %>
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Product">List of Products</a></li>
                    <li class="breadcrumb-item"><a href="<%= getServletContext().getContextPath()%>/Admin/Product/Edit/<%= pt.getProduct_id()%>">Edit Product's Information</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Edit Product's Information</h3>
                        <div class="tile-body">      

                            <form class="row" method="post" action="ProductController" enctype="multipart/form-data">
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product ID</label>
                                    <input class="form-control" type="text" name="txtProductID" readonly value ="<%= pt.getProduct_id()%>" />                                    
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product Name</label>
                                    <input class="form-control" type="text" name="txtProductName" value="<%= pt.getName()%>" />
                                </div>
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Quantity</label>
                                    <input class="form-control" type="number" name="txtQuantity" value="<%= pt.getQuantity()%>" />
                                </div>                                
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Category</label>
                                    <select class="form-control" id="exampleSelect1" name="txtCategory"">
                                        <option>-- Select Category --</option>
                                        <option value="0"<%= (pt.getCategory_id() == 0 ? "selected" : "")%> >Shirts</option>
                                        <option value="1"<%= (pt.getCategory_id() == 1 ? "selected" : "")%> >Pants</option>                                           
                                    </select>
                                </div>              
                                <div class="form-group col-md-3">
                                    <label class="control-label">Product Price</label>
                                    <input class="form-control" type="text" name="txtProductPrice" value="<%= pt.getProduct_price()%>" />
                                </div> 
                                <div class="form-group col-md-3">
                                    <label class="control-label">Publish Date</label>
                                    <input class="form-control" type="text" name="txtDate" value="<%= pt.getPublish_date()%>" />
                                </div> 
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Size</label>
                                    <select class="form-control" id="exampleSelect1" name="txtSize">
                                        <option>-- Select Size --</option>
                                        <option value="S"   <%= (pt.getSize().equals("S") ? "selected" : "")%>>S</option>
                                        <option value="M"   <%= (pt.getSize().equals("M") ? "selected" : "")%>>M</option>                                        
                                        <option value="L"   <%= (pt.getSize().equals("L") ? "selected" : "")%>>L</option>                                        
                                        <option value="XL"  <%= (pt.getSize().equals("XL") ? "selected" : "")%>>XL</option>                                        
                                        <option value="XXL" <%= (pt.getSize().equals("XXL") ? "selected" : "")%>>XXL</option>                                        
                                    </select>
                                </div> 
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Status</label>
                                    <select class="form-control" id="exampleSelect1" name="txtStatus">
                                        <option>-- Select Status --</option>
                                        <option value="0"<%= (pt.getStatus() == 0 ? "selected" : "")%>>Out Of Stock</option>
                                        <option value="1"<%= (pt.getStatus() == 1 ? "selected" : "")%>>On Stock</option>                                        
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Image</label>                                    
                                    <div id="myfileupload">                                        
                                        <input type="file" id="uploadfile" name="txtImage" onchange="readURL(this);"/>
                                    </div>
                                    <div id="thumbbox">
                                        <img height="400" alt="Thumb image" id="thumbimage" src="${pageContext.request.contextPath}/<%= pt.getImage()%>" />
                                        <a class="removeimg" href="javascript:"></a>
                                    </div>
                                    <div id="boxchoice">
                                        <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i>Upload Image</a>
                                        <p style="clear:both"></p>
                                    </div>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Description</label>
                                    <textarea class="form-control"  id="mota" name="txtDescription"><%= pt.getDetail_product()%></textarea>                                   
                                </div>

                        </div>
                        <button class="btn btn-save" type="submit" name="btnUpdate" value="submit">Save</button>
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
                                            const previewContainer = document.getElementById("thumbimage");
                                            const previewContainer = document.getElementById("thumbimage");
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
