<%-- 
    Document   : check_out
    Created on : Jun 28, 2020, 11:26:49 AM
    Author     : phuct
--%>

<%@page import="Models.Entites.Customer"%>
<%@page import="Models.DAO.CustomerDAO"%>
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
        <title >Home | Double T Shop</title>
    </head>
    <body>
        <%@include file="components/header.jsp" %>
                        
        <!--Main layout-->
        <main class="mt-5 pt-4">
            <div class="container wow fadeIn">
                <!-- Heading -->
                <h1 class="my-5 h1 text-center">Checkout Information</h1>
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-md-8 mb-4">
                        <div class="card">
                            <form action="OrdersController" class="card-body">
                                <%
                                    Cookie[] cookies = request.getCookies();
                                    int userId = -1;
                                    
                                    if(cookies!= null) {
                                        for(Cookie c: cookies) {
                                            if(c.getName().equals("userId")) {
                                                userId = Integer.parseInt(c.getValue());
                                            }
                                        }
                                    }
                                    PhoneDAO pdao = new PhoneDAO();
                                    CustomerDAO cdao = new CustomerDAO();
                                    Customer c = cdao.getCustomer(userId);
                                
                                %>
                                <!--Customer Name-->
                                <div class="md-form mb-5">
                                    <input value="<%=c.getCustomerFullname()%>" required name="txtFullname" type="text" id="txtFullname" class="form-control">
                                    <label for="txtFullname" class="">Fullname</label>
                                </div>
                                <!--Phone-->
                                <div class="md-form mb-5">
                                    <input value="<%=c.getCustomerPhone()%>" required name="txtPhone" type="text" id="txtPhone" class="form-control">
                                    <label for="txtPhone" class="">Phone</label>
                                </div>
                                <!--Email-->
                                <div class="md-form mb-5">
                                    <input value="<%=c.getCustomerEmail()%>" required name="txtEmail" type="email" id="txtEmail" class="form-control">
                                    <label for="txtEmail" class="">Email</label>
                                </div>
                                <!--address-->
                                <div class="md-form mb-5">
                                    <input value="<%=c.getCustomerAddress()%>" required name="txtAddress" type="text" id="txtAddress" class="form-control">
                                    <label for="txtAddress" class="">Address</label>
                                </div>
                                <button style="border-radius: 0px 30px 0px 30px" class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
                            </form>
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-4 mb-4">
                     
                        <!-- Heading -->
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Your cart</span>
                            <span style="border-radius: 0px 10px 0px 10px" class="badge badge-secondary badge-pill"><%=quantity%></span>
                        </h4>

                        <!-- Cart -->
                        <ul class="list-group mb-3 z-depth-1">
                            <%
                                for(AddCart cart: carts) { %>
                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <img style="border-radius: 0px 20px 0px 20px" width="50" height="50" src="<%=pdao.getPhone(cart.getPhoneId()).getPhoneImage()%>" />
                                        <h6 class="my-0 text-secondary"><%=cart.getPhoneName()%> <span style="border-radius: 0px 5px 0px 5px"  class="pink accent-2 text-white"><%=cart.getPhoneQuantity()%></span></h6>
                                    </div>
                                    <div>
                                        <span class="text-muted">$<%=cart.getPhonePrice()%></span>
                                    </div>
                                </li>
                                
                                
                            <%    
                                }
                                
                            %>
                            
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total (USD)</span>
                                <strong>$<%=roundTotal%></strong>
                            </li>
                        </ul>
                        <!-- Cart -->
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </div>
        </main>
        <!--Main layout-->
















        <%@include file="components/footer.jsp" %>
    </body>
</html>
