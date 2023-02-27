<%-- 
    Document   : SignUp
    Created on : Feb 16, 2023, 7:27:52 AM
    Author     : DELL7250
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
        <link rel="stylesheet" href="css/LoSign.css">

        <title>Sign Up 2N1D </title>
    </head>

    <body>
        <div class="container">     
            <form action="SignupController" method="post">
                <h1>Sign Up Form</h1>
                <div class="form-control">
                    <input type="text" name="username" id="username" placeholder="Name"/>
                    <small></small>
                    <span></span>
                </div>
                <div class="form-control">
                    <input type="password" name="password" id="password" placeholder="Password"/>
                    <small></small>
                    <span></span>
                </div>
                <div class="form-control">
                    <input type="password"  name="repassword" id="password2" placeholder="Confirm Password"/>
                    <small></small>
                    <span></span>
                </div>
                <button type="submit" class="btn-submit" name="btnSignUp">Sign Up</button>
            </form>
            <p class="text-center">
                <span>Already have an account?</span>
                <a href="Login.jsp">
                    <span>Sign in instead</span>
                </a>
            </p>
        </div>
<!--        <script scr='js/SignUp.js'>
        </script>-->
    </body>

</html>
