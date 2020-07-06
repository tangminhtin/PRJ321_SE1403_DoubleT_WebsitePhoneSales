<%-- 
    Document   : index
    Created on : Jun 28, 2020, 11:26:49 AM
    Author     : phuct
--%>

<%@page import="Models.DAO.phoneDetailDAO"%>
<%@page import="Models.Entites.PhoneDetail"%>
<%@page import="Models.DAO.phoneDAO"%>
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


        <h1>Big Project Website Phone Sales made by Double T</h1>


        <div class="container">
            <h3 class="text-center font-weight-bold mb-5">Best sellers</h3>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                <%
                    ArrayList<Phone> phones = new ArrayList<>();
                    ArrayList<PhoneDetail> phoneDetails = new ArrayList<>();
                    phoneDAO phonedao = new phoneDAO();
                    phoneDetailDAO phoneDetailDaos = new phoneDetailDAO();
                    
                    phones = phonedao.getAllPhone();
                    int k = 0;
                    
                    for (Phone p : phones) {
                        int phoneDetailId = p.getPhoneDetailId();
                            phoneDetails = phoneDetailDaos.getPhoneById(1);
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
                            <!--<button type="button" class="btn btn-light-blue btn-md">View details</button>-->
                            <!--                            ------------------------------------>
                            <button type="button" class="btn btn-light-blue btn-md" data-toggle="modal" data-target="#modalQuickView">View details</button>
                            <!-- Modal: modalQuickView -->
                            <div class="modal fade" id="modalQuickView" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-lg-5">
                                                    <!--Carousel Wrapper-->
                                                    <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails"
                                                         data-ride="carousel">
                                                        <!--Slides-->
                                                        <div class="carousel-inner" role="listbox">
                                                            <div class="carousel-item active">
                                                                <img class="d-block w-100"
                                                                     src="<%=phoneDetails.get(1).getPhoneDetailImage()%>"
                                                                     alt="First slide">
                                                            </div>
                                                        </div>
                                                        <!--/.Slides-->
                                                        <!--Controls-->
<!--                                                        <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                        <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Next</span>
                                                        </a>-->
                                                       
                                                    </div>
                                                    <!--/.Carousel Wrapper-->
                                                </div>
                                                <div class="col-lg-7">
                                                    <h2 class="h2-responsive product-name">
                                                        <strong><%=p.getPhoneName()%></strong>
                                                    </h2>
                                                    <h4 class="h4-responsive">
                                                        <span class="green-text">
                                                            <strong><%=p.getPhonePrice()%></strong>
                                                        </span>
<!--                                                        <span class="grey-text">
                                                            <small>
                                                                <s>$89</s>
                                                            </small>
                                                        </span>-->
                                                    </h4>

                                                    <!--Accordion wrapper-->
                                                    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingOne1">
                                                                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                                                                   aria-controls="collapseOne1">
                                                                    <h5 class="mb-0">
                                                                        Phone Description <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                    phoneDetails.get(1).getPhoneDetailDescription()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->

                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingTwo2">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                                                                   aria-expanded="false" aria-controls="collapseTwo2">
                                                                    <h5 class="mb-0">
                                                                        Video review<i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                 <%=
                                                                 phoneDetails.get(1).getPhoneDetailVideo()
                                                                 %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->

                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Special features <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                      <%=
                                                                      phoneDetails.get(1).getPhoneDetailSpecialFeatures()
                                                                      %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                         <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Display <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                     phoneDetails.get(1).getDisplayId()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Body <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                    phoneDetails.get(1).getBodyId()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Display <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                    phoneDetails.get(1).getDisplayId()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Display <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                    phoneDetails.get(1).getDisplayId()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->
                                                        <div class="card">

                                                            <!-- Card header -->
                                                            <div class="card-header" role="tab" id="headingThree3">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                   aria-expanded="false" aria-controls="collapseThree3">
                                                                    <h5 class="mb-0">
                                                                        Display <i class="fas fa-angle-down rotate-icon"></i>
                                                                    </h5>
                                                                </a>
                                                            </div>

                                                            <!-- Card body -->
                                                            <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                 data-parent="#accordionEx">
                                                                <div class="card-body">
                                                                    <%=
                                                                    phoneDetails.get(1).getDisplayId()
                                                                    %>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <!-- Accordion card -->

                                                    </div>
                                                    <!-- Accordion wrapper -->


                                                    <!-- Add to Cart -->
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-6">

                                                                <select class="md-form mdb-select colorful-select dropdown-primary">
                                                                    <option value="" disabled selected>Choose your option</option>
                                                                    <option value="1">White</option>
                                                                    <option value="2">Black</option>
                                                                    <option value="3">Pink</option>
                                                                </select>
                                                                <label>Select color</label>

                                                            </div>
                                                            <div class="col-md-6">

                                                                <select class="md-form mdb-select colorful-select dropdown-primary">
                                                                    <option value="" disabled selected>Choose your option</option>
                                                                    <option value="1">XS</option>
                                                                    <option value="2">S</option>
                                                                    <option value="3">L</option>
                                                                </select>
                                                                <label>Select size</label>

                                                            </div>
                                                        </div>
                                                        <div class="text-center">

                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button class="btn btn-primary">Add to cart
                                                                <i class="fas fa-cart-plus ml-2" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <!-- /.Add to Cart -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


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
                                <button type="button" class="btn btn-light-blue btn-md" data-toggle="modal" data-target="#modalQuickView">View details</button>
                                <!-- Modal: modalQuickView -->
                                <div class="modal fade" id="modalQuickView" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                     aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-lg-5">
                                                        <!--Carousel Wrapper-->
                                                        <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails"
                                                             data-ride="carousel">
                                                            <!--Slides-->
                                                            <div class="carousel-inner" role="listbox">
                                                                <div class="carousel-item active">
                                                                    <img class="d-block w-100"
                                                                         src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(23).jpg"
                                                                         alt="First slide">
                                                                </div>
                                                                <div class="carousel-item">
                                                                    <img class="d-block w-100"
                                                                         src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(24).jpg"
                                                                         alt="Second slide">
                                                                </div>
                                                                <div class="carousel-item">
                                                                    <img class="d-block w-100"
                                                                         src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(25).jpg"
                                                                         alt="Third slide">
                                                                </div>
                                                            </div>
                                                            <!--/.Slides-->
                                                            <!--Controls-->
                                                            <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                                <span class="sr-only">Previous</span>
                                                            </a>
                                                            <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                                <span class="sr-only">Next</span>
                                                            </a>
                                                            <!--/.Controls-->
                                                            <ol class="carousel-indicators">
                                                                <li data-target="#carousel-thumb" data-slide-to="0" class="active">
                                                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(23).jpg" width="60">
                                                                </li>
                                                                <li data-target="#carousel-thumb" data-slide-to="1">
                                                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(24).jpg" width="60">
                                                                </li>
                                                                <li data-target="#carousel-thumb" data-slide-to="2">
                                                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/img%20(25).jpg" width="60">
                                                                </li>
                                                            </ol>
                                                        </div>
                                                        <!--/.Carousel Wrapper-->
                                                    </div>
                                                    <div class="col-lg-7">
                                                        <h2 class="h2-responsive product-name">
                                                            <strong>Product Name</strong>
                                                        </h2>
                                                        <h4 class="h4-responsive">
                                                            <span class="green-text">
                                                                <strong>$49</strong>
                                                            </span>
                                                            <span class="grey-text">
                                                                <small>
                                                                    <s>$89</s>
                                                                </small>
                                                            </span>
                                                        </h4>

                                                        <!--Accordion wrapper-->
                                                        <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

                                                            <!-- Accordion card -->
                                                            <div class="card">

                                                                <!-- Card header -->
                                                                <div class="card-header" role="tab" id="headingOne1">
                                                                    <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                                                                       aria-controls="collapseOne1">
                                                                        <h5 class="mb-0">
                                                                            Collapsible Group Item #1 <i class="fas fa-angle-down rotate-icon"></i>
                                                                        </h5>
                                                                    </a>
                                                                </div>

                                                                <!-- Card body -->
                                                                <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                                                                     data-parent="#accordionEx">
                                                                    <div class="card-body">
                                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                                                                        squid. 3
                                                                        wolf moon officia aute,
                                                                        non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <!-- Accordion card -->

                                                            <!-- Accordion card -->
                                                            <div class="card">

                                                                <!-- Card header -->
                                                                <div class="card-header" role="tab" id="headingTwo2">
                                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                                                                       aria-expanded="false" aria-controls="collapseTwo2">
                                                                        <h5 class="mb-0">
                                                                            Collapsible Group Item #2 <i class="fas fa-angle-down rotate-icon"></i>
                                                                        </h5>
                                                                    </a>
                                                                </div>

                                                                <!-- Card body -->
                                                                <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                                                                     data-parent="#accordionEx">
                                                                    <div class="card-body">
                                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                                                                        squid. 3
                                                                        wolf moon officia aute,
                                                                        non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <!-- Accordion card -->

                                                            <!-- Accordion card -->
                                                            <div class="card">

                                                                <!-- Card header -->
                                                                <div class="card-header" role="tab" id="headingThree3">
                                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                                                       aria-expanded="false" aria-controls="collapseThree3">
                                                                        <h5 class="mb-0">
                                                                            Collapsible Group Item #3 <i class="fas fa-angle-down rotate-icon"></i>
                                                                        </h5>
                                                                    </a>
                                                                </div>

                                                                <!-- Card body -->
                                                                <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                                                                     data-parent="#accordionEx">
                                                                    <div class="card-body">
                                                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                                                                        squid. 3
                                                                        wolf moon officia aute,
                                                                        non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <!-- Accordion card -->

                                                        </div>
                                                        <!-- Accordion wrapper -->


                                                        <!-- Add to Cart -->
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col-md-6">

                                                                    <select class="md-form mdb-select colorful-select dropdown-primary">
                                                                        <option value="" disabled selected>Choose your option</option>
                                                                        <option value="1">White</option>
                                                                        <option value="2">Black</option>
                                                                        <option value="3">Pink</option>
                                                                    </select>
                                                                    <label>Select color</label>

                                                                </div>
                                                                <div class="col-md-6">

                                                                    <select class="md-form mdb-select colorful-select dropdown-primary">
                                                                        <option value="" disabled selected>Choose your option</option>
                                                                        <option value="1">XS</option>
                                                                        <option value="2">S</option>
                                                                        <option value="3">L</option>
                                                                    </select>
                                                                    <label>Select size</label>

                                                                </div>
                                                            </div>
                                                            <div class="text-center">

                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                <button class="btn btn-primary">Add to cart
                                                                    <i class="fas fa-cart-plus ml-2" aria-hidden="true"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <!-- /.Add to Cart -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

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
