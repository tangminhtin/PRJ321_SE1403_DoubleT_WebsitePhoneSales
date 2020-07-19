<%-- 
    Document   : users
    Created on : Jul 2, 2020, 11:47:12 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.*"%>
<%@page import="Models.Entites.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Users | Double T Shop</title>
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
                        <h1 class="mt-4">Management User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="./index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Users</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">


                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <i class="fas fa-table mr-1"></i>
                                            List of Users
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <button type="button" class="btn btn-success px-3" data-toggle="modal" data-target="#modalAddUserForm"><i class="fas fa-plus"></i> Add user</button>
                                                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th>Full name</th>
                                                            <th>Address</th>
                                                            <th>Phone</th>
                                                            <th>Email</th>
                                                            <th>Avatar</th>
                                                            <th>Role</th>
                                                            <th>Edit</th>
                                                            <th>Delete</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            UserDAO userDAO = new UserDAO();
                                                            EmployeeDAO employeeDAO = new EmployeeDAO();
                                                            CustomerDAO customerDAO = new CustomerDAO();

                                                            ArrayList<User> users = userDAO.getUsers();
                                                            ArrayList<Employee> employees = employeeDAO.getEmployees();
                                                            ArrayList<Customer> customers = customerDAO.getCustomers();

                                                            for (User u : users) {

                                                                for (Employee e : employees) {
                                                                    if (u.getUserId() == e.getUserId() && u.getUserRole().equals("staff")) {%>
                                                        <tr>
                                                            <td><%= e.getEmployeeFullname()%></td>
                                                            <td><%= e.getEmployeeAddress()%></td>
                                                            <td><%= e.getEmployeePhone()%></td>
                                                            <td><%= e.getEmployeeEmail()%></td>
                                                            <td>
                                                                <img src="../<%= e.getEmployeeImage()%>" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                            </td>
                                                            <td><%= u.getUserRole()%></td>
                                                            <td>
                                                                <a href="./edit_user.jsp?userId=<%=u.getUserId()%>&uName=<%=u.getUserName()%>&uRole=<%=u.getUserRole()%>&id=<%=e.getEmployeeId()%>&name=<%=e.getEmployeeFullname()%>&address=<%=e.getEmployeeAddress()%>&email=<%=e.getEmployeeEmail()%>&phone=<%=e.getEmployeePhone()%>&image=<%=e.getEmployeeImage()%>" <button type="button" class="btn btn-warning px-3"><i class="fas fa-edit"></i></i></button></a>
                                                            </td>
                                                            <td>
                                                                <form action="../UserController?query=delete" method="POST">
                                                                    <button name="deleteUserId" value="<%= e.getUserId()%>" type="submit" class="btn btn-danger px-3"><i class="far fa-trash-alt"></i></button>
                                                                </form>    
                                                            </td>
                                                        </tr>
                                                        <% } %> 
                                                        <% } %>       

                                                        <% for (Customer c : customers) {
                                                                if (u.getUserId() == c.getUserId() && u.getUserRole().equals("customer")) {%>
                                                        <tr>
                                                            <td><%= c.getCustomerFullname()%></td>
                                                            <td><%= c.getCustomerAddress()%></td>
                                                            <td><%= c.getCustomerPhone()%></td>
                                                            <td><%= c.getCustomerEmail()%></td>
                                                            <td>
                                                                <img src="../<%= c.getCustomerImage()%>" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                            </td>
                                                            <td><%= u.getUserRole()%></td>
                                                            <td>
                                                                <a href="./edit_user.jsp?userId=<%=u.getUserId()%>&uName=<%=u.getUserName()%>&uRole=<%=u.getUserRole()%>&id=<%=c.getCustomerId()%>&name=<%=c.getCustomerFullname()%>&address=<%=c.getCustomerAddress()%>&email=<%=c.getCustomerEmail()%>&phone=<%=c.getCustomerPhone()%>&image=<%=c.getCustomerImage()%>" <button type="button" class="btn btn-warning px-3"><i class="fas fa-edit"></i></i></button></a>
                                                            </td>
                                                            <td>
                                                                <form action="../UserController?query=delete" method="POST">
                                                                    <button name="deleteUserId" value="<%= c.getUserId()%>" type="submit" class="btn btn-danger px-3"><i class="far fa-trash-alt"></i></button>
                                                                </form>          
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                        <% } %>                                                            
                                                        <% }%>
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

        <!--Add User-->
        <form action="../UserController?query=add" method="POST" enctype="multipart/form-data">
            <div class="modal fade" id="modalAddUserForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold">Add New User</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form mb-5">
                                <input type="text" name="txtUsername" class="form-control validate">
                                <label data-error="wrong" data-success="right">Username</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="password" name="txtPassword" class="form-control validate">
                                <label data-error="wrong" data-success="right">Your password</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="password" name="txtConfirmPassword" class="form-control validate">
                                <label data-error="wrong" data-success="right">Confirm password</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="text" name="txtFullname" class="form-control validate">
                                <label data-error="wrong" data-success="right">Full name</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="text" name="txtAddress" class="form-control validate">
                                <label data-error="wrong" data-success="right">Address</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="text" name="txtPhone" class="form-control validate">
                                <label data-error="wrong" data-success="right">Phone</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="email" name="txtEmail" class="form-control validate">
                                <label data-error="wrong" data-success="right">Email</label>
                            </div>
                            <div class="md-form mb-4">
                                <input type="file" name="image_file" class="form-control validate">
                            </div>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <button class="btn btn-default">Add</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
