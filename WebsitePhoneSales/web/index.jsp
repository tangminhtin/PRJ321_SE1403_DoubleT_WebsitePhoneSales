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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title >Home | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>
        <!--Carousel Wrapper-->
        <div id="video-carousel-example2" class="carousel slide carousel-fade container" data-ride="carousel" style="padding-top: 20px">
            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#video-carousel-example2" data-slide-to="0" class="active"></li>
                <li data-target="#video-carousel-example2" data-slide-to="1"></li>
                <li data-target="#video-carousel-example2" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="carousel-item active">
                    <!--Mask color-->
                    <div style="border-radius: 0px 150px 0px 150px" class="view">
                        <!--Video source-->
                        <video class="video-fluid" autoplay loop muted>
                            <source src="./img/TheNewIPhoneSEApple.mp4" type="video/mp4" />
                        </video>
                        <div style="border-radius: 0px 150px 0px 150px" class="mask rgba-purple-slight"></div>
                    </div>

                    <!--Caption-->
                    <div class="carousel-caption">
                        <div class="animated fadeInDown">
                            <h3 class="h3-responsive">APPLE SE 2020</h3>

                        </div>
                    </div>
                    <!--Caption-->
                </div>
                <!-- /.First slide -->

                <!-- Second slide -->
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <!--Video source-->
                        <video style="border-radius: 0px 150px 0px 150px" class="video-fluid" autoplay loop muted>
                            <source src="./img/TrailerPixel4xl.mp4" type="video/mp4" />
                        </video>
                        <div style="border-radius: 0px 150px 0px 150px" class="mask rgba-purple-slight"></div>
                    </div>

                    <!--Caption-->
                    <div class="carousel-caption">
                        <div class="animated fadeInDown">
                            <h3 class="h3-responsive">GOOGLE Pixel 4xl</h3>

                        </div>
                    </div>
                    <!--Caption-->
                </div>
                <!-- /.Second slide -->

                <!-- Third slide -->
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <!--Video source-->
                        <video style="border-radius: 0px 150px 0px 150px" class="video-fluid" autoplay loop muted>
                            <source src="./img/TrailerSamsungS20.mp4" type="video/mp4" />
                        </video>
                        <div style="border-radius: 0px 150px 0px 150px" class="mask rgba-purple-slight"></div>
                    </div>

                    <!--Caption-->
                    <div class="carousel-caption">
                        <div class="animated fadeInDown">
                            <h3 class="h3-responsive">SAMSUNG S20 Ultra 5G</h3>

                        </div>
                    </div>
                    <!--Caption-->
                </div>
                <!-- /.Third slide -->
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#video-carousel-example2" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#video-carousel-example2" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
        </div>
        <!--Carousel Wrapper-->
        <div style="padding-left: 200px "> 
            <marquee width="86.5%" scrolldelay="10"><font size="5" face="Verdana"><b>Welcome to us, have a nice day</b></font></marquee>

        </div>  


        <div class="container" style="padding-bottom: 100px">
            <h2 class="text-center font-weight-bold mb-5">Best sellers</h2>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/db_website_phone_sales" user="root" password="" scope="page"/>
                <%--<sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://node229237-doubletshop.j.layershift.co.uk/db_website_phone_sales" user="jelastic-4371733" password="3g1D57c0N7gGD4dLo6M8" scope="application"/>--%>
                <sql:query var="bestSellers" dataSource="${conn}">
                    SELECT phone.phoneId, phone.phoneImage, phone.phoneName, phone.phonePrice, phone.phoneShortDescription, SUM(orderdetail.orderDetailQuantity) AS quantity
                    FROM phone
                    INNER JOIN orderdetail ON phone.phoneId = orderdetail.phoneId
                    GROUP BY orderdetail.phoneId
                    ORDER BY quantity DESC
                    LIMIT 0, 8
                </sql:query>

                <c:forEach var="p" items="${bestSellers.rows}">
                    <div class="col" style="margin-top: 30px">
                        <div style="border-radius: 0px 35px 0px 45px" class="card h-100">
                            <!--Card image-->
                            <div class="view overlay">
                                <a href="showDetails.jsp?phoneId=${p.phoneId}">
                                    <img style="border-radius: 0px 35px 0px 35px" class="card-img-top" src="${p.phoneImage}" alt="Card image cap">
                                </a>
                            </div>
                            <!--Card content-->
                            <div class="card-body">
                                <!--Title-->
                                <a href="showDetails.jsp?phoneId=${p.phoneId}"><h4 class="card-title">${p.phoneName}</h4></a>
                                <h5 class="card-title"><i class="fas fa-dollar-sign text-info">${p.phonePrice}</i></h5>
                                <!--Text-->
                                <p class="card-text">${p.phoneShortDescription}</p>
                                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                <a href="showDetails.jsp?phoneId=${p.phoneId}"><button type="button" style="border-radius: 0px 20px 0px 20px" class="btn aqua-gradient btn-md">View details</button></a>
                            </div>
                        </div>
                        <!-- Card -->
                    </div>
                </c:forEach>
            </div>
        </div> 


        <div class="container mt-5" style="padding-bottom: 75px">
            <!--Section: Content-->
            <section class="">
                <!-- Section heading -->
                <h2 class="text-center font-weight-bold mb-5">Latest news</h2>
                <!-- Grid row -->
                <div class="row">
                    <%                        
                        ArrayList<Phone> phones = new ArrayList<>();
                        PhoneDAO phonedao = new PhoneDAO();

                        phones = phonedao.getAllPhone();
                        int k = 0;
                        phones = phonedao.getAllPhone();
                        k = 0;
                        for (Phone p : phones) {
                            if (k >= 3) {
                                break;
                            }
                            k++;
                    %>
                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
                        <!-- Card -->
                        <div style="border-radius: 50px 50px 50px 50px; margin-top: 30px" class="card hoverable">
                            <!-- Card image -->
                            <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>"><img style="border-radius: 50px 50px 0px 0px" class="card-img-top" src="<%=p.getPhoneImage()%>" alt="Card image cap"></a>
                            <!-- Card content -->
                            <div class="card-body">
                                <!-- Title -->
                                <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>" class="black-text"><%=p.getPhoneName()%></a>
                                <!--Title-->

                                <h5 class="card-title"><i class="fas fa-dollar-sign text-info"><%=p.getPhonePrice()%></i></h5>
                                <!-- Text -->
                                <p class="card-title text-muted font-small mt-3 mb-2"><%=p.getPhoneShortDescription()%></p>

                                <a href="showDetails.jsp?phoneId=<%=p.getPhoneId()%>"><button type="button" style="border-radius: 0px 20px 0px 20px" class="btn aqua-gradient btn-md">View details</button></a>
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
