/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.UserDAO;
import Models.Entites.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author phuct
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
        
            String user = request.getParameter("txtUsername");
            String pass = request.getParameter("txtPassword");
            UserDAO userDAO = new UserDAO();
               
            //// LOGIN ADMIN
            if(user!= null && pass!= null && request.getParameter("query").equals("admin")) {
                User admin = userDAO.login(user, pass);
                if(admin!=null && admin.getUserRole().equals("admin")) {
                    request.getSession().setAttribute("aUser", user);
                    response.sendRedirect("./admin/index.jsp");
                } else {
                    response.sendRedirect("./admin/login.jsp");
                }
            //// LOGIN USER
            } else if (user!= null && pass!= null && request.getParameter("query").equals("user")) {
                User uUser = userDAO.login(user, pass);
                if(uUser!=null) {
                    Cookie username = new Cookie("username", uUser.getUserName());
                    username.setMaxAge(60 * 60 * 24);
                    response.addCookie(username);
                    response.sendRedirect("./index.jsp");
                } else {
                    request.getSession().setAttribute("message", "fail");
                    response.sendRedirect("./login.jsp");
                }
            }
            //// LOGOUT ADMIN
            else if(request.getParameter("query").equals("logout")) {
                request.getSession().removeAttribute("aUser");
                response.sendRedirect("./admin/login.jsp");
            } 
            //// LOGOUT USER
            else if(request.getParameter("query").equals("uLogout")) {
                Cookie[] list = request.getCookies();
                for (Cookie items : list) {
                    if (items.getName().equals("username")) {
                        items.setMaxAge(0);
                        response.addCookie(items);
                    }
                }
                response.sendRedirect("./index.jsp");
            }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
