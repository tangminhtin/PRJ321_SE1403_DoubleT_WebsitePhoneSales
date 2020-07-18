<%-- 
    Document   : edit_user
    Created on : Jul 18, 2020, 5:12:51 PM
    Author     : tangminhtin
--%>

<%@page import="Models.Entites.*"%>
<%@page import="Models.DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Edit User | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <div id="layoutSidenav">
            <%@include file="components/sidenav.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Management Users</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="./index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Edit User</li>
                        </ol>

                        <!--Edit User-->
                        <form action="../UserController?query=edit&txtUserId=${param.userId}" method="POST" enctype="multipart/form-data">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <div class="text-center">
                                            <h3><img src="../${param.image}" width="100" height="100" style="vertical-align:middle; margin: 0 20px 0 20px; border-radius: 5px 40px 5px 40px">${param.uName}</h3>
                                        </div>
                                    </div>
                                    <div class="modal-body mx-3">
                                        <div class="md-form mb-4">
                                            <input required type="password" name="txtPassword" placeholder="********" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Your password</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="password" name="txtConfirmPassword" placeholder="********" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Confirm password</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="text" name="txtFullname" value="${param.name}" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Full name</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="text" name="txtAddress" value="${param.address}" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Address</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="text" name="txtPhone" value="${param.phone}" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Phone</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="email" name="txtEmail" value="${param.email}" class="form-control validate">
                                            <label data-error="wrong" data-success="right">Email</label>
                                        </div>
                                        <div class="md-form mb-4">
                                            <input required type="file" name="image_file" value="${param.image}" class="form-control validate">
                                            <!--<label data-error="wrong" data-success="right" for="defaultForm-pass">Avatar</label>-->
                                        </div>
                                        <div class="md-form mb-4">
                                            <input type="hidden" name="txtUserRole" value="${param.uRole}" class="form-control validate">
                                            <!--<label data-error="wrong" data-success="right" for="defaultForm-pass">Avatar</label>-->
                                        </div>
                                        <div class="md-form mb-4">
                                            <input type="hidden" name="txtId" value="${param.id}" class="form-control validate">
                                            <!--<label data-error="wrong" data-success="right" for="defaultForm-pass">Avatar</label>-->
                                        </div>
<!--                                        <div class="md-form mb-4">
                                            <input type="hidden" name="txtUserId" value="${param.userId}" class="form-control validate">
                                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Avatar</label>
                                        </div>-->
                                    </div>
                                    <div class="modal-footer d-flex justify-content-center">
                                        <button class="btn btn-default">Update</button>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </main>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
