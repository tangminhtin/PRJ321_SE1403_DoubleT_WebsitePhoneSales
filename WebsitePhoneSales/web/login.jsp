<%-- 
    Document   : login
    Created on : Jun 28, 2020, 8:58:22 AM
    Author     : tangminhtin
--%>

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
          
        <h1 style="font-family: fantasy">Login Page</h1>

        <!-- Register Section Begin -->
        <div class="register-login-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="login-form">
                            <h2>Login</h2>
                            <form method="POST" >
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

        <%
            UserDAO userDAO = new UserDAO();
            if (request.getParameter("txtUsername") != null && request.getParameter("txtPassword") != null) {
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");

                User userLogin = userDAO.login(username, password);
                if (userLogin != null) {
                    session = request.getSession();
                    session.setAttribute("user", userLogin);
                    request.getRequestDispatcher("LoginController").forward(request, response);
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
                                    <p class="pt-3 pr-2 text-danger">Oops! Your username or password incorrect!</p>
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

        %>


        <%@include file="components/footer.jsp" %>
        <script>
            $(document).ready(function () {
                $("#frameModalBottom").modal('show');
            });
        </script>
    </body>
</html>
