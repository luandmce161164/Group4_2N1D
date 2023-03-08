<%-- 
    Document   : Login
    Created on : Feb 22, 2023, 6:16:29 PM
    Author     : DELL7250
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="assets/css/LoSign.css">
    </head>
    <body>
        <div class ="nav-bar">

        </div>
        <div class="container">        
            <form action="LoginController" method="post">
                <h1>Welcome Back</h1>
                <div class="form-control">
                    <input type="text" name= "username" id="username" placeholder="Name"/>
                    <small></small>
                    <span></span>
                </div>
                <div class="form-control">
                    <input type="password"  name= "password" id="password" placeholder="Password" />
                    <small></small>
                    <span></span>
                </div>
                <button type="submit" class="btn-submit" name="btnSubmit" value="submit">Login</button>
                <div class="signup_link">Not a member? <a href="SignUp.jsp">Sign up</a></div>
            </form>
        </div>
<!--        <script src='js/Login.js'></script>-->
    </body>
</html>
