/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.*;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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

    public UserController() {
        // call udao method to get the list of users
        udao = new UserDAO();
        edao = new EmployeeDAO();
        cdao = new CustomerDAO();
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

        if (request.getParameter("query").equals("add")) {
            if (user != null && pass != null && confirm != null && fullname != null
                    && address != null && phone != null && yourImage != null) {
                if (pass.equals(confirm)) {
                    int userId = udao.insert(user, pass, "staff");
                    edao.insert(fullname, address, phone, email, yourImage, userId);
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
                    cdao.delete(userId);
                }
                udao.delete(userId);
            }
        } else if (request.getParameter("query").equals("edit")) {
            if (pass != null && confirm != null) {
                String role = request.getParameter("txtUserRole");
                String userId = request.getParameter("txtUserId");
                String id = request.getParameter("txtId");

                if (role != null && userId != null && id != null) {
                    if (pass.equals(confirm)) {
                        udao.update(pass, role, Integer.parseInt(userId));
                        if (role.equals("staff")) {
                            edao.update(fullname, address, phone, email, yourImage, Integer.parseInt(id));
                        } else if (role.equals("customer")) {
                            cdao.update(fullname, address, phone, email, yourImage, Integer.parseInt(id));
                        }
                    }
                }
            }

        }

        response.sendRedirect("./admin/users.jsp");
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
