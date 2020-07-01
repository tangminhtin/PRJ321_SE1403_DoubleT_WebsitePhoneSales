<%-- 
    Document   : index
    Created on : Jun 28, 2020, 11:26:49 AM
    Author     : phuct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Home | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>


        <h1>Big Project Website Phone Sales made by Double T</h1>


        <div class="container">
            <h3 class="text-center font-weight-bold mb-5">Best sellers</h3>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <% for (int i = 0; i < 4; i++) { %>
                <div class="col">
                    <div class="card h-100">
                        <!--Card image-->
                        <div class="view overlay">
                            <img class="card-img-top" src="https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-se-2020.jpg"
                                 alt="Card image cap">
                            <a href="#!">
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>

                        <!--Card content-->
                        <div class="card-body">

                            <!--Title-->
                            <h4 class="card-title">Apple iPhone SE (2020)</h4>
                            <!--Text-->
                            <p class="card-text">Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in</p>
                            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                            <button type="button" class="btn btn-light-blue btn-md"><i class="fas fa-dollar-sign">399</i></button>

                        </div>

                    </div>
                    <!-- Card -->
                </div>

                <% }%>
            </div>
        </div>


        <div class="container mt-5">
            <!--Section: Content-->
            <section class="">
                <!-- Section heading -->
                <h3 class="text-center font-weight-bold mb-5">Latest news</h3>
                <!-- Grid row -->
                <div class="row">
                    <% for (int i = 0; i < 3; i++) { %>
                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
                        <!-- Card -->
                        <div class="card hoverable">
                            <!-- Card image -->
                            <img class="card-img-top" src="https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-z-flip-01.jpg" alt="Card image cap">
                            <!-- Card content -->
                            <div class="card-body">
                                <!-- Title -->
                                <a href="#!" class="black-text">Samsung Galaxy Z Flip</a>
                                <!-- Text -->
                                <p class="card-title text-muted font-small mt-3 mb-2">Samsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects.</p>
                                <button type="button" class="btn btn-light-blue btn-md"><i class="fas fa-dollar-sign">$1050</i></button>
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
