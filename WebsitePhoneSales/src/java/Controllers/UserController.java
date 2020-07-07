/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.CustomerDAO;
import Models.DAO.EmployeeDAO;
import Models.DAO.UserDAO;
import Models.Entites.Customer;
import Models.Entites.Employee;
import Models.Entites.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tangminhtin
 */
public class UserController extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();
        
        // call udao method to get the list of users
        UserDAO udao = new UserDAO();
        EmployeeDAO edao = new EmployeeDAO();
        CustomerDAO cdao = new CustomerDAO();

        ArrayList<User> users = udao.getUsers();
        ArrayList<Employee> employees = edao.getEmployees();
        ArrayList<Customer> customers = cdao.getCustomers();
        
        // add users to request object
        session.setAttribute("users", users);
        session.setAttribute("employees", employees);
        session.setAttribute("customers", customers);
        
        // get the request dispatcher objects
//        RequestDispatcher dispatcher = request.getRequestDispatcher("./admin/users.jsp");
        
        // forward the request and response objects
//        dispatcher.forward(request, response);
        response.sendRedirect(request.getContextPath() + "/admin/users.jsp");
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
        String user = request.getParameter("txtUsername");
        String pass = request.getParameter("txtPassword");
        String confirm = request.getParameter("txtConfirmPassword");
        String fullname = request.getParameter("txtFullname");
        String address = request.getParameter("txtAddress");
        String phone = request.getParameter("txtPhone");
        String image = request.getParameter("txtImage");
        
        
        
        
//        processRequest(request, response);
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
