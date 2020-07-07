<%-- 
    Document   : test_data
    Created on : Jun 28, 2020, 8:32:26 AM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.CustomerDAO"%>
<%@page import="Models.DAO.EmployeeDAO"%>
<%@page import="Models.Entites.Phone"%>
<%@page import="Models.DAO.DBConnection"%>
<%@page import="Models.DAO.phoneDAO"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page import="Models.Entites.User"%>
<%@page import="java.util.ArrayList"%>
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
           CustomerDAO udao = new CustomerDAO();
           udao.insert("VIWWN", "CTTQ", "444103234849", "ve4i@gmail.com", "imdsag.png", 6);

        %>

    </body>
</html>
