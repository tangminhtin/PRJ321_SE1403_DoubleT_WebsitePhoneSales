/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.CustomerDAO;
import Models.DAO.EmployeeDAO;
import Models.DAO.OrderDAO;
import Models.DAO.OrderDetailDAO;
import Models.DAO.ShipperDAO;
import Models.Entites.AddCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author phuct
 */
@WebServlet(name = "OrdersController", urlPatterns = {"/OrdersController"})
public class OrdersController extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            HttpSession session = request.getSession();
//            ArrayList<AddCart> cart = (ArrayList<AddCart>) session.getAttribute("Cart");
//
//            if (cart != null) {
//                out.print("<h1>Orders Success</h>");
//            }
//
//        }
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
//        processRequest(request, response);

        HttpSession session = request.getSession();
        ArrayList<AddCart> carts = (ArrayList<AddCart>) session.getAttribute("Cart");

        if (carts != null) {
            OrderDAO orderDAO = new OrderDAO();
            OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
            CustomerDAO customerDAO = new CustomerDAO();
            ShipperDAO shipperDAO = new ShipperDAO();
            EmployeeDAO employeeDAO = new EmployeeDAO();
            Random rand = new Random();

            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
            String note = request.getParameter("txtNote");

            Cookie[] cookies = request.getCookies();
            int userId = -1;

            if (cookies != null) {
                for (Cookie c : cookies) {
                    if (c.getName().equals("userId")) {
                        userId = Integer.parseInt(c.getValue());
                    }
                }
            }

//            int shipper = rand.nextInt(shipperDAO.getNumberOfShipper());
//            
//            int employee = rand.nextInt(employeeDAO.getNumberOfEmployee());
            int orderId = orderDAO.insert(quantity, totalPrice, note, customerDAO.getCustomer(userId).getCustomerId());
            for (AddCart c : carts) {
                orderDetailDAO.insert(orderId, c.getPhoneId(), 1, 1, c.getPhonePrice() * c.getPhoneQuantity(), c.getPhoneQuantity());
            }

            carts.clear();

            response.sendRedirect("./bill.jsp");
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
