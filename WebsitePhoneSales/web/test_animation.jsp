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




        <!--        <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="text-center">Bootstrap Editable Table <span class="fa fa-edit pull-right bigicon"></span></h4>
                        </div>
                        <div class="panel-body text-center">            
                            <div id="grid" role="grid" class="sui-grid sui-grid-core"><div class="sui-gridheader"><table class="sui-table"><colgroup><col style="width:120px"><col style="width:80px"><col><col style="width:120px"><col><col style="width:250px"><col style="width:120px"><col style="width:150px"></colgroup><thead><tr role="row" class="sui-columnheader"><th data-field="name" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Person Name</a></th><th data-field="age" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Age</a></th><th data-field="company" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Company Name</a></th><th data-field="month" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Date of Birth</a></th><th data-field="isActive" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Active</a></th><th data-field="email" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Email Address</a></th><th data-field="transport" role="columnheader" tabindex="-1" class="sui-headercell"><a href="#" class="sui-link sui-unselectable" unselectable="on" tabindex="-1">Custom Editor</a></th><th data-field="undefined" role="columnheader" tabindex="-1" class="sui-headercell">Update/Delete Column</th></tr></thead><tbody class="sui-hide"><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div><div class="sui-gridcontent"><table class="sui-table"><colgroup><col style="width:120px"><col style="width:80px"><col><col style="width:120px"><col><col style="width:250px"><col style="width:120px"><col style="width:150px"></colgroup><tbody><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Miller Gomez</td><td role="gridcell" tabindex="-1" class="sui-cell">66</td><td role="gridcell" tabindex="-1" class="sui-cell">QUILM</td><td role="gridcell" tabindex="-1" class="sui-cell">02/11/2014</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">millergomez@quilm.com</td><td role="gridcell" tabindex="-1" class="sui-cell">motorbike</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Guerra Cortez</td><td role="gridcell" tabindex="-1" class="sui-cell">47</td><td role="gridcell" tabindex="-1" class="sui-cell">INSECTUS</td><td role="gridcell" tabindex="-1" class="sui-cell">03/26/2014</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">guerracortez@insectus.com</td><td role="gridcell" tabindex="-1" class="sui-cell">car</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Guadalupe House</td><td role="gridcell" tabindex="-1" class="sui-cell">26</td><td role="gridcell" tabindex="-1" class="sui-cell">ISOTRONIC</td><td role="gridcell" tabindex="-1" class="sui-cell">02/22/2011</td><td role="gridcell" tabindex="-1" class="sui-cell">false</td><td role="gridcell" tabindex="-1" class="sui-cell">guadalupehouse@isotronic.com</td><td role="gridcell" tabindex="-1" class="sui-cell">truck</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Elisa Gallagher</td><td role="gridcell" tabindex="-1" class="sui-cell">22</td><td role="gridcell" tabindex="-1" class="sui-cell">PORTICA</td><td role="gridcell" tabindex="-1" class="sui-cell">05/11/2010</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">elisagallagher@portica.com</td><td role="gridcell" tabindex="-1" class="sui-cell">motorbike</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Aurelia Vega</td><td role="gridcell" tabindex="-1" class="sui-cell">30</td><td role="gridcell" tabindex="-1" class="sui-cell">DEEPENDS</td><td role="gridcell" tabindex="-1" class="sui-cell">10/20/2012</td><td role="gridcell" tabindex="-1" class="sui-cell">false</td><td role="gridcell" tabindex="-1" class="sui-cell">aureliavega@deepends.com</td><td role="gridcell" tabindex="-1" class="sui-cell">truck</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr><tr class="sui-alt-row" role="row"><td role="gridcell" tabindex="-1" class="sui-cell">Miller Dave</td><td role="gridcell" tabindex="-1" class="sui-cell">46</td><td role="gridcell" tabindex="-1" class="sui-cell">TESTERS</td><td role="gridcell" tabindex="-1" class="sui-cell">02/11/2012</td><td role="gridcell" tabindex="-1" class="sui-cell">true</td><td role="gridcell" tabindex="-1" class="sui-cell">millerdave@quilm.com</td><td role="gridcell" tabindex="-1" class="sui-cell">car</td><td role="gridcell" tabindex="-1" class="sui-cell sui-button-cell"><button type="button" class="sui-button sui-edit" role="button">Edit</button><button type="button" class="sui-button sui-delete" role="button">Delete</button></td></tr></tbody></table></div></div>
                        </div>
                    </div>
                </div>-->


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



        <!-- you need to include the shieldui css and js assets in order for the grids to work -->
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
        </style>

    </body>
</html>
