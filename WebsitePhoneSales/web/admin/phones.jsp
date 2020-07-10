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
                                                <button type="button" class="btn btn-success px-3" data-toggle="modal" data-target="#modalAddUserForm"><i class="fas fa-plus"></i> Add phone</button>
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
                                                            PhoneDAO pdao = new PhoneDAO();
                                                            ArrayList<Phone> phones = pdao.getAllPhone();
                                                            
                                                            for(Phone p: phones) { %>
                                                                <tr>
                                                                    <td><%= p.getPhoneName() %></td>
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
