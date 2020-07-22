<%-- 
    Document   : index
    Created on : Jul 2, 2020, 11:08:02 AM
    Author     : tangminhtin
--%>

<%@page import="Models.Entites.OrderDetail"%>
<%@page import="Models.DAO.OrderDetailDAO"%>
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
        <%            if (request.getSession().getAttribute("aUser") == null) {
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
                        <div class="row">
                            <div class="col-md-10" id="columnchart_material" style="width: 800px; height: 500px;"></div>
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
                                            ArrayList<Order> orders = orderDAO.getOrders();
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
                                                for (Order o : orders) {
                                            %>
                                            <tr>
                                                <td><%=customerDAO.getCustomerCusId(o.getCustomerId()).getCustomerFullname()%></td>
                                                <td>
                                                    <%
                                                        OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
                                                        ArrayList<OrderDetail> orderDetailsId = orderDetailDAO.getOrderDetails(o.getOrderId());
                                                        String s = "";
                                                        s += phoneDAO.getPhone(orderDetailsId.get(0).getPhoneId()).getPhoneName() + " [" + orderDetailsId.get(0).getOrderDetailQuantity() + "]";
                                                        for (int i = 1; i < orderDetailsId.size(); i++) {
                                                            s += ", " + phoneDAO.getPhone(orderDetailsId.get(i).getPhoneId()).getPhoneName() + " [" + orderDetailsId.get(i).getOrderDetailQuantity() + "]";
                                                        }

                                                        out.print(s);
                                                    %>
                                                </td>
                                                <td><%=o.getOrderQuantity()%></td>
                                                <td><%=o.getOrderTotalPrice()%></td>
                                                <td><%=o.getOrderDate()%></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
