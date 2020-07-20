<%-- 
    Document   : google
    Created on : Jul 1, 2020, 9:18:00 PM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Entites.Phone"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Google | Double T Shop</title>
   
    </head>
    <body>
        <%@include file="components/header.jsp" %>


      <img style="width: 73%; padding-left: 540px;padding-right: 100px;padding-top:20px;padding-bottom: 20px  " alt="" src="./img/logoGoogle.png"/>
        <div class="container" style="padding-bottom: 75px">
            <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <%
                    ArrayList<Phone> phones = new ArrayList<>();
                    PhoneDAO phonedao = new PhoneDAO();
                    phones = phonedao.getAllPhone();
                    int k = 0;
                    for (Phone p : phones) {
                        if (p.getBrandId() == 3) {


                %>
                <div class="col">
                    <div style="border-radius: 0px 35px 0px 45px" class="card h-100">
                        <!--Card image-->
                        <div class="view overlay">
                            <img style="border-radius: 0px 35px 0px 45px" class="card-img-top" src="<%=p.getPhoneImage()%>"
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
