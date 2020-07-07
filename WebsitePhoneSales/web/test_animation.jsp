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

<!-- Button trigger modal-->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalConfirmDelete">Launch
  modal</button>

<!--Modal: modalConfirmDelete-->
<div class="modal fade" id="modalConfirmDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-sm modal-notify modal-danger" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center">
        <p class="heading">Are you sure?</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <i class="fas fa-times fa-4x animated rotateIn"></i>

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <a href="" class="btn  btn-outline-danger">Yes</a>
        <a type="button" class="btn  btn-danger waves-effect" data-dismiss="modal">No</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: modalConfirmDelete-->









        <%@include file="components/footer.jsp" %>


    </body>
</html>
