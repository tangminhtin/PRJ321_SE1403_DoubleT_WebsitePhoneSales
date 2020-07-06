<%-- 
    Document   : samsung
    Created on : Jul 1, 2020, 9:17:51 PM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.phoneDAO"%>
<%@page import="Models.Entites.Phone"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Samsung | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>


        <h1>Samsung Page</h1>
        <div class="container">
            <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <%
                    ArrayList<Phone> phones = new ArrayList<>();
                    phoneDAO phonedao = new phoneDAO();
                    phones = phonedao.getAllPhone();
                    int k = 0;
                    for (Phone p : phones) {
                        if (p.getBrandId() == 2) {


                %>
                <div class="col">
                    <div class="card h-100">
                        <!--Card image-->
                        <div class="view overlay">
                            <img class="card-img-top" src="<%=p.getPhoneImage()%>"
                                 alt="Card image cap">
                            <a href="#!">
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>

                        <!--Card content-->
                        <div class="card-body">

                            <!--Title-->
                            <h4 class="card-title"><%=p.getPhoneName()%></h4>
                            <h5 class="card-title"><i class="fas fa-dollar-sign text-info"><%=p.getPhonePrice()%></i></h5>
                            <!--Text-->
                            <p class="card-text"><%=p.getPhoneShortDescription()%></p>
                            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                            <button type="button" class="btn btn-light-blue btn-md">View details</button>

                        </div>

                    </div>
                    <!-- Card -->
                </div>

                <% }
                    }%>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
