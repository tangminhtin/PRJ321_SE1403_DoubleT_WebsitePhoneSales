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
            
            <!--LOGIN-->
            <div class="ht-right">
                <% Cookie[] list = request.getCookies();
                    try {

                        if (list.length >= 2) {
                            for (Cookie items : list) {
                                if (items.getName().equals("username")) {

                %>

                <div class="dropdown ht-right">
                    <button style="border-radius: 0px 30px 0px 30px" class="btn peach-gradient dropdown-toggle" type="button" id="dropdownMenu6" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-tie"></i> <%=items.getValue()%>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu6">
                        <button style="border-radius: 0px 30px 0px 30px" type="button" class="btn peach-gradient" data-toggle="modal" data-target="#modalConfirmDelete">Logout</button>
                    </div>
                </div>
                <!-- Button trigger modal-->

                <!--Modal: modalConfirmDelete-->
                <div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-sm modal-notify modal-warning" role="document">
                        <div style="border-radius: 0 0 45px 45px" class="modal-content text-center">
                            <div style="border-radius: 0 0 45px 45px" class="modal-header d-flex justify-content-center">
                                <p class="heading">Are you sure you want to logout?</p>
                            </div>
                            <div class="modal-body">
                                <i class="fas fa-times fa-4x animated rotateIn"></i>
                            </div>
                            <div class="modal-footer flex-center">
                                <a style="border-radius: 5px 30px 5px 30px" href="LoginController?query=uLogout" class="btn  btn-outline-warning">Yes</a>
                                <a style="border-radius: 5px 30px 5px 30px" type="button" class="btn  btn-warning waves-effect" data-dismiss="modal">No</a>
                            </div>
                        </div>
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
                    } catch (Exception e) {
                        response.sendRedirect("./index.jsp");
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

                <!--SEARCH-->
                <form class="form-inline mr-auto" action="search.jsp">
                    <input style="border-radius: 0px 20px 0px 20px" class="form-control" type="text" name="txtSearch" placeholder="What do you need?" aria-label="Search">
                    <button style="border-radius: 0px 20px 0px 20px" class="btn blue-gradient btn-md" type="submit"><i class="fas fa-search"></i></button>
                </form>
                
                
                
                <!--CART-->
                <%
                    ArrayList<AddCart> carts = (ArrayList<AddCart>) session.getAttribute("Cart");
                    int quantity = 0;
                    if (carts != null) {
                        for (AddCart item : carts) {
                            quantity += item.getPhoneQuantity();

                        }
                    }
                %>
                <!-- Button trigger modal-->
                <button style="border-radius: 0px 20px 0px 20px"  type="button" class="btn purple-gradient btn-md" data-toggle="modal" data-target="#modalCart">
                    <i class="fas fa-shopping-cart" aria-hidden="true"></i>
                    <span class="counter"><%=quantity%></span>
                </button>

                <!-- Modal: modalCart -->
                <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div style="border-radius: 0px 50px 0px 50px" class="modal-content">
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
                                            <th style="text-align: center;width: 300px"><b>Product name</b></th>
                                            <th style="text-align: center"><b>Price</b></th>
                                            <th style="width: 300px;text-align: center"><b>Quantity</b></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            double total = 0;
                                            double roundTotal = 0;
                                            int numberRow = 0;
                                            if (session.getAttribute("Cart") != null) {
                                                for (AddCart p : carts) {
                                                    numberRow++;
                                                    
                                        %>
                                        <tr>
                                            <th scope="row"><%=numberRow%></th>
                                            <td style="width: 300px"><%=p.getPhoneName()%></td>
                                            <td>$<%=p.getPhonePrice()%></td>
                                            <td style="width: 300px">
                                                <div class="def-number-input number-input safari_only">
                                                    <form action="PaymentControler?query=change&phoneId=<%=p.getPhoneId()%>" method="POST" id="frmCart" >
                                                    <div></div>
                                                    <button style="border-radius: 0px 15px 0px 15px" name="step" value="minus" onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="btn-sm secondary-color"><i class="fas fa-minus center"></i></button>
                                                    <input style="border-radius: 0px 20px 0px 20px" disabled name="txtQuantity" class="col-sm-5 text-center" min="1" max="9" type="number" value="<%=p.getPhoneQuantity()%>">
                                                    <button style="border-radius: 0px 20px 0px 20px" name="step" value="add" onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="btn-sm secondary-color-dark"><i class="fas fa-plus center"></i></button>
                                                        <!--<button name="quantity" class="btn-sm success-color" type="submit" form="frmCart" value="<%=request.getParameter("txtQuantity")%>"><i class="fas fa-check-circle center"></i></button>-->
                                                    </form>

                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="total">

                                            <%

                                                        total += p.getPhonePrice() * p.getPhoneQuantity();
                                                        roundTotal = (double) Math.round(total * 100) / 100;
                                                    }
                                                }
                                            %>
                                            <th scope="row"></th>
                                            <td>Total: </td>
                                            <td>$<%=roundTotal%></td>
                                            <td></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                            <div class="modal fade" id="modalConfirmEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-sm modal-notify modal-warning" role="document">
                                    <!--Content-->
                                    <div class="modal-content text-center">
                                        <p>Set Quantity</p>
                                        <!--Header-->
                                        <div class="modal-header d-flex justify-content-center">
                                            <input  type="text" name="txtQuantity"/>
                                        </div>
                                        <!--Footer-->
                                        <div class="modal-footer flex-center">
                                            <a type="button" href="" class="btn  btn-outline-warning">Yes</a>
                                            <a type="button" class="btn  btn-warning waves-effect" data-dismiss="modal">No</a>
                                        </div>
                                    </div>
                                    <!--/.Content-->
                                </div>
                            </div>
                            <%

                            %>
                            <!--Footer-->
                            <div class="modal-footer">
                                <button type="button" style="border-radius: 0px 30px 0px 30px" class="btn purple-gradient" data-dismiss="modal">Close</button>

                                <%                                    if (session.getAttribute("Cart") != null) {
                                        if (list.length >= 2) {

                                %>
                                <a href="./checkout.jsp"><button style="border-radius: 0px 30px 0px 30px" class="btn purple-gradient">Checkout</button></a>
                                <%}
                                    }
                                %>
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
