<%-- 
    Document   : index
    Created on : Jul 2, 2020, 11:08:02 AM
    Author     : tangminhtin
--%>

<%@page import="Models.Entites.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.DAO.CustomerDAO"%>
<%@page import="Models.Entites.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="components/head.jsp" %>
        <%@include file="components/chartOrder.jsp" %>
        <title>Dashboard | Double T Shop</title>
    </head>
    <body class="sb-nav-fixed">
        <% 
            if(request.getSession().getAttribute("aUser")==null) {
                response.sendRedirect("./login.jsp");
            }
        %>
        
        <%@include file="components/navbar.jsp" %>
       
        <div id="layoutSidenav">
            <%@include file="components/sidenav.jsp" %>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
<!--                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>-->

                        <div class="row">
<!--                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>-->


                            <div class="col-md-10" id="columnchart_material" style="width: 800px; height: 500px;"></div>
                            <!--<div id="chart_div" style="width: 100%; height: 500px;"></div>-->


                            <!--<div id="chart_div" style="width: 900px; height: 500px;"></div>-->


<!--
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>-->
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Last Orders
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <%
                                            CustomerDAO customerDAO = new CustomerDAO();
                                            OrderDAO orderDAO1 = new OrderDAO();
                                            PhoneDAO phoneDAO1 = new PhoneDAO();
                                            
                                            ArrayList<Order> orders = orderDAO1.getOrders();
                                        %>
                                        <thead>
                                            <tr>
                                                <th>Customer</th>
                                                <th>Phone</th>
                                                <th>Quantity</th>
                                                <th>Total Price</th>
                                                <th>Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% 
                                                int i=0;
                                                for(Order o: orders) { 
                                                    if(i==5) break;
                                                    i++;
                                            %>
                                            <tr>
                                                <td><%=customerDAO.getCustomerCusId(o.getCustomerId()).getCustomerFullname()%></td>
                                                <td><%=phoneDAO1.getPhone(o.getPhoneId()).getPhoneName()%></td>
                                                <td><%=o.getOrderQuantity()%></td>
                                                <td><%=o.getOrderTotalPrice()%></td>
                                                <td><%=o.getOrderDate()%></td>
                                            </tr>
                                            <% } %>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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
                                            
        <%@include file="components/footer.jsp" %>
    </body>
</html>
