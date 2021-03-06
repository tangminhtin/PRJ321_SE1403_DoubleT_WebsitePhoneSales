/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.PhoneDAO;
import Models.Entites.AddCart;
import Models.Entites.Phone;
import java.io.IOException;
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

        int phoneId = Integer.parseInt(request.getParameter("phoneId")); // get phone Id

        if (phoneId != -1) {
            PhoneDAO phoneDAO = new PhoneDAO();
            HttpSession session = request.getSession();
            ArrayList<AddCart> addCart = new ArrayList<>();
            Phone phone = phoneDAO.getPhone(phoneId);

            // if session Cart is null, then set attribute for session Cart
            if (session.getAttribute("Cart") == null) {
                AddCart addCarts = new AddCart();
                int id = phone.getPhoneId();
                String name = phone.getPhoneName();
                double phonePrice = phone.getPhonePrice();
                int quantity = 1;
                // set attribute for cart
                addCarts.setPhoneId(id);
                addCarts.setPhoneName(name);
                addCarts.setPhoneQuantity(quantity);
                addCarts.setPhonePrice(phonePrice);

                // add cart into array list, then store cart in session
                addCart.add(addCarts);
                session.setAttribute("Cart", addCart);
                response.sendRedirect("./index.jsp");
            } else {
                addCart = (ArrayList<AddCart>) session.getAttribute("Cart");
                boolean check = false;
                for (AddCart p : addCart) {
                    // check if user booking in the item exist in cart, then update quantity
                    if (p.getPhoneId() == phone.getPhoneId() && request.getParameter("btn") != null) {
                        if (request.getParameter("btn").equals("ok")) {
                            p.setPhoneQuantity(p.getPhoneQuantity() + 1);
                            session.setAttribute("Cart", addCart);
                            check = true;
                            break;
                        }
                    }

                    if (p.getPhoneId() == phone.getPhoneId()) {
                        //// CHECK ADD/MINUS STEP
                        if (request.getParameter("step").equals("add")) {
                            if (p.getPhoneQuantity() < 9) {
                                p.setPhoneQuantity(p.getPhoneQuantity() + 1);
                            }
                        } else if (request.getParameter("step").equals("minus")) {
                            if (p.getPhoneQuantity() > 1) {
                                p.setPhoneQuantity(p.getPhoneQuantity() - 1);
                            } else {
                                addCart.remove(p);
                            }
                        }
                        session.setAttribute("Cart", addCart);
                        check = true;
                        break;
                    }
                }

                // item not in cart then create new item
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
                response.sendRedirect("./index.jsp");
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
