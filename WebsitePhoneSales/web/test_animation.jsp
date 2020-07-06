<%-- 
    Document   : test_animation
    Created on : Jul 1, 2020, 6:08:26 PM
    Author     : tangminhtin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Double T Shop | Login page</title>
        <%@include file="components/head.jsp" %>
    </head>
    <body>
        <h1 style="font-family: fantasy">Test Animation Page</h1>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalQuickView">Launch
  modal</button>
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

<!--
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="text-center">Bootstrap Editable Table <span class="fa fa-edit pull-right bigicon"></span></h4>
                        </div>
                        <div class="panel-body text-center">            
                            <div id="grid" role="grid" class="sui-grid sui-grid-core"><div class="sui-gridheader"><table class="sui-table"><colgroup><col style="width:120px"><col style="width:80px"><col><col style="width:120px"><col><col style="width:250px"><col style="width:120px"><col style="width:150px"></colgroup><thead><tr role="row" class="sui-columnheader"><th data-field="name" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Person Name</a></th><th data-field="age" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Age</a></th><th data-field="company" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Company Name</a></th><th data-field="month" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Date of Birth</a></th><th data-field="isActive" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Active</a></th><th data-field="email" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Email Address</a></th><th data-field="transport" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Custom Editor</a></th><th data-field="undefined" role="columnheader" tabindex="-1" class="sui-headercell">Update/Delete Column</th></tr></thead><tbody class="sui-hide"><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div><div class="sui-gridcontent"><table class="sui-table"><colgroup><col style="width:120px"><col style="width:80px"><col><col style="width:120px"><col><col style="width:250px"><col style="width:120px"><col style="width:150px"></colgroup><tbody><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Miller Gomez</td><td role="gridcell" tabindex="-1" class="sui-cell">66</td><td role="gridcell" tabindex="-1" class="sui-cell">QUILM</td><td role="gridcell" tabindex="-1" class="sui-cell">02/11/2014</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">millergomez@quilm.com</td><td role="gridcell" tabindex="-1" class="sui-cell">motorbike</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Guerra Cortez</td><td role="gridcell" tabindex="-1" class="sui-cell">47</td><td role="gridcell" tabindex="-1" class="sui-cell">INSECTUS</td><td role="gridcell" tabindex="-1" class="sui-cell">03/26/2014</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">guerracortez@insectus.com</td><td role="gridcell" tabindex="-1" class="sui-cell">car</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Guadalupe House</td><td role="gridcell" tabindex="-1" class="sui-cell">26</td><td role="gridcell" tabindex="-1" class="sui-cell">ISOTRONIC</td><td role="gridcell" tabindex="-1" class="sui-cell">02/22/2011</td><td role="gridcell" tabindex="-1" class="sui-cell">false</td><td role="gridcell" tabindex="-1" class="sui-cell">guadalupehouse@isotronic.com</td><td role="gridcell" tabindex="-1" class="sui-cell">truck</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Elisa Gallagher</td><td role="gridcell" tabindex="-1" class="sui-cell">22</td><td role="gridcell" tabindex="-1" class="sui-cell">PORTICA</td><td role="gridcell" tabindex="-1" class="sui-cell">05/11/2010</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">elisagallagher@portica.com</td><td role="gridcell" tabindex="-1" class="sui-cell">motorbike</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Aurelia Vega</td><td role="gridcell" tabindex="-1" class="sui-cell">30</td><td role="gridcell" tabindex="-1" class="sui-cell">DEEPENDS</td><td role="gridcell" tabindex="-1" class="sui-cell">10/20/2012</td><td role="gridcell" tabindex="-1" class="sui-cell">false</td><td role="gridcell" tabindex="-1" class="sui-cell">aureliavega@deepends.com</td><td role="gridcell" tabindex="-1" class="sui-cell">truck</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Miller Dave</td><td role="gridcell" tabindex="-1" class="sui-cell">46</td><td role="gridcell" tabindex="-1" class="sui-cell">TESTERS</td><td role="gridcell" tabindex="-1" class="sui-cell">02/11/2012</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">millerdave@quilm.com</td><td role="gridcell" tabindex="-1" class="sui-cell">car</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr></tbody></table></div></div>
                        </div>
                    </div>
                </div>


        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="text-center">Bootstrap Editable Table <span class="fa fa-edit pull-right bigicon"></span></h4>
                </div>
                <div class="panel-body text-center">            
                    <div id="grid"></div>
                </div>
            </div>
        </div>









        <%@include file="components/footer.jsp" %>



         you need to include the shieldui css and js assets in order for the grids to work 
        <link rel="stylesheet" type="text/css" href="http://www.prepbootstrap.com/Content/shieldui-lite/dist/css/light/all.min.css" />
        <script type="text/javascript" src="http://www.prepbootstrap.com/Content/shieldui-lite/dist/js/shieldui-lite-all.min.js"></script>

        <script type="text/javascript" src="http://www.prepbootstrap.com/Content/data/shortGridData.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#grid").shieldGrid({
                    dataSource: {
                        data: gridData,
                        schema: {
                            fields: {
                                id: {path: "id", type: Number},
                                age: {path: "age", type: Number},
                                name: {path: "name", type: String},
                                company: {path: "company", type: String},
                                month: {path: "month", type: Date},
                                isActive: {path: "isActive", type: Boolean},
                                email: {path: "email", type: String},
                                transport: {path: "transport", type: String}
                            }
                        }
                    },
                    sorting: {
                        multiple: true
                    },
                    rowHover: false,
                    columns: [
                        {field: "name", title: "Person Name", width: "120px"},
                        {field: "age", title: "Age", width: "80px"},
                        {field: "company", title: "Company Name"},
                        {field: "month", title: "Date of Birth", format: "{0:MM/dd/yyyy}", width: "120px"},
                        {field: "isActive", title: "Active"},
                        {field: "email", title: "Email Address", width: "250px"},
                        {field: "transport", title: "Custom Editor", width: "120px"},
                        {
                            width: 150,
                            title: "Update/Delete Column",
                            buttons: [
                                {commandName: "edit", caption: "Edit"},
                                {commandName: "delete", caption: "Delete"}
                            ]
                        }
                    ],
                    editing: {
                        enabled: true,
                        mode: "popup",
                        confirmation: {
                            "delete": {
                                enabled: true,
                                template: function (item) {
                                    return "Delete row with ID = " + item.id
                                }
                            }
                        }
                    }
                });


            });
        </script>

        <style type="text/css">
            .sui-button-cell
            {
                text-align: center;
            }

            .sui-checkbox
            {
                font-size: 17px !important;
                padding-bottom: 4px !important;
            }

            .deleteButton img
            {
                margin-right: 3px;
                vertical-align: bottom;
            }

            .bigicon
            {
                color: #5CB85C;
                font-size: 20px;
            }
        </style>-->

    </body>
</html>
