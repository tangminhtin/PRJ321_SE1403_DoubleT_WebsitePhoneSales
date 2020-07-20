<%-- 
    Document   : register
    Created on : Jun 28, 2020, 9:29:19 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Register | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>

        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="register-form">
                            <h2>Register</h2>
                            <form action="./UserController?query=addU" method="POST" enctype="multipart/form-data">
                                <!-- Material input -->
                                <div class="md-form">
                                    <i class="fas fa-user prefix"></i>
                                    <input required name="txtUsername" type="text" id="txtUser" class="form-control">
                                    <label for="txtUser">Username</label>
                                </div>
                                <div class="md-form">
                                    <i class="fas fa-unlock prefix"></i>
                                    <input required name="txtPassword" type="password" id="txtPass" class="form-control">
                                    <label for="txtPass">Password</label>
                                </div>
                                <div class="md-form">
                                    <i class="fas fa-unlock prefix"></i>
                                    <input required name="txtConfirmPassword" type="password" id="txtConfirm" class="form-control">
                                    <label for="txtConfirm">Confirm Password</label>
                                </div>

                                <div class="md-form">
                                    <i class="fas fa-signature prefix"></i>
                                    <input required name="txtFullname" type="text" id="txtFullname" class="form-control">
                                    <label for="txtFullname">Fullname</label>
                                </div>
                                <div class="md-form">
                                    <i class="fas fa-map-marked-alt prefix"></i>
                                    <input required name="txtAddress" type="text" id="txtAddress" class="form-control">
                                    <label for="txtAddress">Address</label>
                                </div>
                                <div class="md-form">
                                    <i class="fas fa-phone-alt prefix"></i>
                                    <input required name="txtPhone" type="text" id="txtPhone" class="form-control">
                                    <label for="txtPhone">Phone</label>
                                </div>
                                <div class="md-form">
                                    <i class="far fa-envelope prefix"></i>
                                    <input required name="txtEmail" type="email" id="txtEmail" class="form-control">
                                    <label for="txtEmail">Email</label>
                                </div>
                                <div class="md-form">
                                    <i class="far fa-images prefix"></i>
                                    <input required name="image_file" type="file" id="image_file" class="form-control">
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

        <c:if test="${sessionScope.register == 'fail'}">
            <!-- Frame Modal Bottom -->
            <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                <div class="modal-dialog modal-frame modal-top" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="row d-flex justify-content-center align-items-center">
                                <p class="pt-3 pr-2 text-danger">Oops! Username has been already or confirm password not match!</p>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Frame Modal Bottom -->
            <c:set var="register" value="" scope="session"/>
        </c:if>

        <%@include file="components/footer.jsp" %>
        <script>
            $(document).ready(function () {
                $("#frameModalBottom").modal('show');
            });
        </script>
    </body>
</html>
