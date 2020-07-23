<%-- 
    Document   : bill
    Created on : Jul 21, 2020, 2:51:48 PM
    Author     : tangminhtin
--%>

<%@page import="Helpers.SendEmail"%>
<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="Models.DAO.ShipperDAO"%>
<%@page import="Models.Entites.Shipper"%>
<%@page import="Models.Entites.OrderDetail"%>
<%@page import="Models.DAO.OrderDetailDAO"%>
<%@page import="Models.DAO.OrderDAO"%>
<%@page import="Models.Entites.Order"%>
<%@page import="Models.Entites.Customer"%>
<%@page import="Models.DAO.CustomerDAO"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Register | Double T Shop</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>
        <%@include file="components/header.jsp" %>


        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="invoice-title">
                        <%  OrderDAO orderDAO = new OrderDAO();
                            CustomerDAO customerDAO = new CustomerDAO();
                            ShipperDAO shipperDAO = new ShipperDAO();
                            OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
                            PhoneDAO phoneDAO = new PhoneDAO();
                            int userId = -1;
                            Cookie[] listCookie = request.getCookies();
                            for (Cookie c : listCookie) {
                                if (c.getName().equals("userId")) {
                                    userId = Integer.parseInt(c.getValue());
                                }
                            }
                            int orderId =  Integer.parseInt(request.getParameter("orderId"));
                            
                             
                            Customer customer = customerDAO.getCustomerCusUserId(userId);
                            int shipperId = Integer.parseInt(request.getParameter("shipperId"));
                            Shipper shipper = shipperDAO.getShipperById(shipperId);

                            
                        %>
                        <h2>Invoice</h2><h3 class="pull-right">Order # <%=orderId%></h3>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-xs-6">
                            <address>
                                <strong>Billed To:</strong><br>
                                <%=customer.getCustomerFullname()%><br>
                                <%=customer.getCustomerAddress()%><br>
                                <%=customer.getCustomerPhone()%><br>
                            </address>
                        </div>
                        <div class="col-xs-6 text-right">
                            <address>
                                <strong>Shipped To:</strong><br>
                                <%=shipper.getShipperName()%><br>
                                <%=shipper.getShipperPhone()%><br>
                            </address>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <address>
                                <strong>Payment Method:</strong><br>
                                Payment on delivery<br>
                            </address>
                        </div>
                        <div class="col-xs-6 text-right">
                            <address>
                                <strong>Order Date:</strong><br>
                                <%

                                    Order order = orderDAO.getOrderById(orderId);
                                   
                                %>
                                 <%=order.getOrderDate()%><br><br>
                            </address>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Order summary</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>
                                            <td><strong>Item</strong></td>
                                            <td class="text-center"><strong>Price</strong></td>
                                            <td class="text-center"><strong>Quantity</strong></td>
                                            <td class="text-right"><strong>Totals</strong></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                        <%

                                            ArrayList<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
                                            orderDetails = orderDetailDAO.getOrderDetails(orderId);
                                            System.out.println("Orderdetail" + orderDetails);
                                            double sub = 0;
                                            double subTotal = 0;
                                            double totals = 0;
                                            double price = 0;
                                            String phoneName = "";
                                            String invoice = "<h3>Thank you for purchasing our products!</h3>"
                                                    + "<table style='width:100%'>"
                                                    + "<tr>"
                                                    + "<th style='text-align: left'>Billed To:</th>"
                                                    + "<th style='text-align: right'>Shipped To:</th>"
                                                    + "</tr>"
                                                    + "<tr>"
                                                    + "<td style='text-align: left'>"
                                                    + "<address>"
                                                    + customer.getCustomerFullname() + "<br>"
                                                    + customer.getCustomerAddress() + "V<br>"
                                                    + customer.getCustomerPhone() + "<br>"
                                                    + "</address>"
                                                    + "</td>"
                                                    + "<td style='text-align: right'>"
                                                    + "<address>"
                                                    + shipper.getShipperName() + "<br>"
                                                    + shipper.getShipperPhone() + "<br>"
                                                    + "<br>"
                                                    + "</address>"
                                                    +"</td>"
                                                    + "</tr>"
                                                    + "<tr>"
                                                    + "<th style='text-align: left'>Payment Method:</th>"
                                                    + "<th style='text-align: right'>Order Date:</th> "
                                                    + "</tr>"
                                                    + "<tr>"
                                                    + "<td tyle='text-align: left'>Payment on delivery</td>"
                                                    + "<td style='text-align: right'>" + order.getOrderDate()+ "</td>"
                                                    + "</tr>"
                                                    + "</table>";
                                                 
                                                    
                                                    invoice += "<h4>Bill #" + orderId + "</h4>"
                                                                + "<table style='width:100%' border='1' cellspacing='0'>"
                                                                + "<tr>"
                                                                + "<th style='background-color: #4CAF50; color: white;'>No</th>"
                                                                + "<th style='background-color: #4CAF50; color: white;'>Name</th>"
                                                                + "<th style='background-color: #4CAF50; color: white;'>Quantity</th>"
                                                                + "<th style='background-color: #4CAF50; color: white;'>Price</th>"
                                                                + "<th style='background-color: #4CAF50; color: white;'>Total</th>"
                                                                + "</tr>";
                                            int k = 0;
                                            for (OrderDetail items : orderDetails) {
                                                sub = (items.getOrderDetailTotalPrice() * items.getOrderDetailQuantity());
                                                subTotal+=sub;
                                                price = items.getOrderDetailTotalPrice() / items.getOrderDetailQuantity();
                                                
                                                phoneName = phoneDAO.getPhone(items.getPhoneId()).getPhoneName();

                                                invoice += "<tr>"
                                                                + "<td style='text-align: center'>" + ++k +"</td>"
                                                                + "<td>" + phoneName + "</td>"
                                                                + "<td style='text-align: center'>" + items.getOrderDetailQuantity() + "</td>"
                                                                + "<td style='text-align: right'>$" + price + "</td>"
                                                                + "<td style='text-align: right'>$" + items.getOrderDetailTotalPrice() + "</td>"
                                                            + "</tr>";
                                                        
                                        %>
                                        <tr>
                                            <td><%=phoneName%></td>
                                            <td class="text-center">$<%=price%></td>
                                            <td class="text-center"><%=items.getOrderDetailQuantity()%></td>
                                            <td class="text-right">$<%=items.getOrderDetailTotalPrice()%></td>
                                        </tr>
                                        <%
                                            }
                                            totals = subTotal+15;

                                            invoice += "<tr>"
                                                    + "<td colspan='4' style='text-align: right'><b>Subtotal</b></td>"
                                                    + "<td style='text-align: right'><b>$" + subTotal + "</b></td>"
                                                    + "</tr>"
                                                    + "<tr>"
                                                    + "<td colspan='4' style='text-align: right'><b>Shipping</b></td>"
                                                    + "<td style='text-align: right'><b>$15</b></td>"
                                                    + "</tr>"
                                                    + "<tr>"
                                                    + "<td colspan='4' style='text-align: right'><b>Total</b></td>"
                                                    + "<td style='text-align: right'><b>$" + totals + "</b></td>"
                                                    + "</tr>";


                                            invoice += "</table>"
                                                     + "<br><br><hr><br>Thanks, <br>Double T Shop";
                                            SendEmail.sendEmail(customer.getCustomerEmail(), "Order Successful", invoice);
                                        %>
                                        <tr>
                                            <td class="thick-line"></td>
                                            <td class="thick-line"></td>
                                            <td class="thick-line text-center"><strong>Subtotal</strong></td>
                                            <td class="thick-line text-right">$<%=subTotal%></td>
                                        </tr>

                                        <tr>
                                            <td class="no-line"></td>
                                            <td class="no-line"></td>
                                            <td class="no-line text-center"><strong>Shipping</strong></td>
                                            <td class="no-line text-right">$15</td>
                                        </tr>
                                        <tr>
                                            <td class="no-line"></td>
                                            <td class="no-line"></td>
                                            <td class="no-line text-center"><strong>Total</strong></td>
                                            <td class="no-line text-right">$<%=totals%></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                session.removeAttribute("orderId");
                session.removeAttribute("shipper");
            %>
        </div>
        <%@include file="components/footer.jsp" %>
    </body>
</html>

