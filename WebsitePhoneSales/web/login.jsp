<%-- 
    Document   : login
    Created on : Jun 28, 2020, 8:58:22 AM
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
                            <h2>Login</h2>
                            <form action="LoginController?query=user" method="POST" >
                                <div class="group-input">
                                    <label for="username">Username *</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="text" id="username" name="txtUsername">
                                </div>
                                <div class="group-input">
                                    <label for="pass">Password *</label>
                                    <input style="border-radius: 0px 30px 0px 30px" required type="password" id="pass" name="txtPassword">
                                </div>
                                <button style="border-radius: 0px 30px 0px 30px" type="submit" class="site-btn login-btn">Sign In</button>
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


        <c:if test="${sessionScope.message == 'fail'}">
            <!-- Frame Modal Bottom -->
            <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                <div class="modal-dialog modal-frame modal-top" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row d-flex justify-content-center align-items-center">
                                <p class="pt-3 pr-2 text-danger">Oops! Your username or password incorrect!</p>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Frame Modal Bottom -->
            <c:set var="message" value="" scope="session"/>
        </c:if>

        <%@include file="components/footer.jsp" %>
        <script>
            $(document).ready(function () {
                $("#frameModalBottom").modal('show');
            });
        </script>
    </body>
</html>
