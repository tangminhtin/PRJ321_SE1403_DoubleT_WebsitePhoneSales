<%-- 
    Document   : chartOrder
    Created on : Jul 19, 2020, 10:11:07 AM
    Author     : tangminhtin
--%>


<%@page import="Models.DAO.BrandDAO"%>
<%@page import="Models.DAO.CommentDAO"%>
<%@page import="Models.DAO.OrderDAO"%>
<%@page import="Models.DAO.UserDAO"%>
<%@page import="Models.DAO.PhoneDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    PhoneDAO phoneDAO = new PhoneDAO();
    UserDAO userDAO = new UserDAO();
    OrderDAO orderDAO = new OrderDAO();
    CommentDAO commentDAO = new CommentDAO();
    BrandDAO brandDAO = new BrandDAO();
%>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['bar']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['', 'Phones', 'Users', 'Orders', 'Comments', 'Brands'],
            ['Statistics', <%=phoneDAO.getNumberOfPhone()%>, <%=userDAO.getNumberOfUser()%>,
                <%=orderDAO.getNumberOfOrder()%>, <%=commentDAO.getNumberOfComment()%>,
                <%=brandDAO.getNumberOfBrand()%>]
                    ]);

        var options = {
            chart: {
                title: 'Statistics of Double T Shop',
                subtitle: 'Phone, User, Order, Comment and Brand',
            }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    }
</script>
