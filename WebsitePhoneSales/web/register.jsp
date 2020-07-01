<%-- 
    Document   : register
    Created on : Jun 28, 2020, 9:29:19 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Register | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>


        <h1>Register Page</h1>

        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="register-form">
                            <h2>Register</h2>
                            <form action="#" method="POST">
                                <div class="group-input">
                                    <label for="username">Username *</label>
                                    <input type="text" id="username" name="txtUser">
                                </div>
                                <div class="group-input">
                                    <label for="pass">Password *</label>
                                    <input type="text" id="pass" name="txtPass">
                                </div>
                                <div class="group-input">
                                    <label for="con-pass">Confirm Password *</label>
                                    <input type="text" id="con-pass" name="txtConfirm">
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

        <%
            UserDAO udao = new UserDAO();

            String user = request.getParameter("txtUser");
            String pass = request.getParameter("txtPass");
            String confirm = request.getParameter("txtConfirm");

            if (user != null && pass != null && confirm != null) {
                if (udao.searchUserByUserName(user) == null) {
                    if (pass.equals(confirm)) {
                        udao.insert(user, pass);
                    } else {
        %>
                    <!-- Frame Modal Bottom -->
                    <div class="modal fade bottom" id="frameModalBottom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                         aria-hidden="true">
                        <!-- Add class .modal-frame and then add class .modal-bottom (or other classes from list above) to set a position to the modal -->
                        <div class="modal-dialog modal-frame modal-top" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="row d-flex justify-content-center align-items-center">
                                        <p class="pt-3 pr-2 text-danger">Oops! Your password not match!</p>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Frame Modal Bottom -->
        <%
                    }
                }
            }
        %>

        <%@include file="components/footer.jsp" %>
        <script>
            $(document).ready(function () {
                $("#frameModalBottom").modal('show');
            });
        </script>
    </body>
</html>
