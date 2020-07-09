<%-- 
    Document   : google
    Created on : Jul 1, 2020, 9:18:00 PM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.PhoneDAO"%>
<%@page import="Models.Entites.PhoneDetail"%>
<%@page import="Models.DAO.PhoneDetailDAO"%>
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
    <marquee width="100%" scrolldelay="10"><i style="font-family: cursive">Welcome to us, have a nice day</i></marquee>


    <div class="container">
        <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
        <div class="">
            <%
                ArrayList<Phone> phones = new ArrayList<>();
                PhoneDAO phonedao = new PhoneDAO();
                PhoneDetailDAO pDetailDAO = new PhoneDetailDAO();

                phones = phonedao.getAllPhone();
                if (request.getParameter("phoneId") != null) {
                    String phoneId = (String) request.getParameter("phoneId");
                    int Id = (Integer.parseInt(phoneId));

                    PhoneDetail phoneDetail = pDetailDAO.getPhoneById(Id);
                    for (Phone p : phones) {
                        if (p.getPhoneId() == Id) {


            %>


            <div class="container">
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
                        <h2 class="card-title"><%=p.getPhoneName()%></h2>
                        <h5 class="card-title" style="text-align: right"><i class="fas fa-dollar-sign text-info"><%=p.getPhonePrice()%></i></h5>
                        <p style="text-align: right"><button class="btn btn-primary">Add to cart
                                <i class="fas fa-cart-plus ml-2" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalVM">Video Review</button>
                        </p>
                        <!--Text-->
                        <h4 style="font-family: inherit">
                            Description
                        </h4>
                        <p class="card-text"><%=phoneDetail.getPhoneDetailDescription()%></p>
                        <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                        <h4 style="font-family: inherit">
                            Special Features
                        </h4>
                        <p class="card-text"><%=phoneDetail.getPhoneDetailSpecialFeatures()%></p>
                        <h4 style="font-family: inherit">
                            Special Features
                        </h4>
                        <p class="card-text">
                                <%
                                int idMainCamera = phoneDetail.getMainCameraId();
                                

                                %>
                        </p>
                    </div>
                    <!-- Button trigger modal-->
                    

                    <!--Modal: modalVM-->
                    <div class="modal fade" id="modalVM" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">

                            <!--Content-->
                            <div class="modal-content">

                                <!--Body-->
                                <div class="modal-body mb-0 p-0">

                                    <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                        <iframe <%=phoneDetail.getPhoneDetailVideo()%></iframe>
                                    </div>

                                </div>

                                <!--Footer-->
                                <div class="modal-footer justify-content-center flex-column flex-md-row">
                                    <span class="mr-4">Spread the word!</span>
                                    <div>
                                        <a type="button" class="btn-floating btn-sm btn-fb">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                        <!--Twitter-->
                                        <a type="button" class="btn-floating btn-sm btn-tw">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                        <!--Google +-->
                                        <a type="button" class="btn-floating btn-sm btn-gplus">
                                            <i class="fab fa-google-plus-g"></i>
                                        </a>
                                        <!--Linkedin-->
                                        <a type="button" class="btn-floating btn-sm btn-ins">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </div>
                                    <button type="button" class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                            data-dismiss="modal">Close</button>

                                </div>

                            </div>
                            <!--/.Content-->

                        </div>
                    </div>
                    <!--Modal: modalVM-->


                </div>
                <!-- Card -->
            </div>

            <% }
                    }
                }%>
        </div>
    </div>

    <%@include file="components/footer.jsp" %>
</body>
</html>
