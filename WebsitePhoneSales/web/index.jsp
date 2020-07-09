<%-- 
    Document   : index
    Created on : Jun 28, 2020, 11:26:49 AM
    Author     : phuct
--%>

<%@page import="Models.DAO.PhoneDetailDAO"%>
<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="Models.DAO.PhoneDetailDAO"%>
<%@page import="Models.Entites.PhoneDetail"%>
<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Entites.Phone"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Home | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>
    <marquee width="100%" scrolldelay="10"><i style="font-family: cursive">Welcome to us, have a nice day</i></marquee>

    <h1>Big Project Website Phone Sales made by Double T</h1>


    <div class="container">
        <h3 class="text-center font-weight-bold mb-5">Best sellers</h3>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
            <%
                ArrayList<Phone> phones = new ArrayList<>();
                ArrayList<PhoneDetail> phoneDetails = new ArrayList<>();
                PhoneDAO phonedao = new PhoneDAO();
                PhoneDetailDAO phoneDetailDaos = new PhoneDetailDAO();

                phones = phonedao.getAllPhone();
                int k = 0;

                for (Phone p : phones) {

                    if (k >= 4) {
                        break;
                    }
                    k++;


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
                        <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>" target="_blank"><button type="button"class="btn btn-light-blue btn-md">View details</button></a>

                    </div>

                </div>
                <!-- Card -->
            </div>

            <% }
            %>
        </div>
    </div>


    <div class="container mt-5">
        <!--Section: Content-->
        <section class="">
            <!-- Section heading -->
            <h3 class="text-center font-weight-bold mb-5">Latest news</h3>
            <!-- Grid row -->
            <div class="row">
                <%
                    phones = phonedao.getAllPhone();
                    k = 0;
                    for (int i = phones.size() - 1; i >= 0; i--) {
                        if (k >= 3) {
                            break;
                        }
                        k++;
                %>
                <!-- Grid column -->
                <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
                    <!-- Card -->
                    <div class="card hoverable">
                        <!-- Card image -->
                        <img class="card-img-top" src="<%=phones.get(i).getPhoneImage()%>" alt="Card image cap">
                        <!-- Card content -->
                        <div class="card-body">
                            <!-- Title -->
                            <a href="#!" class="black-text"><%=phones.get(i).getPhoneName()%></a>
                            <!--Title-->

                            <h5 class="card-title"><i class="fas fa-dollar-sign text-info"><%=phones.get(i).getPhonePrice()%></i></h5>
                            <!-- Text -->
                            <p class="card-title text-muted font-small mt-3 mb-2"><%=phones.get(i).getPhoneShortDescription()%></p>

                            <a href="showDetails.jsp?phoneId=<%=phones.get(i).getPhoneId()%>" target="_blank"><button type="button"class="btn btn-light-blue btn-md">View details</button></a>

                        </div>
                    </div>
                    <!-- Card -->
                </div>
                <!-- Grid column -->
                <% }%>
            </div>
            <!-- Grid row -->
        </section>
        <!--Section: Content-->
    </div>



    <%@include file="components/footer.jsp" %>
</body>
</html>
