<%-- 
    Document   : apple
    Created on : Jul 1, 2020, 9:17:44 PM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="Models.Entites.Phone"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Apple | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>



        <div class="container" style="padding-bottom: 75px">
            <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                 
                <%                    
                    String search = (String) request.getParameter("txtSearch");
                    ArrayList<Phone> phones = new ArrayList<>();
                    PhoneDAO phonedao = new PhoneDAO();
                    phones = phonedao.getAllPhone();
                    int k = 0;
                    for (Phone p : phones) {
                        if (p.getPhoneName().toLowerCase().contains(search.toLowerCase())) {
                %>

                <div style="margin-top: 30px" class="col">
                    <div style="border-radius: 0px 35px 0px 45px" class="card h-100">
                        <!--Card image-->
                        <div class="view overlay">
                            <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>"><img style="border-radius: 0px 35px 0px 45px" class="card-img-top" src="<%=p.getPhoneImage()%>"
                                                                                       alt="Card image cap"></a>
                        </div>

                        <!--Card content-->
                        <div class="card-body">

                            <!--Title-->
                            <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>"><h4 class="card-title"><%=p.getPhoneName()%></h4></a>
                            <h5 class="card-title"><i class="fas fa-dollar-sign text-info"><%=p.getPhonePrice()%></i></h5>
                            <!--Text-->
                            <p class="card-text"><%=p.getPhoneShortDescription()%></p>
                            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                            <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>"><button type="button" style="border-radius: 0px 20px 0px 20px" class="btn aqua-gradient btn-md">View details</button></a>

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
