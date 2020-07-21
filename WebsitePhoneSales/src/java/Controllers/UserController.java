/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.*;
import Models.Entites.Order;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author tangminhtin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 25, maxRequestSize = 1024 * 1024 * 50)
public class UserController extends HttpServlet {

    final String UPLOAD_DIRECTORY = "img/users";
    private UserDAO udao = null;
    private EmployeeDAO edao = null;
    private CustomerDAO cdao;
    private OrderDAO orderDAO = null;
    private CommentDAO commentDAO = null;
    private OrderDetailDAO orderDetailDAO = null;

    public UserController() {
        // call udao method to get the list of users
        udao = new UserDAO();
        edao = new EmployeeDAO();
        cdao = new CustomerDAO();
        orderDAO = new OrderDAO();
        commentDAO = new CommentDAO();
        orderDetailDAO = new OrderDetailDAO();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

//        response.sendRedirect("./admin/users.jsp");
//        response.sendRedirect(request.getContextPath() + "/admin/users.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("./admin/users.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String yourImage = "";

        //// USER
        String user = request.getParameter("txtUsername");
        String pass = request.getParameter("txtPassword");
        String confirm = request.getParameter("txtConfirmPassword");

        //// EMPLOYEE
        String fullname = request.getParameter("txtFullname");
        String address = request.getParameter("txtAddress");
        String phone = request.getParameter("txtPhone");
        String email = request.getParameter("txtEmail");

        //// IMAGE HANDLER
        try {
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            Part part = request.getPart("image_file");
            String filename = part.getSubmittedFileName();
            part.write(uploadPath + File.separator + filename);
            yourImage = UPLOAD_DIRECTORY + File.separator + filename;
        } catch (IOException | ServletException e) {

        }

        //// FOR UPDATE
        String roleU = request.getParameter("txtUserRole");
        String userIdU = request.getParameter("txtUserId");
        String idU = request.getParameter("txtId");

        if (request.getParameter("query").equals("add")) {
            if (user != null && pass != null && confirm != null && fullname != null
                    && address != null && phone != null && yourImage != null) {
                if (pass.equals(confirm)) {
                    int userId = udao.insert(user, pass, "staff");
                    edao.insert(fullname, address, phone, email, yourImage, userId);
                }
            }
            response.sendRedirect("./admin/users.jsp");
        } else if (request.getParameter("query").equals("addU")) {
            if (user != null && pass != null && confirm != null && fullname != null
                    && address != null && phone != null && yourImage != null) {
                if (pass.equals(confirm)) {
                    int userId = udao.insert(user, pass, "customer");
                    cdao.insert(fullname, address, phone, email, yourImage, userId);

                    Cookie username = new Cookie("username", user);
                    Cookie uId = new Cookie("userId", userId + "");

                    username.setMaxAge(60 * 60 * 24);
                    uId.setMaxAge(60 * 60 * 24);

                    response.addCookie(username);
                    response.addCookie(uId);
                    response.sendRedirect("./index.jsp");
                } else {
                    request.getSession().setAttribute("register", "fail");
                    response.sendRedirect("./register.jsp");
                }
            }
        } else if (request.getParameter("query").equals("delete")) {
            String deleteUserId = request.getParameter("deleteUserId");
            if (deleteUserId != null) {
                int userId = Integer.parseInt(deleteUserId);
                String role = udao.getRoleByUserId(userId);
                if (role.equals("staff")) {
                    edao.delete(userId);
                } else if (role.equals("customer")) {
                    int customerId = cdao.getCustomer(userId).getCustomerId();

                    if (commentDAO.getComments(customerId) != null) {
                        commentDAO.delete(customerId);
                    }

                    ArrayList<Order> orders = orderDAO.getOrders(customerId);
                    if (orders != null) {
                        for (Order o : orders) {
                            orderDetailDAO.delete(o.getOrderId());
                            orderDAO.delete(o.getOrderId());
                        }
//                        orderDAO.deleteByCusId(customerId);
                    }
                    cdao.delete(customerId);
                }
                udao.delete(userId);
            }
            response.sendRedirect("./admin/users.jsp");
        } else if (request.getParameter("query").equals("edit")) {
            if (pass != null && confirm != null) {
                if (roleU != null && userIdU != null && idU != null) {
                    if (pass.equals(confirm)) {
                        udao.update(pass, roleU, Integer.parseInt(userIdU));
                        if (roleU.equals("staff")) {
                            edao.update(fullname, address, phone, email, yourImage, Integer.parseInt(idU));
                        } else if (roleU.equals("customer")) {
                            cdao.update(fullname, address, phone, email, yourImage, Integer.parseInt(idU));
                        }
                    }
                }
            }
            response.sendRedirect("./admin/users.jsp");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
