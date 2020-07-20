<%-- 
    Document   : google
    Created on : Jul 1, 2020, 9:18:00 PM
    Author     : tangminhtin
--%>

<%@page import="Models.DAO.*"%>
<%@page import="Models.Entites.*"%>
<%@page import="java.util.ArrayList"%>
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


    <div class="container" style="padding-bottom: 200px">
        <!--<h3 class="text-center font-weight-bold mb-5">Best sellers</h3>-->
        <div class="">
            <%  ArrayList<Phone> phones = new ArrayList<>();
                PhoneDAO phonedao = new PhoneDAO();
                PhoneDetailDAO pDetailDAO = new PhoneDetailDAO();

                phones = phonedao.getAllPhone();
                if (request.getParameter("phoneId") != null) {

                    int Id = (Integer.parseInt(request.getParameter("phoneId")));

                    PhoneDetail phoneDetail = pDetailDAO.getPhoneDetail(Id);
                    for (Phone p : phones) {
                        if (p.getPhoneId() == Id) {
            %>

            <div class="container" style="padding-bottom: 75px" >
                <div style="border-radius: 70px 70px 70px 70px" class="card h-100">
                    <!--Card image-->
                    <div class="view overlay">

                        <img style="border-radius: 70px 70px 70px 70px" class="card-img-top" src="<%=p.getPhoneImage()%>"
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
                        <p style="text-align: right">
                            <a href="PaymentControler?phoneId=<%=p.getPhoneId()%>">
                                <button style="border-radius: 0px 30px 0px 30px" class="btn aqua-gradient">
                                    <i class="fas fa-cart-plus ml-2" aria-hidden="true"></i> Add to cart
                                </button>
                            </a>
                            <button style="border-radius: 0px 30px 0px 30px" class="btn aqua-gradient" type="button" class="btn btn-warning" data-toggle="modal" data-target="#modalVM">
                                <i class="fas fa-eye"></i> Video Review
                            </button>
                        </p>

                    </div>
                </div>
                <!-- Modal: modalAbandonedCart-->
                <h4 style="font-family: inherit">
                    <b>Description</b>
                </h4>
                <br>
                <p class="card-text"><%=phoneDetail.getPhoneDetailDescription()%></p>
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->

                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                    <h4 style="font-family: inherit">
                        <b>Specifications</b>
                    </h4>
                    <br>
                    <table class="table table-bordered table-striped mb-0">
                        <thead>
                            <tr>
                                <!--Display-->
                                <th scope="row"><b>Display</b></th>
                                <th scope="col">
                                    <%
                                        int displayId = phoneDetail.getDisplayId();
                                        DisplayDAO disDisplayDAO = new DisplayDAO();
                                        Display display = disDisplayDAO.getDisplay(displayId);
                                    %>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Type display</th>
                                <td><%=display.getDisplayType()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Size display</th>
                                <td><%=display.getDisplaySize()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Resolution display</th>
                                <td><%=display.getDisplayResolution()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Protection display</th>
                                <td><%=display.getDisplayProtection()%></td>
                            </tr>
                            <tr>
                                <th scope="row"></th>
                                <td></td>
                            </tr>
                            <!--Body phone-->
                            <tr>
                                <th scope="row"><b>Body phone</b></th>
                                <td><%
                                    BodyDAO bodyDAO = new BodyDAO();
                                    int bodyId = phoneDetail.getBodyId();
                                    Body body = bodyDAO.getBody(bodyId);
                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Body build</th>
                                <td><%=body.getBodyBuild()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Body Dimensions</th>
                                <td><%=body.getBodyDimensions()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Body Weight</th>
                                <td><%=body.getBodyWeight()%></td>
                            </tr>
                            <!--Connection-->
                            <tr>
                                <th scope="row"><b>Connection</b></th>
                                <td><%
                                    ConnectionDAO connectionDAO = new ConnectionDAO();
                                    int connectionId = phoneDetail.getConnectionId();
                                    Models.Entites.Connection connection = connectionDAO.getConnection(connectionId);
                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Sim</th>
                                <td><%=connection.getConnectionSIM()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Mobile network</th>
                                <td><%=connection.getConnectionMobileNetwork()%></td>

                            </tr>
                            <tr>
                                <th scope="row">WLAN</th>
                                <td><%=connection.getConnectionWLAN()%></td>
                            </tr>
                            <tr>
                                <th scope="row">GPS</th>
                                <td><%=connection.getConnectionGPS()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Bluetooth</th>
                                <td><%=connection.getConnectionBluetooth()%></td>
                            </tr>
                            <tr>
                                <th scope="row">USB</th>
                                <td><%=connection.getConnectionUSB()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Jack</th>
                                <td><%
                                    String status = "";

                                    int jack = connection.getConnectionJack();
                                    if (jack == 1) {
                                        status = "Yes";
                                    } else {
                                        status = "No";
                                    }

                                    %>
                                    <%=status%>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">NFC</th>
                                <td><%
                                    status = "";

                                    int NFC = connection.getConnectionNFC();
                                    if (NFC == 1) {
                                        status = "Yes";
                                    } else {
                                        status = "No";
                                    }
                                    %>
                                    <%=status%>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Radio</th>
                                <td><%
                                    status = "";

                                    int radio = connection.getConnectionRadio();
                                    if (radio == 1) {
                                        status = "Yes";
                                    } else {
                                        status = "No";
                                    }
                                    %>
                                    <%=status%></td>
                            </tr>
                            <!--Main Camera-->
                            <tr>
                                <th scope="row"><b>Main camera</b></th>
                                <td><%
                                    int idMainCamera = phoneDetail.getMainCameraId();
                                    MainCameraDAO mainCameraDAO = new MainCameraDAO();
                                    MainCamera mainCamera = mainCameraDAO.getMainCamera(idMainCamera);
                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Resolution Camera</th>
                                <td><%=mainCamera.getMainCameraResolution()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Features Camera</th>
                                <td><%=mainCamera.getMainCameraFeatures()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Video Camera </th>
                                <td><%=mainCamera.getMainCameraVideo()%></td>
                            </tr>
                            <!--Selfie Camera-->
                            <tr>
                                <th scope="row"><b>Selfie camera</b></th>
                                <td><%
                                    SelfieCameraDAO selfieCameraDAO = new SelfieCameraDAO();
                                    int selfieCameraId = phoneDetail.getSelfieCameraId();
                                    SelfieCamera selfieCamera = selfieCameraDAO.getSelfieCamera(selfieCameraId);
                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Resolution Camera</th>
                                <td><%=selfieCamera.getSelfieCameraResolution()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Features Camera</th>
                                <td><%=selfieCamera.getSelfieCameraFeatures()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Video Camera </th>
                                <td><%=selfieCamera.getSelfieCameraVideo()%></td>
                            </tr>
                            <!--Storage-->
                            <tr>
                                <th scope="row"><b>Storage</b></th>
                                <td><%
                                    StorageDAO storageDAO = new StorageDAO();
                                    int storageId = phoneDetail.getStorageId();
                                    Storage storage = storageDAO.getStorage(storageId);

                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Storage External</th>
                                <td><%=storage.getStorageExternal()%>GB</td>
                            </tr>
                            <tr>
                                <th scope="row">Storage Internal</th>
                                <td><%=storage.getStorageInternal()%>GB</td>
                            </tr>
                            <tr>
                                <th scope="row">Storage RAM </th>
                                <td><%=storage.getStorageRAM()%>GB</td>
                            </tr>

                            <!--Platform -->
                            <tr>
                                <th scope="row"><b>Platform</b></th>
                                <td><%
                                    PlatformDAO platformDAO = new PlatformDAO();
                                    int platformId = phoneDetail.getPlatformId();

                                    Platform platform = platformDAO.getPlatform(platformId);

                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">OS</th>
                                <td><%=platform.getPlatformOS()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Chipset</th>
                                <td><%=platform.getPlatformChipset()%></td>
                            </tr>
                            <tr>
                                <th scope="row">CPU </th>
                                <td><%=platform.getPlatformCPU()%></td>
                            </tr>
                            <tr>
                                <th scope="row">GPU</th>
                                <td><%=platform.getPlatformGPU()%></td>
                            </tr>
                            <!--Battery-->
                            <tr>
                                <th scope="row"><b>Battery</b></th>
                                <td><%
                                    BatteryDAO batteryDAO = new BatteryDAO();
                                    int batteryId = phoneDetail.getBatteryId();
                                    Battery battery = batteryDAO.getBattery(batteryId);

                                    %></td>
                            </tr>
                            <tr>
                                <th scope="row">Battery Technology</th>
                                <td><%=battery.getBatteryTechnology()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Battery Type</th>
                                <td><%=battery.getBatteryType()%></td>
                            </tr>
                            <tr>
                                <th scope="row">Battery Capacity</th>
                                <td><%=battery.getBatteryCapacity()%>mAh</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <br>

                <!--Commentttttttttttttttttttttttttttttt-->
                <!--Section: Author Box-->
                <section class="my-5">

                    <!-- Card header -->
                    <div class="card-header border-0 font-weight-bold d-flex justify-content-between">
                        <p class="mr-4 mb-0">Comment</p>
                    </div>
                    <%
                        CustomerDAO customerDAO = new CustomerDAO();
                        CommentDAO commentDAO = new CommentDAO();

                        ArrayList<Customer> customer = new ArrayList<Customer>();
                        customer = customerDAO.getCustomers();
                        Comment comment = commentDAO.getComment(phoneDetail.getCommentId());
                        if (comment != null) {
                            for (Customer customers : customer) {
                                if (customers.getCustomerId() == comment.getCustomerId()) {
                    %>
                    <div class="media mt-4 px-1">
                        <img style="border-radius: 0px 30px 0px 30px" class="card-img-100 d-flex z-depth-1 mr-3" src="<%=customers.getCustomerImage()%>"
                             alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="font-weight-bold mt-0">
                                <a href=""><%=customers.getCustomerFullname()%></a>
                            </h5>
                            <%=comment.getCommentContent()%>
                        </div>
                    </div>
                    <%}
                            }
                        }%>
                    <!-- Quick Reply -->
                    <div class="form-group mt-4">
                        <label for="quickReplyFormComment">Your comment</label>
                        <textarea style="border-radius: 0px 30px 0px 30px" class="form-control" id="quickReplyFormComment" rows="5"></textarea>

                        <div class="text-center my-4">
                            <button style="border-radius: 0px 20px 0px 20px" class="btn btn-primary btn-md" type="submit">Post</button>
                        </div>
                    </div>
                </section>
                <!--Section: Author Box-->



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
                                <iframe width="560" height="315" src="<%=phoneDetail.getPhoneDetailVideo()%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
