/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Helpers.Helper;
import Models.DAO.CustomerDAO;
import Models.DAO.UserDAO;
import Models.Entites.Customer;
import Models.Entites.User;
import java.io.IOException;
import java.util.Random;
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

        String user = request.getParameter("txtUsername"); // get username
        String pass = request.getParameter("txtPassword"); // get password
        UserDAO userDAO = new UserDAO();

        //// LOGIN ADMIN
        if (user != null && pass != null && request.getParameter("query").equals("admin")) {

            // check if admin is exist, then store user to username into session, redirect to index page
            User admin = userDAO.login(user, pass);
            if (admin != null && admin.getUserRole().equals("admin")) {
                request.getSession().setAttribute("aUser", user);
                response.sendRedirect("./admin/index.jsp");
            } else { // otherwise redirect to login page
                response.sendRedirect("./admin/login.jsp");
            }
            //// LOGIN USER
        } else if (user != null && pass != null && request.getParameter("query").equals("user")) {

            // if user is exist, then store username and userId into cookies with 1 day, redirect to index page
            User uUser = userDAO.login(user, pass);
            if (uUser != null && uUser.getUserRole().equals("customer")) {
                Cookie username = new Cookie("username", uUser.getUserName());
                Cookie userId = new Cookie("userId", uUser.getUserId() + "");
                username.setMaxAge(60 * 60 * 24);
                userId.setMaxAge(60 * 60 * 24);
                response.addCookie(username);
                response.addCookie(userId);
                response.sendRedirect("./index.jsp");
            } else { // otherwise redirect to login
                request.getSession().setAttribute("message", "fail");
                response.sendRedirect("./login.jsp");
            }
        } //// LOGOUT ADMIN remove session if admin click logout, redirect to login page
        else if (request.getParameter("query").equals("logout")) {
            request.getSession().removeAttribute("aUser");
            response.sendRedirect("./admin/login.jsp");
        } //// LOGOUT USER  remove cookies if user click logout, redirect to index page
        else if (request.getParameter("query").equals("uLogout")) {
            Cookie[] list = request.getCookies();
            for (Cookie items : list) {
                if (items.getName().equals("username")) {
                    items.setMaxAge(0);
                    response.addCookie(items);
                }
                if (items.getName().equals("userId")) {
                    items.setMaxAge(0);
                    response.addCookie(items);
                }
            }
            response.sendRedirect("./index.jsp");
        }

        CustomerDAO cdao = new CustomerDAO();
        String email = request.getParameter("txtEmail");

        // check if user want to reset password by email
        if (email != null && request.getParameter("query").equals("reset")) {
            Customer customer = cdao.getCustomer(email);

            // if customer is exist, then random code, send code to user by email
            if (customer != null) {
                int newPassword = new Random().nextInt(99999999);
                int userId = customer.getUserId();
                String msg = "Hi, this is your new code: <b>" + newPassword + "</b><br>Note: for security reason, you must change your password after logging in.";
                Helper.sendEmail(email, "Your password has been reset", msg);
                userDAO.update(newPassword + "", "customer", userId); // store random code as a password
                response.sendRedirect("./forget_password.jsp?message=reset&uId=" + userId);
            } else {
                response.sendRedirect("./forget_password.jsp");
            }
        }

        // get information of reset password
        String code = request.getParameter("txtCode");
        String uId = request.getParameter("userId");
        String newPass = request.getParameter("textPass");
        String confirm = request.getParameter("txtConfirm");

        // check user entered code, pass, confirm if ok then update password, redirect to login page
        if (code != null && newPass != null && confirm != null) {
            int userId = Integer.parseInt(uId);
            if (Helper.getMd5(code).equals(userDAO.getUser(userId).getUserPassword())) {
                if (newPass.equals(confirm)) {
                    userDAO.update(newPass, "customer", userId);
                    response.sendRedirect("./login.jsp");
                }
            }
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
