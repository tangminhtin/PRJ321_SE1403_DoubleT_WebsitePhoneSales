<%-- 
    Document   : comments
    Created on : Jul 10, 2020, 9:19:35 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.CustomerDAO"%>
<%@page import="Models.Entites.Comment"%>
<%@page import="Models.DAO.CommentDAO"%>
<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="Models.Entites.Phone"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Phones | Double T Shop</title>
    </head>
    <body>
        <%
            if (request.getSession().getAttribute("aUser") == null) {
                response.sendRedirect("./login.jsp");
            }
        %>

        <%@include file="components/navbar.jsp" %>

        <div id="layoutSidenav">
            <%@include file="components/sidenav.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Management Comments</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="./index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Comments</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <i class="fas fa-table mr-1"></i>
                                            List of Comments
                                        </div>

                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>Avatar</th>
                                                            <th>Comment</th>
                                                            <th>Date</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            CommentDAO cdao = new CommentDAO();
                                                            ArrayList<Comment> comments = cdao.getComments();
                                                            CustomerDAO customerDAO = new CustomerDAO();
                                                            for (Comment c : comments) {%>
                                                        <tr>
                                                            <td><%= customerDAO.getCustomerCusId(c.getCustomerId()).getCustomerFullname()%></td>
                                                            <td>
                                                                <img src="../<%= customerDAO.getCustomerCusId(c.getCustomerId()).getCustomerImage()%>" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                            </td>
                                                            <td><%= c.getCommentContent()%></td>
                                                            <td><%= c.getCommentDate()%></td>
                                                        </tr>
                                                        <%}%>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
