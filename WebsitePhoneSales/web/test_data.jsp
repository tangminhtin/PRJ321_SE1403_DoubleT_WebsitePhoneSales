<%-- 
    Document   : test_data
    Created on : Jun 28, 2020, 8:32:26 AM
    Author     : tangminhtin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Models.DAO.BrandDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Test Data</h1>
        <%
            BrandDAO bdao = new BrandDAO();
            ResultSet resultSet = bdao.getBrands();

            while(resultSet.next()) {
                out.println(resultSet.getInt("brandId"));
                out.println(resultSet.getString("brandName"));
                out.println(resultSet.getString("brandImage"));
            }

        %>
    </body>
</html>
