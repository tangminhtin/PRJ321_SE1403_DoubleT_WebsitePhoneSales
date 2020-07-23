<%-- 
    Document   : forget_password
    Created on : Jul 23, 2020, 1:27:14 PM
    Author     : tangminhtin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Models.Entites.User"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Double T Shop | Login page</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>

        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="login-form">
                            <h2>Reset Password</h2>
                            <%                                if (request.getParameter("message") != null && request.getParameter("message").equals("reset")) {%>

                            <form action="LoginController?query=changePassword&userId=<%=request.getParameter("uId")%>" method="POST" >
                                <div class="group-input">
                                    <label for="txtCode">Code</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="text" id="txtCode" name="txtCode">
                                </div>
                                <div class="group-input">
                                    <label for="textPass">New Password</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="password" id="textPass" name="textPass">
                                </div>
                                <div class="group-input">
                                    <label for="txtConfirm">Confirm Password</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="password" id="txtConfirm" name="txtConfirm">
                                </div>
                                <button style="border-radius: 0px 30px 0px 30px" type="submit" class="site-btn login-btn">Changed Password</button>
                            </form>

                            <%  } else {
                            %>

                            <form action="LoginController?query=reset" method="POST" >
                                <div class="group-input">
                                    <label for="txtEmail">Email *</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="email" id="txtEmail" name="txtEmail">
                                </div>
                                <button style="border-radius: 0px 30px 0px 30px" type="submit" class="site-btn login-btn">Reset your password</button>
                            </form>
                            <div class="switch-login">
                                <a href="./login.jsp" class="or-login">Login</a>
                            </div>

                            <% }%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Form Section End -->


        <%@include file="components/footer.jsp" %>
    </body>
</html>
