<%-- 
    Document   : test_data
    Created on : Jun 28, 2020, 8:32:26 AM
    Author     : tangminhtin
--%>

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
            BrandDAO bdao = new BrandDAO();
            ResultSet resultSet = bdao.getBrands();

//            while(resultSet.next()) {
//                out.println(resultSet.getInt("brandId"));
//                out.println(resultSet.getString("brandName"));
//                out.println(resultSet.getString("brandImage"));
//            }
//            User u = (User) session.getAttribute("user");
//
////                        int userId = u.getUserId();
////                        String userName = u.getUserName();
////                        String userPassword = u.getUserPassword();
////                        String userRole = u.getUserRole(); 
//            out.println("<tr>");
//            out.println("<td>" + u.getUserId() + "</td>");
//            out.println("<td>" + u.getUserName() + "</td>");
//            out.println("<td>" + u.getUserPassword() + "</td>");
//            out.println("<td>" + u.getUserRole() + "</td>");
//            out.println("<tr>");
//
//            int userId = 7;
//            String userName = "phucthinhbach";
//            String userPassword = "12456789";
//            String userRole = "admin";
//            UserDAO userDAO = new UserDAO();
//            boolean check = userDAO.update(userName, userPassword, userRole, userId);
//            if (check != false) {
//                out.print("Success");
//            }
        ArrayList<Phone> phone = new ArrayList<>();
        phoneDAO phonedao = new phoneDAO();
         phone = phonedao.getAllPhone();
         for (Phone p : phone) {
             out.print("<p>Phone" + p.getPhoneImage() +"</p><br>");
              out.print("<p>Phone" + p.getPhoneName() +"</p><br>");
              out.print("<p>Phone" + p.getPhoneShortDescription() +"</p><br>");
              out.print("<p>Phone" + p.getPhoneDiscount() +"</p><br>");
              out.print("<p>Phone" + p.getPhonePrice() +"</p><br>");
              
             }

        %>

    </body>
</html>
