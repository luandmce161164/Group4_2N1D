<%-- 
    Document   : Order
    Created on : Feb 22, 2023, 8:24:58 AM
    Author     : DELL7250
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .error {
                color: red;
            }
            .design{
                width:412px;
                margin:10vh auto;
                transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                background: rgba(0,0,0,0.2);
                border-radius: 10px;
                font-family:"Poppins",Helvetica,Tahoma,Arial,serif;
                overflow: hidden;
                text-align: center  ;
                margin-top: 140px;
            }
            .name{
                color: white;
                margin-right: 220px;
            }
            .name1{
                color: white;
                margin-right: 225px;
            }
            .nameaddress{
                color: white;
                margin-right: 205px;
            }


            .title{
                text-align: center;
                color: white;
                font-weight:bolder;

            }
            .btn--red{
                color: white;
            }
            .input--style-5{
                color: black;
                width: 270px;
                height: 27px;
            }

            body {
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            .order{
                text-align:center;
            }
            .input--style-4{
                width: 270px;
                height: 50px;
            }
            .input-group-desc{

            }


        </style>

        <script type="text/javascript">
            var patt_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var patt_phone = /^0[1-9]\d{8,10}$/;



            function checklastname() {
                Ln = document.getElementById("txtlastname").value;
                document.getElementById("txtLastnameMessage").innerHTML =
                        Ln.trim() == "" ? "Name can't be empty" : "";
                return  Ln != "";
            }

            function checkaddress() {
                Ad = document.getElementById("txtaddress").value;
                document.getElementById("txtAddressMessage").innerHTML =
                        Ad.trim() == "" ? "Address can't be empty" : "";
                return Ad != "";
            }

            function checkEmail() {
                email = document.getElementById("txtemail").value;
                document.getElementById("txtEmailMessage").innerHTML =
                        (patt_email.test(email) == false) ? "Email is invalid" : "";
                return patt_email.test(email);
            }

            function checkPhone() {
                phone = document.getElementById("txtphone").value;
                document.getElementById("txtPhoneMessage").innerHTML =
                        (patt_phone.test(phone) == false) ? "Phone is invalid" : "";
                return patt_phone.test(phone);
            }

            function checkAllData() {
                isValidLastname = checklastname();
                isValidAddress = checkaddress();
                isValidEmail = checkEmail();
                isValidPhone = checkPhone();

                isValid =
                        isValidLastname &&
                        isValidAddress &&
                        isValidEmail &&
                        isValidPhone;
                errorMessage = document.getElementById("txtError");
                if (isValid == true) {
                    alert("Thanks, Order Successfull!");
                    return true;
                } else if (isValid == false) {
                    alert("Please enter full information!");
                    return false;
                }
                return false;
            }
        </script>
    </head>
    <body>
        <div class="design">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Order Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST" onsubmit="return checkAllData()" action="order">
                        <div class="form-row m-b-55">

                            <input type="hidden" name="sum" value="${sessionScope.sum}">
                            <input type="hidden" name="sum" value="${sessionScope.acc.id}">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <!--                                    <div class="col-2">
                                                                            <div class="input-group-desc">
                                                                                <input class="input--style-5" type="text" name="txtFirstname"  id="txtFirstname" placeholder="First name" onblur="checkfirstname()" required/>
                                    
                                                                                <div class="error" id="txtFirstnameMessage"></div>
                                                                            </div>
                                                                        </div>-->
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="name" id="txtlastname" placeholder="Name"onblur="checklastname()" required/>

                                            <div class="error" id="txtLastnameMessage"></div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="nameaddress" name="txtaddress" >Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="address" id="txtaddress" placeholder="Your Address" onblur="checkaddress()" required>
                                    <div class="error" id="txtAddressMessage"></div>

                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name1" name="email">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" id="txtemail" placeholder="name@gmail.com" onblur="checkEmail()" required/>
                                    <div class="error" id="txtEmailMessage"></div>

                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name" name="phone">Phone</div>
                            <div class="value">
                                <div class="refine">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="phone" id="txtphone" placeholder="Phone Number" onblur="checkPhone()" required/>
                                        <div class="error" id="txtPhoneMessage"></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name" name="note">Note</div>
                            <div class="value">
                                <div class="refine">
                                    <div class="input-group-desc">
                                        <textarea class="input--style-4" type="text" name="note" id="txtnote" placeholder="Your note" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div>
                            <button class="order" type="submit">Order</button>
                        </div>
                        <tr>
                            <td class="error" colspan="2" id="txtError"></td>
                        </tr>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
