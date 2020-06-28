<%-- 
    Document   : login
    Created on : Jun 28, 2020, 8:58:22 AM
    Author     : tangminhtin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Double T Shop | Login page</title>
        <%@include file="components/head.jsp" %>
    </head>
    <body>
        <h1>Login Page</h1>

        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="login-form">
                            <h2>Login</h2>
                            <form action="LoginController">
                                <div class="group-input">
                                    <label for="username">Username or email address *</label>
                                    <input type="text" id="username" name="txtUsername">
                                </div>
                                <div class="group-input">
                                    <label for="pass">Password *</label>
                                    <input type="text" id="pass" name="txtPassword">
                                </div>
                                <div class="group-input gi-check">
                                    <div class="gi-more">
                                        <label for="save-pass">
                                            Save Password
                                            <input type="checkbox" id="save-pass">
                                            <span class="checkmark"></span>
                                        </label>
                                        <a href="#" class="forget-pass">Forget your Password</a>
                                    </div>
                                </div>
                                <button type="submit" class="site-btn login-btn">Sign In</button>
                            </form>
                            <div class="switch-login">
                                <a href="./register.jsp" class="or-login">Or Create An Account</a>
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
