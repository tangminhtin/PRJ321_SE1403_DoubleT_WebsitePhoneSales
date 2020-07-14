/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.BatteryDAO;
import Models.DAO.BodyDAO;
import Models.DAO.BrandDAO;
import Models.DAO.CommentDAO;
import Models.DAO.ConnectionDAO;
import Models.DAO.DisplayDAO;
import Models.DAO.MainCameraDAO;
import Models.DAO.PhoneDAO;
import Models.DAO.PhoneDetailDAO;
import Models.DAO.PlatformDAO;
import Models.DAO.SelfieCameraDAO;
import Models.DAO.StorageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tangminhtin
 */
public class PhoneController extends HttpServlet {
    private BrandDAO brandDAO = null;
    private PhoneDetailDAO phoneDetailDAO  = null;
    private PhoneDAO phoneDAO = null;
    private DisplayDAO displayDAO = null;
    private BodyDAO bodyDAO = null;
    private PlatformDAO platformDAO = null;
    private MainCameraDAO mainCameraDAO = null;
    private SelfieCameraDAO selfieCameraDAO = null;
    private StorageDAO storageDAO = null;
    private BatteryDAO batteryDAO = null;
    private ConnectionDAO connectionDAO = null;
    private CommentDAO commentDAO = null;
    

    public PhoneController() {
        brandDAO = new BrandDAO();
        phoneDetailDAO = new PhoneDetailDAO();
        phoneDAO = new PhoneDAO();
        displayDAO = new DisplayDAO();
        bodyDAO = new BodyDAO();
        platformDAO = new PlatformDAO();
        mainCameraDAO = new MainCameraDAO();
        storageDAO = new StorageDAO();
        selfieCameraDAO = new SelfieCameraDAO();
        batteryDAO = new BatteryDAO();
        connectionDAO = new ConnectionDAO();
        commentDAO = new CommentDAO();
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PhoneController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PhoneController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
//        response.sendRedirect("./index.jsp");
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
        
        
        
        
        response.sendRedirect("./admin/phones.jsp");
//        processRequest(request, response);
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

        





        if(request.getParameter("query").equals("add")) {
            int id=0;

            //// DISPLAY 
            String displayType = request.getParameter("txtDisplayType");
            String displaySize = request.getParameter("txtDisplaySize");
            String displayResolution = request.getParameter("txtDisplayResolution");
            String displayProtection = request.getParameter("txtDisplayProtection");
            if(displayType!=null && displaySize!=null && displayResolution!=null & displayProtection!=null) {
                id = displayDAO.insert(displayType, displaySize, displayResolution, displayProtection);
            }



            //// BODY
            String bodyDimension = request.getParameter("txtBodyDimension");
            String bodyWeight = request.getParameter("txtBodyWeight");
            String bodyBuild = request.getParameter("txtBodyBuild");
            if(bodyDimension!=null && bodyBuild!=null && bodyWeight!=null) {
                bodyDAO.insert(id, bodyDimension, bodyWeight, bodyBuild);
            }



            //// PLATFORM
            String os = request.getParameter("txtOS");
            String chipset = request.getParameter("txtChipset");
            String cpu = request.getParameter("txtCPU");
            String gpu = request.getParameter("txtGPU");

            if(os!=null && chipset!=null && cpu!=null && gpu!=null) {
                platformDAO.insert(id, os, chipset, cpu, gpu);
            }



            //// MAIN CAMERA
            String mainCameraResolution = request.getParameter("txtMainCameraResolution");
            String mainCameraFeatures = request.getParameter("txtMainCameraFeatures");
            String mainCameraVideo = request.getParameter("txtMainCameraVideo");
            if(mainCameraFeatures!=null && mainCameraResolution!=null && mainCameraVideo!=null) {
                mainCameraDAO.insert(id, mainCameraResolution, mainCameraFeatures, mainCameraVideo);
            }



            //// MAIN CAMERA
            String selfieCameraResolution = request.getParameter("txtSelfieCameraResolution");
            String selfieCameraFeatures = request.getParameter("txtSelfieCameraFeatures");
            String selfieCameraVideo = request.getParameter("txtSelfieCameraVideo");
            if(selfieCameraFeatures!=null && selfieCameraResolution!=null && selfieCameraVideo!=null) {
                selfieCameraDAO.insert(id, selfieCameraResolution, selfieCameraFeatures, selfieCameraVideo);
            }



            //// STORAGE
            String ram = request.getParameter("txtRAM");
            String internal = request.getParameter("txtInternal");
            String external = request.getParameter("txtExternal");
            if(ram!=null && internal!=null && external!=null) {
                storageDAO.insert(id, Integer.parseInt(ram), Integer.parseInt(internal), Integer.parseInt(external));
            }



            //// BATTERY
            String batteryCapacity = request.getParameter("txtBatteryCapacity");
            String batteryType = request.getParameter("txtBatteryType");
            String batteryTechnology = request.getParameter("txtBatteryTechnology");
            if(batteryCapacity!=null && batteryType!=null && batteryTechnology!=null) {
                batteryDAO.insert(id, Integer.parseInt(batteryCapacity), batteryType, batteryTechnology);
            }



            //// CONNECTION
            String sim = request.getParameter("txtSIM");
            String mobileNetwork = request.getParameter("txtMobileNetwork");
            String wlan = request.getParameter("txtWLAN");
            String bluetooth = request.getParameter("txtBluetooth");
            String gps = request.getParameter("txtGPS");
            String usb = request.getParameter("txtUSB");
            String nfc = request.getParameter("radNFC");
            String radio = request.getParameter("radRadio");
            String jack = request.getParameter("radJack");
            if(sim!=null && mobileNetwork!=null && wlan!=null && bluetooth!=null && 
                    gps!=null && usb!=null && nfc!=null && radio!=null && jack!=null) {
                connectionDAO.insert(id, sim, mobileNetwork, wlan, bluetooth, gps, 
                        Integer.parseInt(nfc), Integer.parseInt(radio), usb, Integer.parseInt(jack));
            }



            //// PHONE DETAILS
            String detailDescription = request.getParameter("txtPhoneDetailDescription");
            String detailVideo = request.getParameter("txtPhoneDetailVideo");
            String detailSpecialFeatures = request.getParameter("txtPhoneDetailSpecialFeatures");
    //        String sim = request.getParameter("txtSIM");
            if(detailDescription!=null && detailVideo!=null && detailSpecialFeatures!=null) {
                phoneDetailDAO.insert(id, "image.png", detailDescription, detailVideo, detailSpecialFeatures, id, id, id, id, id, id, id, id);
            }



            //// PHONE 
            String phoneName = request.getParameter("txtPhoneName");
            String phoneImage = request.getParameter("txtPhoneImage");
            String phoneDiscount = request.getParameter("txtPhoneDiscount");
            String phonePrice = request.getParameter("txtPhonePrice");
            String phoneDescription = request.getParameter("txtPhoneDescription");
            String radBrand = request.getParameter("radBrand");

            if(phoneName!=null && phoneImage!=null && 
                    phoneDiscount!=null && phonePrice!=null &&
                    phoneDescription!=null && radBrand!=null) {
                phoneDAO.insert(id, phoneImage, phoneName, Double.parseDouble(phoneDiscount), 
                        Double.parseDouble(phonePrice), phoneDescription, 
                        Integer.parseInt(radBrand), id);
            }
        } else if(request.getParameter("query").equals("edit")) {
            
        } else if(request.getParameter("query").equals("delete")) {
            
        }
            
            
        
        
    
        response.sendRedirect("./admin/phones.jsp");
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
