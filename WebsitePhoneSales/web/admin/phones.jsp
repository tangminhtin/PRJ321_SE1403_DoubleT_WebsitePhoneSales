<%-- 
    Document   : phones
    Created on : Jul 10, 2020, 9:19:35 AM
    Author     : tangminhtin
--%>

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
        <%@include file="components/navbar.jsp" %>

        <div id="layoutSidenav">
            <%@include file="components/sidenav.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Management Phones</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="./index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Phones</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">


                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table mr-1"></i>
                                        List of Phones
                                    </div>

                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <button type="button" class="btn btn-success px-3"><a href="add_phone.jsp"><i class="fas fa-plus"></i> Add phone</a></button>
                                            <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Image</th>
                                                        <th>Price</th>
                                                        <th>Description</th>
                                                        <th colspan="2">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        int limit = 3;
                                                        PhoneDAO pdao = new PhoneDAO();
                                                        int totalRows = pdao.getNumberOfPhone();
                                                        int currentPage = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
                                                        int totalPage = (int) Math.ceil(totalRows / (double) limit);

                                                        if (currentPage < 1) {
                                                            currentPage = 1;
                                                        } else if (currentPage > totalPage) {
                                                            currentPage = totalPage;
                                                        }

                                                        int start = (currentPage - 1) * limit;

                                                        ArrayList<Phone> phones = pdao.getPhonesInRange(start, limit);

                                                        for (Phone p : phones) {%>
                                                    <tr>
                                                        <td><%= p.getPhoneName()%></td>
                                                        <td>
                                                            <img src="<%= p.getPhoneImage()%>" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                        </td>
                                                        <td><%= p.getPhonePrice()%></td>
                                                        <td><%= p.getPhoneShortDescription()%></td>
                                                        <td><button type="button" class="btn btn-warning px-3"><i class="fas fa-edit"></i></i></button></td>
                                                        <td>
                                                            <form action="../PhoneController" method="GET">
                                                                <button name="deletePhoneId" value="<%= p.getPhoneId()%>" type="submit" class="btn btn-danger px-3"><i class="far fa-trash-alt"></i></button>
                                                            </form>          
                                                        </td>
                                                    </tr>
                                                    <%} %>



                                                </tbody>
                                            </table>
                                        </div>
                                    </div>



                                    <!--Pagination-->                            
                                    <nav class="container" aria-label="Page navigation example">
                                        <ul class="pagination pagination-circle pg-blue">
                                            <!--<li class="page-item disabled"><a class="page-link">First</a></li>-->

                                            <% if (currentPage > 1 && totalPage > 1) {%>
                                            <li class="page-item">
                                                <a href="?page=<%=currentPage - 1%>" class="page-link" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                            <% } %>

                                            <% for (int i = 1; i <= totalPage; i++) { %>
                                            <% if (i == currentPage) {%>
                                            <li class="page-item active"><a class="page-link"><%=i%></a></li>
                                                <% } else {%>
                                            <li class="page-item"><a class="page-link" href="?page=<%=i%>"><%=i%></a></li>
                                                <% } %>
                                                <% } %>

                                            <% if (currentPage < totalPage && totalPage > 1) {%>
                                            <li class="page-item">
                                                <a href="?page=<%=currentPage + 1%>" class="page-link" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                            <% }%>
                                            <!--<li class="page-item"><a class="page-link">Last</a></li>-->
                                        </ul>
                                    </nav>            





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
