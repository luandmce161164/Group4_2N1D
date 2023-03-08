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
        <link rel="stylesheet" href="assets/css/LoSign.css">

        <title>Welcome to 2N1D</title>
        
        <script type="text/javascript">
            var checkpw = /\w/;
            function checkusername() {
                Un = document.getElementById("username").value;
                if(Un.trim() ===""){
                    document.getElementById("txtUsernameMessage").innerHTML = "Username can't be empty";
                    return false;
                } else if (Un.trim().length < 6 || Un.trim().length > 15) {  
                    document.getElementById("txtUsernameMessage").innerHTML = "Username must be 6-15 charaters";
                    return false;
                } else{
                    document.getElementById("txtUsernameMessage").innerHTML = "";
                }
                return  true;
            }

            function checkpassword() {
                Pw = document.getElementById("password").value;
                if(Pw.trim() ===""){
                    document.getElementById("txtPasswordMessage").innerHTML = "Password can't be empty";
                    return false;
                } else if (Pw.trim().length < 6 || Un.trim().length > 24) {  
                    document.getElementById("txtPasswordMessage").innerHTML = "Password must be 6-24 charaters";
                    return false;
                }else if (checkpw.test(Pw.trim())===false) {
                    document.getElementById("txtPasswordMessage").innerHTML = "Password must be characters or numbers";
                    return false;
                } else{
                    document.getElementById("txtPasswordMessage").innerHTML = "";
                }
                return  true;
            }

            function checkrepassword() {
                Rpw = document.getElementById("password2").value;
                if(Rpw.trim() ===""){
                    document.getElementById("txtRepassMessage").innerHTML = "Repassword can't be empty";
                    return false;
                } else if (Rpw.trim() !== Pw.trim()) {  
                    document.getElementById("txtRepassMessage").innerHTML = "Repassword must match password";
                    return false;
                }else{
                    document.getElementById("txtPassMessage").innerHTML = "";
                }
                return  true;
            }

            function checkAllForm() {
                isValidUsername = checkusername();
                isValidPassword = checkpassword();
                isValidRepassword = checkrepassword();

                isValid =
                        isValidUsername &&
                        isValidPassword &&
                        isValidRepassword;
                if (isValid === true) {
                    alert("Thanks, Register Successfull!");
                    return true;
                } else if (isValid === false) {
                    alert("Registration failed. Please try again!");
                    return false;
                }
                return false;
            }
        </script>
    </head>

    <body>
        <div class="container">     
            <form action="SignupController" method="post"onsubmit="return checkAllForm()">
                <h1>Sign Up Form</h1>
                <div class="form-control">
                    <input type="text" name="username" id="username" placeholder="Name" onblur="checkusername()" required/>
                    <div class="error" id="txtUsernameMessage"></div>
                    <small></small>
                    <span></span>
                </div>
                <div class="form-control">
                    <input type="password" name="password" id="password" placeholder="Password" onblur="checkpassword()" required/>
                    <div class="error" id="txtPasswordMessage"></div>
                    <small></small>
                    <span></span>
                </div>
                <div class="form-control">
                    <input type="password"  name="repassword" id="password2" placeholder="Confirm Password" onblur="checkrepassword()" required/>
                    <div class="error" id="txtRepassMessage"></div>
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
        </script>
    </body>

</html>
