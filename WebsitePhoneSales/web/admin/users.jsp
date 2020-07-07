<%-- 
    Document   : users
    Created on : Jul 2, 2020, 11:47:12 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.EmployeeDAO"%>
<%@page import="Models.DAO.CustomerDAO"%>
<%@page import="Models.Entites.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Users | Double T Shop</title>
    </head>
    <body>
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
                                    <button type="button" class="btn btn-success px-3" data-toggle="modal" data-target="#modalLoginForm"><i class="fas fa-plus"></i> Add user</button>
                                    <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Full name</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>Email</th>
                                                <th>Avatar</th>
                                                <th>Role</th>
                                                <th colspan="2">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${users}" var="u">
                                                <c:forEach items="${employees}" var="e">
                                                    <c:if test="${u.userId == e.userId && u.userRole == 'staff'}">
                                                        <tr>
                                                            <td>${e.employeeFullname}
                                                            <td>${e.employeeAddress}</td>
                                                            <td>${e.employeePhone}</td>
                                                            <td>${e.employeeEmail}</td>
                                                            <td>
                                                                <img src="${e.employeeImage}" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                            </td>
                                                            <td>${u.userRole}</td>
                                                            <td>
                                                                
                                                                    <button type="button" class="btn btn-warning px-3"><i class="fas fa-edit"></i></button>
                                                            </td>
                                                            <td>
                                                                <a href="./users.jsp?userId=${u.userId}">
                                                                    <button type="button" class="btn btn-danger px-3"><i class="far fa-trash-alt"></i></button>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                               
                                                <c:forEach items="${customers}" var="c">
                                                    <c:if test="${u.userId == c.userId && u.userRole == 'customer'}">
                                                        <tr>
                                                            <td>${c.customerFullname}
                                                            <td>${c.customerAddress}</td>
                                                            <td>${c.customerPhone}</td>
                                                            <td>${c.customerEmail}</td>
                                                            <td>
                                                                <img src="${c.customerImage}" width="50px" height="50px" class="rounded float-left" alt="Avatar">
                                                            </td>
                                                            <td>${u.userRole}</td>
                                                            <td><button type="button" class="btn btn-warning px-3"><i class="fas fa-edit"></i></i></button></td>
                                                            <td>
                                                                <a href="./users.jsp?userId=${u.userId}">
                                                                    <button type="button" class="btn btn-danger px-3"><i class="far fa-trash-alt"></i></button>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                                        
                                            </c:forEach>

                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                </p>
                            </div>
                        </div>
<!--                        <div style="height: 100vh;"></div>
                        <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>-->
                    </div>
                </main>
<!--                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>-->
            </div>
        </div>
            
            
            <!--Add User-->
        <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
                            <input type="email" name="txtUsername" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-email">Username</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtPassword" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtConfirmPassword" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Confirm password</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtFullname" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Full name</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtAddress" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Address</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtPhone" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Phone</label>
                        </div>
                        <div class="md-form mb-4">
                            <input type="password" name="txtImage" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="defaultForm-pass">Avatar</label>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <form action="../UserController" method="POST">
                            <button class="btn btn-default">Add</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

      

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            <%
              String userId = request.getParameter("userId");
              UserDAO udao = new UserDAO();
              CustomerDAO cdao = new CustomerDAO();
              EmployeeDAO edao = new EmployeeDAO();
              
              if(userId != null) {
                  udao.delete(Integer.parseInt(request.getParameter("userId")));
//                  cdao.delete(Integer.parseInt(request.getParameter("userId")));
//                  edao.delete(Integer.parseInt(request.getParameter("userId")));
              }
                
              out.print(userId);
                
            %>
            
            
        
        <%@include file="components/footer.jsp" %>
    </body>
</html>
