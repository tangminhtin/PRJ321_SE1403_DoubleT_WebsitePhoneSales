<%-- 
    Document   : report
    Created on : Jul 28, 2020, 12:12:52 AM
    Author     : tangminhtin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Models.DAO.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" cellspacing="10">
            <tr>
                <th colspan="4" style="text-align: center; color: green; font-size: 30px; padding: 10px">Report in <%=request.getParameter("date")%> of Double T Shop</th>
            </tr>

            <tr style="color: white; font-size: 20px;">
                <th style="background-color: #4CAF50">No</th>
                <th style="background-color: #4CAF50">Phone Name</th>
                <th style="background-color: #4CAF50">Quantity</th>
                <th style="background-color: #4CAF50">Price</th>
            </tr>
            <%
                String date = request.getParameter("date");
                DBConnection dbc = new DBConnection();
                Connection conn = dbc.getConnection();
                String sql = "SELECT phoneName, SUM(orderdetail.orderDetailQuantity) AS totalQuantity, SUM(orderdetail.orderDetailTotalPrice) AS totalPrice FROM ((`phone` INNER JOIN `orderdetail` ON phone.phoneId = orderdetail.phoneId) INNER JOIN `order` ON orderdetail.orderId = order.orderId) WHERE DATE_FORMAT(order.orderDate, '%Y-%m') = ? GROUP BY orderdetail.phoneId";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, date);
                ResultSet rs = ps.executeQuery();
                int i = 0;
                int totalQuantity = 0;
                Double totalPrice = 0.0;

                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-Disposition", "inline; filename=report.xls");

                while (rs.next()) {
                    totalQuantity += rs.getInt("totalQuantity");
                    totalPrice += rs.getDouble("totalPrice");
            %>

            <tr style="font-size: 24px;">
                <td style="text-align: center;"><%= ++i%></th>
                <td style="background-color: #f2f2f2"><%= rs.getString("phoneName")%></td>
                <td style="background-color: #f2f2f2; text-align: center;"><%= rs.getInt("totalQuantity")%></td>
                <td style="background-color: #f2f2f2; text-align: right;"><%= rs.getString("totalPrice")%></td>
            </tr>

            <%    }
            %>
            <tr style="color: white; font-size: 24px;">
                <td colspan="2" style="text-align: right; background-color: #4CAF50">Total</td>
                <td style="background-color: #4CAF50; text-align: center;"><%=totalQuantity%></td>
                <td style="background-color: #4CAF50"><%=totalPrice%></td>
            </tr>


        </table>
    </body>
</html>
