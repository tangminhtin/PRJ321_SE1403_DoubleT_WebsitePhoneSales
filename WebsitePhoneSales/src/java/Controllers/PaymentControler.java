/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.PhoneDAO;
import Models.Entites.AddCart;
import Models.Entites.Order;
import Models.Entites.Phone;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tangminhtin
 */
public class PaymentControler extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            int phoneId = Integer.parseInt(request.getParameter("phoneId"));

            if (phoneId != -1) {
                PhoneDAO phoneDAO = new PhoneDAO();
                HttpSession session = request.getSession();
                ArrayList<Phone> cart = new ArrayList<>();
                ArrayList<AddCart> addCart = new ArrayList<>();
                Phone phone = phoneDAO.getPhone(phoneId);

                if (session.getAttribute("Cart") == null) {

                    AddCart addCarts = new AddCart();
                    int id = phone.getPhoneId();
                    String name = phone.getPhoneName();
                    double phonePrice = phone.getPhonePrice();
                    int quantity = 1;
                    addCarts.setPhoneId(id);
                    addCarts.setPhoneName(name);
                    addCarts.setPhoneQuantity(quantity);
                    addCarts.setPhonePrice(phonePrice);

                    addCart.add(addCarts);
                    session.setAttribute("Cart", addCart);
                    response.sendRedirect("index.jsp");
                } else {
                    addCart = (ArrayList<AddCart>) session.getAttribute("Cart");
                    boolean check = false;
                    for (AddCart items : addCart) {
                        if (items.getPhoneId() == phone.getPhoneId()) {

                            items.setPhoneQuantity(items.getPhoneQuantity() + 1);
                            session.setAttribute("Cart", addCart);
                            check = true;
                            break;
                        }
                    }
                    if (check != true) {
                        AddCart addCarts = new AddCart();
                        int id = phone.getPhoneId();
                        String name = phone.getPhoneName();
                        double phonePrice = phone.getPhonePrice();
                        int quantity = 1;
                        addCarts.setPhoneId(id);
                        addCarts.setPhoneName(name);
                        addCarts.setPhoneQuantity(quantity);
                        addCarts.setPhonePrice(phonePrice);

                        addCart.add(addCarts);
                        session.setAttribute("Cart", addCart);
                    }

                    response.sendRedirect("index.jsp");
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
