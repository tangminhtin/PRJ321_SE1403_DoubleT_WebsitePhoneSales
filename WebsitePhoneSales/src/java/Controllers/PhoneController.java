/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.DAO.BatteryDAO;
import Models.DAO.BodyDAO;
import Models.DAO.ConnectionDAO;
import Models.DAO.DisplayDAO;
import Models.DAO.MainCameraDAO;
import Models.DAO.PhoneDAO;
import Models.DAO.PhoneDetailDAO;
import Models.DAO.PlatformDAO;
import Models.DAO.SelfieCameraDAO;
import Models.DAO.StorageDAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
public class PhoneController extends HttpServlet {

    final String UPLOAD_DIRECTORY = "img/phones";
    private PhoneDetailDAO phoneDetailDAO = null;
    private PhoneDAO phoneDAO = null;
    private DisplayDAO displayDAO = null;
    private BodyDAO bodyDAO = null;
    private PlatformDAO platformDAO = null;
    private MainCameraDAO mainCameraDAO = null;
    private SelfieCameraDAO selfieCameraDAO = null;
    private StorageDAO storageDAO = null;
    private BatteryDAO batteryDAO = null;
    private ConnectionDAO connectionDAO = null;

    /**
     *
     */
    public PhoneController() {
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
        String yourImage = "";

        //// DISPLAY 
        String displayType = request.getParameter("txtDisplayType");
        String displaySize = request.getParameter("txtDisplaySize");
        String displayResolution = request.getParameter("txtDisplayResolution");
        String displayProtection = request.getParameter("txtDisplayProtection");

        //// BODY
        String bodyDimension = request.getParameter("txtBodyDimension");
        String bodyWeight = request.getParameter("txtBodyWeight");
        String bodyBuild = request.getParameter("txtBodyBuild");

        //// PLATFORM
        String os = request.getParameter("txtOS");
        String chipset = request.getParameter("txtChipset");
        String cpu = request.getParameter("txtCPU");
        String gpu = request.getParameter("txtGPU");

        //// MAIN CAMERA
        String mainCameraResolution = request.getParameter("txtMainCameraResolution");
        String mainCameraFeatures = request.getParameter("txtMainCameraFeatures");
        String mainCameraVideo = request.getParameter("txtMainCameraVideo");

        //// MAIN CAMERA
        String selfieCameraResolution = request.getParameter("txtSelfieCameraResolution");
        String selfieCameraFeatures = request.getParameter("txtSelfieCameraFeatures");
        String selfieCameraVideo = request.getParameter("txtSelfieCameraVideo");

        //// STORAGE
        String ram = request.getParameter("txtRAM");
        String internal = request.getParameter("txtInternal");
        String external = request.getParameter("txtExternal");

        //// BATTERY
        String batteryCapacity = request.getParameter("txtBatteryCapacity");
        String batteryType = request.getParameter("txtBatteryType");
        String batteryTechnology = request.getParameter("txtBatteryTechnology");

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

        //// PHONE DETAILS
        String detailDescription = request.getParameter("txtPhoneDetailDescription");
        String detailVideo = request.getParameter("txtPhoneDetailVideo");
        String detailSpecialFeatures = request.getParameter("txtPhoneDetailSpecialFeatures");

        //// PHONE 
        String phoneName = request.getParameter("txtPhoneName");
        String phoneDiscount = request.getParameter("txtPhoneDiscount");
        String phonePrice = request.getParameter("txtPhonePrice");
        String phoneDescription = request.getParameter("txtPhoneDescription");
        String radBrand = request.getParameter("radBrand");

        try {
            //// IMAGE HANDLER
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
            int id = 0;

            if (displayType != null && displaySize != null && displayResolution != null & displayProtection != null) {
                id = displayDAO.insert(displayType, displaySize, displayResolution, displayProtection);
            }

            if (bodyDimension != null && bodyBuild != null && bodyWeight != null) {
                bodyDAO.insert(id, bodyDimension, bodyWeight, bodyBuild);
            }

            if (os != null && chipset != null && cpu != null && gpu != null) {
                platformDAO.insert(id, os, chipset, cpu, gpu);
            }

            if (mainCameraFeatures != null && mainCameraResolution != null && mainCameraVideo != null) {
                mainCameraDAO.insert(id, mainCameraResolution, mainCameraFeatures, mainCameraVideo);
            }

            if (selfieCameraFeatures != null && selfieCameraResolution != null && selfieCameraVideo != null) {
                selfieCameraDAO.insert(id, selfieCameraResolution, selfieCameraFeatures, selfieCameraVideo);
            }

            if (ram != null && internal != null && external != null) {
                storageDAO.insert(id, Integer.parseInt(ram), Integer.parseInt(internal), Integer.parseInt(external));
            }

            if (batteryCapacity != null && batteryType != null && batteryTechnology != null) {
                batteryDAO.insert(id, Integer.parseInt(batteryCapacity), batteryType, batteryTechnology);
            }

            if (sim != null && mobileNetwork != null && wlan != null && bluetooth != null
                    && gps != null && usb != null && nfc != null && radio != null && jack != null) {
                connectionDAO.insert(id, sim, mobileNetwork, wlan, bluetooth, gps,
                        Integer.parseInt(nfc), Integer.parseInt(radio), usb, Integer.parseInt(jack));
            }

            if (detailDescription != null && detailVideo != null && detailSpecialFeatures != null) {
                phoneDetailDAO.insert(id, yourImage, detailDescription, detailVideo, detailSpecialFeatures, id, id, id, id, id, id, id, id);
            }

            if (phoneName != null && phoneDiscount != null && phonePrice != null
                    && phoneDescription != null && radBrand != null) {
                phoneDAO.insert(id, yourImage, phoneName, Double.parseDouble(phoneDiscount),
                        Double.parseDouble(phonePrice), phoneDescription,
                        Integer.parseInt(radBrand), id);
            }
        } else if (request.getParameter("query").equals("edit") && request.getParameter("phoneId") != null) {

            int id = Integer.parseInt(request.getParameter("phoneId"));

            if (displayType != null && displaySize != null && displayResolution != null & displayProtection != null) {
                displayDAO.update(displayType, displaySize, displayResolution, displayProtection, id);
            }

            if (bodyDimension != null && bodyBuild != null && bodyWeight != null) {
                bodyDAO.update(bodyDimension, bodyWeight, bodyBuild, id);
            }

            if (os != null && chipset != null && cpu != null && gpu != null) {
                platformDAO.update(os, chipset, cpu, gpu, id);
            }

            if (mainCameraFeatures != null && mainCameraResolution != null && mainCameraVideo != null) {
                mainCameraDAO.update(mainCameraResolution, mainCameraFeatures, mainCameraVideo, id);
            }

            if (selfieCameraFeatures != null && selfieCameraResolution != null && selfieCameraVideo != null) {
                selfieCameraDAO.update(selfieCameraResolution, selfieCameraFeatures, selfieCameraVideo, id);
            }

            if (ram != null && internal != null && external != null) {
                storageDAO.update(Integer.parseInt(ram), Integer.parseInt(internal), Integer.parseInt(external), id);
            }

            if (batteryCapacity != null && batteryType != null && batteryTechnology != null) {
                batteryDAO.update(Integer.parseInt(batteryCapacity), batteryType, batteryTechnology, id);
            }

            if (sim != null && mobileNetwork != null && wlan != null && bluetooth != null
                    && gps != null && usb != null && nfc != null && radio != null && jack != null) {
                connectionDAO.update(sim, mobileNetwork, wlan, bluetooth, gps,
                        Integer.parseInt(nfc), Integer.parseInt(radio), usb, Integer.parseInt(jack), id);
            }

            if (detailDescription != null && detailVideo != null && detailSpecialFeatures != null) {
                phoneDetailDAO.update(yourImage, detailDescription, detailVideo, detailSpecialFeatures, id);
            }

            if (phoneName != null && phoneDiscount != null && phonePrice != null
                    && phoneDescription != null && radBrand != null) {
                phoneDAO.update(yourImage, phoneName, Double.parseDouble(phoneDiscount),
                        Double.parseDouble(phonePrice), phoneDescription,
                        Integer.parseInt(radBrand), id);
            }

        } else if (request.getParameter("query").equals("delete") && request.getParameter("phoneId") != null) {
            int id = Integer.parseInt(request.getParameter("phoneId"));

            phoneDAO.update(0, id);
//            phoneDAO.delete(id);
//            phoneDetailDAO.delete(id);
//            displayDAO.delete(id);
//            bodyDAO.delete(id);
//            platformDAO.delete(id);
//            mainCameraDAO.delete(id);
//            selfieCameraDAO.delete(id);
//            storageDAO.delete(id);
//            batteryDAO.delete(id);
//            connectionDAO.delete(id);
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
