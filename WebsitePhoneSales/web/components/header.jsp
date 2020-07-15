<%-- 
    Document   : header
    Created on : Jul 1, 2020, 8:12:10 PM
    Author     : tangminhtin
--%>

<%@page import="Models.Entites.AddCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Entites.Phone"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header-section">
    <div class="header-top">
        <div class="container">
            <div class="ht-left">
                <div class="mail-service">
                    <i class=" fa fa-envelope"></i>
                    DoubleTShop@gmail.com
                </div>
                <div class="phone-service">
                    <i class=" fa fa-phone"></i>
                    +84 39.432.8223
                </div>
            </div>
            <div class="ht-right">
                <%
                    Cookie[] list = request.getCookies();

                    if (list.length >= 2) {
                        for (Cookie items : list) {
                            if (items.getName().equals("username")) {

                %>
                     <!-- Button trigger modal-->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalConfirmDelete">Hello <%=items.getValue()%></button>

                <!--Modal: modalConfirmDelete-->
                <div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
                        <!--Content-->
                        <div class="modal-content text-center">
                            <!--Header-->
                            <div class="modal-header d-flex justify-content-center">
                                <p class="heading">Are you sure you want to log out?</p>
                            </div>

                            <!--Body-->
                            <div class="modal-body">

                                <i class="fas fa-times fa-4x animated rotateIn"></i>

                            </div>

                            <!--Footer-->
                            <div class="modal-footer flex-center">
                                <a href="LogoutController" class="btn  btn-outline-danger">Yes</a>
                                <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">No</a>
                            </div>
                        </div>
                        <!--/.Content-->
                    </div>
                </div>
                <!--Modal: modalConfirmDelete-->
                <%    }
                    }
                } else {
                %>
                <a href="./login.jsp" class="login-panel"><i class="fa fa-user"></i>Login</a>
                <%
                    }
                %>
                <div class="top-social">
                    <a href="https://www.facebook.com/Double-T-Shop-109008594181602/"><i class="ti-facebook">Double T Shop</i></a>
                </div>
            </div>
        </div>
    </div>


    <div class="nav-item">
        <div class="container">
            <nav class="nav-menu mobile-menu">
                <ul>
                    <li class="active"><a href="./index.jsp">Home</a></li>
                    <li><a href="./apple.jsp">Apple</a></li>
                    <li><a href="./samsung.jsp">Samsung</a></li>
                    <li><a href="./google.jsp">Google</a></li>
                </ul>

                <form class="form-inline mr-auto" action="search.jsp">
                    <input class="form-control" type="text" name="txtSearch" placeholder="What do you need?" aria-label="Search">
                    <button class="btn btn-mdb-color btn-rounded btn-sm my-0 ml-sm-2" type="submit"><i class="fas fa-search"></i></button>
                </form>

                <!-- Button trigger modal-->
                <button type="button" class="btn btn-success px-3" data-toggle="modal" data-target="#modalCart"><i class="fas fa-shopping-cart" aria-hidden="true"></i></button>

                <!-- Modal: modalCart -->
                <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <!--Header-->
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel">Your cart</h4>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <!--Body-->
                            <div class="modal-body">

                                <table class="table table-hover" border="1px" width="100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Product name</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            ArrayList<AddCart> addCart = (ArrayList<AddCart>) session.getAttribute("Cart");
                                            double total = 0;
                                            int numberRow = 0;
                                            if (session.getAttribute("Cart") != null) {
                                                for (AddCart items : addCart) {
                                                    numberRow++;

                                        %>
                                        <tr>
                                            <th scope="row"><%=numberRow%></th>
                                            <td><%=items.getPhoneName()%></td>
                                            <td>$<%=items.getPhonePrice()%></td>

                                            <td><%=items.getPhoneQuantity()%></td>
                                            <td><a><i class="fas fa-times"></i></a></td>
                                        </tr>
                                        <tr class="total">

                                            <%
                                                        total += items.getPhonePrice() * items.getPhoneQuantity();
                                                    }
                                                }
                                            %>
                                            <th scope="row"></th>
                                            <td>Total = </td>
                                            <td><%=total%></td>
                                            <td></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <!--Footer-->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
                                <button class="btn btn-primary">Checkout</button>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- Modal: modalCart -->

            </nav>


            <div id="mobile-menu-wrap"></div>
        </div>
    </div>


</header>
<!-- Header End -->
