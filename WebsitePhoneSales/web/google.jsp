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
            <!-- Grid row -->
            <div class="row">
                <!-- Grid column -->
                <div class="col-md-12">
                    <ul style="border-radius: 35px 35px 35px 35px" class="nav aqua-gradient py-2 mb-2 font-weight-bold z-depth-1">
                        <li><a class="nav-link active white-text" href="./google.jsp">Price</a></li>
                        <li><a class="nav-link white-text" href="?min=0&max=500">Under $500</a></li>
                        <li><a class="nav-link white-text" href="?min=500&max=2000">From $500 - $2000</a></li>
                        <li><a class="nav-link white-text" href="?min=2000&max=5000">From $2000 - $5000</a></li>
                        <li><a class="nav-link white-text" href="?min=5000&max=8000">From $5000 - $8000</a></li>
                        <li><a class="nav-link white-text" href="?min=8000&max=9999999">Over $8000</a></li>
                        <li>
                            <div class="dropdown">
                                <button style="border-radius: 35px 35px 35px 35px" class="btn btn-primary btn-sm dropdown-toggle px-5" type="button" id="dropdownMenu4" data-toggle="dropdown"
                                  aria-haspopup="true" aria-expanded="false">
                                  Sort by
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenu4">
                                  <a name="optSort" value="ASC" class="dropdown-item" href="?optSort=ASC">Price ascending</a>
                                  <a name="optSort" value="DESC" class="dropdown-item" href="?optSort=DESC">Price descending</a>
                                </div>
                          </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Grid row -->

            
            
            <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <%
                    ArrayList<Phone> phones = new ArrayList<>();
                    PhoneDAO phonedao = new PhoneDAO();
                    String min = request.getParameter("min");
                    String max = request.getParameter("max");

                    if (min != null && max != null) {
                        phones = phonedao.getAllPhone(Integer.parseInt(min), Integer.parseInt(max));
                    } else if (request.getParameter("optSort") != null) {
                        phones = phonedao.getAllPhone(request.getParameter("optSort"));
                    } else {
                        phones = phonedao.getAllPhone();
                    }
                    
                    for (Phone p : phones) {
                        if (p.getBrandId() == 3) {
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
