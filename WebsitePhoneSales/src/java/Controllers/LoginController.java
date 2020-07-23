/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Helpers.SendEmail;
import Models.DAO.CustomerDAO;
import Models.DAO.UserDAO;
import Models.Entites.Customer;
import Models.Entites.User;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
        if (user != null && pass != null && request.getParameter("query").equals("admin")) {
            User admin = userDAO.login(user, pass);
            if (admin != null && admin.getUserRole().equals("admin")) {
                request.getSession().setAttribute("aUser", user);
                response.sendRedirect("./admin/index.jsp");
            } else {
                response.sendRedirect("./admin/login.jsp");
            }
            //// LOGIN USER
        } else if (user != null && pass != null && request.getParameter("query").equals("user")) {
            User uUser = userDAO.login(user, pass);
            if (uUser != null && uUser.getUserRole().equals("customer")) {
                Cookie username = new Cookie("username", uUser.getUserName());
                Cookie userId = new Cookie("userId", uUser.getUserId() + "");
                username.setMaxAge(60 * 60 * 24);
                userId.setMaxAge(60 * 60 * 24);
                response.addCookie(username);
                response.addCookie(userId);
                response.sendRedirect("./index.jsp");
            } else {
                request.getSession().setAttribute("message", "fail");
                response.sendRedirect("./login.jsp");
            }
        } //// LOGOUT ADMIN
        else if (request.getParameter("query").equals("logout")) {
            request.getSession().removeAttribute("aUser");
            response.sendRedirect("./admin/login.jsp");
        } //// LOGOUT USER
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
        if (email != null && request.getParameter("query").equals("reset")) {

            Customer customer = cdao.getCustomer(email);

            if (customer != null) {
                int newPassword = new Random().nextInt(99999999);
                int userId = customer.getUserId();
                String msg = "Hi, this is your new code: <b>" + newPassword + "</b><br>Note: for security reason, you must change your password after logging in.";
                SendEmail.sendEmail(email, "Your password has been reset", msg);
                userDAO.update(newPassword + "", "customer", userId);
                response.sendRedirect("./forget_password.jsp?message=reset&uId=" + userId);
            } else {
                response.sendRedirect("./forget_password.jsp");
            }
        }

        String code = request.getParameter("txtCode");
        String uId = request.getParameter("userId");
        String newPass = request.getParameter("textPass");
        String confirm = request.getParameter("txtConfirm");
        if (code != null && newPass != null && confirm != null) {
            int userId = Integer.parseInt(uId);
            if (getMd5(code).equals(userDAO.getUser(userId).getUserPassword())) {
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


    public static String getMd5(String input) {
        try {
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5");
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes());

            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest);

            // Convert message digest into hex value 
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
