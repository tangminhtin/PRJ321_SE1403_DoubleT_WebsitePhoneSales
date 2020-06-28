<%-- 
    Document   : register
    Created on : Jun 28, 2020, 9:29:19 AM
    Author     : tangminhtin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Double T Shop | Register page</title>
        <%@include file="components/head.jsp" %>
    </head>
    <body>
        <h1>Register Page</h1>

        
        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="register-form">
                            <h2>Register</h2>
                            <form action="#">
                                <div class="group-input">
                                    <label for="username">Username or email address *</label>
                                    <input type="text" id="username">
                                </div>
                                <div class="group-input">
                                    <label for="pass">Password *</label>
                                    <input type="text" id="pass">
                                </div>
                                <div class="group-input">
                                    <label for="con-pass">Confirm Password *</label>
                                    <input type="text" id="con-pass">
                                </div>
                                <button type="submit" class="site-btn register-btn">REGISTER</button>
                            </form>
                            <div class="switch-login">
                                <a href="./login.jsp" class="or-login">Or Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Form Section End -->


        <%@include file="components/footer.jsp" %>
    </body>
</html>
