<%-- 
    Document   : add_phone
    Created on : Jul 13, 2020, 2:21:17 PM
    Author     : tangminhtin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/head.jsp" %>
        <title>Add Phones | Double T Shop</title>
    </head>
    <body>
        <% 
            if(request.getSession().getAttribute("aUser")==null) {
                response.sendRedirect("./login.jsp");
            }
        %>
        
        <%@include file="components/navbar.jsp" %>

        <div id="layoutSidenav">
            <%@include file="components/sidenav.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Management Phones</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="./index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add New Phone</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <i class="fas fa-table mr-1"></i>
                                            Add New Phone
                                        </div>
                                        <div class="card-body">

                                            
                                            <!-- Default horizontal form -->
                                            <form action="../PhoneController?query=add" method="post" enctype="multipart/form-data">
                                                
                                                <!------------------PHONE------------------>
                                                
                                                <div class="form-group row">
                                                    <label for="phoneName" class="col-sm-2 col-form-label">Name</label>
                                                    <div class="col-sm-10">
                                                        <input name="txtPhoneName" type="text" class="form-control" id="phoneName" placeholder="iPhone 12 Pro Max">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="phoneImage" class="col-sm-2 col-form-label">Image</label>
                                                    <div class="col-sm-10">
                                                      <input name="image_file" type="file" id="phoneImage">
                                                    </div>
                                                </div>
                                                
                                                <!--Brand-->
                                                <div class="form-group row">
                                                    <label for="Brand" class="col-sm-2 col-form-label">Brand</label>
                                                    <div class="col-sm-10">
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input value="1" type="radio" class="custom-control-input" id="BrandApple" name="radBrand" checked>
                                                            <label class="custom-control-label" for="BrandApple">Apple</label>
                                                        </div>
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input value="2" type="radio" class="custom-control-input" id="BrandSamsung" name="radBrand">
                                                            <label class="custom-control-label" for="BrandSamsung">Samsung</label>
                                                        </div>
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input value="3" type="radio" class="custom-control-input" id="BrandGoogle" name="radBrand">
                                                            <label class="custom-control-label" for="BrandGoogle">Google</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <!--Price-->
                                                <div class="form-group row">
                                                    <label for="phonePrice" class="col-sm-2 col-form-label">Price</label>
                                                    <div class="col-sm-10">
                                                        <input name="txtPhonePrice" type="number" step="0.1" min="0" class="form-control" id="phonePrice" placeholder="$998">
                                                    </div>
                                                </div>
                                                
                                                <!--Discount-->
                                                <div class="form-group row">
                                                    <label for="phoneDiscount" class="col-sm-2 col-form-label">Discount</label>
                                                    <div class="col-sm-10">
                                                        <input name="txtPhoneDiscount" type="number" step="0.1" min="0" class="form-control" id="phoneDiscount" placeholder="$30">
                                                    </div>
                                                </div>
                                                
                                                <!--Description-->
                                                <div class="form-group row">
                                                    <label for="phoneDescription" class="col-sm-2 col-form-label">Short Description</label>
                                                    <div class="col-sm-10">
                                                      <textarea name="txtPhoneDescription" id="phoneDescription" class="form-control z-depth-1" rows="3" placeholder="New product of Apple"></textarea>
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------PHONE DETAIL------------------>
                                                
                                                <!--Description Detail-->
                                                <div class="form-group row">
                                                    <label for="phoneDetailDescription" class="col-sm-2 col-form-label">Description Detail</label>
                                                    <div class="col-sm-10">
                                                      <textarea required name="txtPhoneDetailDescription" id="phoneDetailDescription" class="form-control z-depth-1" rows="6" placeholder="Description Detail"></textarea>
                                                    </div>
                                                </div>
                                                
                                                
                                                <!--Detail Video-->
                                                <div class="form-group row">
                                                    <label for="phoneDetailVideo" class="col-sm-2 col-form-label">Link Video</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtPhoneDetailVideo" type="text" class="form-control" id="phoneName" placeholder="https://youtu.be/CnSJYa3m9DM">
                                                    </div>
                                                </div>
                                                
                                                <!--Special Features-->
                                                <div class="form-group row">
                                                    <label for="phoneDetailSpecialFeatures" class="col-sm-2 col-form-label">Special Features</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtPhoneDetailSpecialFeatures" type="text" class="form-control" id="phoneDetailSpecialFeatures" placeholder="Fingerprint (front-mounted), accelerometer...">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------DISPLAY------------------>
                                                
                                                <!--Display Type--> 
                                                <div class="form-group row">
                                                    <label for="displayType" class="col-sm-2 col-form-label">Display Type</label>
                                                    <div class="col-sm-10">
                                                        <input required name="txtDisplayType" type="text" class="form-control" id="displayType" placeholder="Retina IPS LCD capacitive touchscreen, 16M colors">
                                                    </div>
                                                </div>
                                                
                                                <!--Display Size-->
                                                <div class="form-group row">
                                                    <label for="displaySize" class="col-sm-2 col-form-label">Display Size</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtDisplaySize" type="text" class="form-control" id="displaySize" placeholder="6.5 inches, 60.9 cm2 (~65.4% screen-to-body ratio)">
                                                    </div>
                                                </div>
                                                
                                                <!--Display Resolution-->
                                                <div class="form-group row">
                                                    <label for="DisplayResolution" class="col-sm-2 col-form-label">Display Resolution</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtDisplayResolution" type="text" class="form-control" id="DisplayResolution" placeholder="2580 x 1334 pixels, 16:9 ratio (~326 ppi density)">
                                                    </div>
                                                </div>
                                                
                                                <!--Display Protection-->
                                                <div class="form-group row">
                                                    <label for="DisplayProtection" class="col-sm-2 col-form-label">Display Protection</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtDisplayProtection" type="text" class="form-control" id="DisplayProtection" placeholder="Corning Gorilla Glass 5">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------BODY------------------>
                                                
                                                <!--Body Dimension-->
                                                <div class="form-group row">
                                                    <label for="BodyDimension" class="col-sm-2 col-form-label">Body Dimension</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBodyDimension" type="text" class="form-control" id="BodyDimension" placeholder="138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)...">
                                                    </div>
                                                </div>
                                                
                                                <!--Body Weight-->
                                                <div class="form-group row">
                                                    <label for="BodyWeight" class="col-sm-2 col-form-label">Weight</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBodyWeight" type="text" class="form-control" id="BodyWeight" placeholder="148g (5.22 oz)">
                                                    </div>
                                                </div>
                                                
                                                <!--Body Build-->
                                                <div class="form-group row">
                                                    <label for="BodyBuild" class="col-sm-2 col-form-label">Body Build</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBodyBuild" type="text" class="form-control" id="BodyBuild" placeholder="Glass front, glass back, aluminum frame...">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------PLATFORM------------------>
                                                
                                                <!--OS-->
                                                <div class="form-group row">
                                                    <label for="OS" class="col-sm-2 col-form-label">OS</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtOS" type="text" class="form-control" id="OS" placeholder="iOS 14">
                                                    </div>
                                                </div>
                                                
                                                <!--Chipset-->
                                                <div class="form-group row">
                                                    <label for="Chipset" class="col-sm-2 col-form-label">Chipset</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtChipset" type="text" class="form-control" id="Chipset" placeholder="Apple A14 Bionic (7 nm+)">
                                                    </div>
                                                </div>
                                                
                                                <!--CPU-->
                                                <div class="form-group row">
                                                    <label for="CPU" class="col-sm-2 col-form-label">CPU</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtCPU" type="text" class="form-control" id="CPU" placeholder="Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)">
                                                    </div>
                                                </div>
                                                
                                                <!--GPU-->
                                                <div class="form-group row">
                                                    <label for="GPU" class="col-sm-2 col-form-label">GPU</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtGPU" type="text" class="form-control" id="GPU" placeholder="Apple GPU (4-core graphics)">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------MAIN CAMERA------------------>
                                                
                                                <!--Main Camera Resolution-->
                                                <div class="form-group row">
                                                    <label for="MainCameraResolution" class="col-sm-2 col-form-label">Main Camera Resolution</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtMainCameraResolution" type="text" class="form-control" id="MainCameraResolution" placeholder="12 MP, f/1.8 (wide), PDAF, OIS">
                                                    </div>
                                                </div>
                                                
                                                <!--Main Camera Features-->
                                                <div class="form-group row">
                                                    <label for="MainCameraFeatures" class="col-sm-2 col-form-label">Main Camera Features</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtMainCameraFeatures" type="text" class="form-control" id="MainCameraFeatures" placeholder="Quad-LED dual-tone flash, HDR, panorama">
                                                    </div>
                                                </div>
                                                
                                                <!--Main Camera Video-->
                                                <div class="form-group row">
                                                    <label for="MainCameraVideo" class="col-sm-2 col-form-label">Main Camera Video</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtMainCameraVideo" type="text" class="form-control" id="MainCameraVideo" placeholder="4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------SELFIE CAMERA------------------>
                                                
                                                <!--Selfie Camera Resolution-->
                                                <div class="form-group row">
                                                    <label for="SelfieCameraResolution" class="col-sm-2 col-form-label">Selfie Camera Resolution</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtSelfieCameraResolution" type="text" class="form-control" id="SelfieCameraResolution" placeholder="7 MP, f/2.2">
                                                    </div>
                                                </div>
                                                
                                                <!--Selfie Camera Features-->
                                                <div class="form-group row">
                                                    <label for="SelfieCameraFeatures" class="col-sm-2 col-form-label">Selfie Camera Features</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtSelfieCameraFeatures" type="text" class="form-control" id="SelfieCameraFeatures" placeholder="Face detection, HDR, panorama">
                                                    </div>
                                                </div>
                                                
                                                <!--Selfie Camera Video-->
                                                <div class="form-group row">
                                                    <label for="SelfieCameraVideo" class="col-sm-2 col-form-label">Selfie Camera Video</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtSelfieCameraVideo" type="text" class="form-control" id="SelfieCameraVideo" placeholder="1080p@30fps; gyro-EIS">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------STORAGE------------------>
                                                
                                                <!--RAM-->
                                                <div class="form-group row">
                                                    <label for="RAM" class="col-sm-2 col-form-label">RAM</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtRAM" type="number" min="0" class="form-control" id="RAM" placeholder="8GB">
                                                    </div>
                                                </div>
                                           
                                                <!--Internal-->
                                                <div class="form-group row">
                                                    <label for="Internal" class="col-sm-2 col-form-label">Internal</label>
                                                    <div class="col-sm-10">
                                                        <input required name="txtInternal" type="number" min="0" class="form-control" id="Internal" placeholder="256GB">
                                                    </div>
                                                </div>
                                           
                                                <!--External-->
                                                <div class="form-group row">
                                                    <label for="External" class="col-sm-2 col-form-label">External</label>
                                                    <div class="col-sm-10">
                                                        <input required name="txtExternal" type="number" min="0" class="form-control" id="External" placeholder="0GB">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------BATTERY------------------>
                                           
                                                <!--Battery Capacity-->
                                                <div class="form-group row">
                                                    <label for="BatteryCapacity" class="col-sm-2 col-form-label">Battery Capacity</label>
                                                    <div class="col-sm-10">
                                                        <input required name="txtBatteryCapacity" type="number" min="0" class="form-control" id="BatteryCapacity" placeholder="1821mAh">
                                                    </div>
                                                </div>
                                           
                                                <!--Battery Type-->
                                                <div class="form-group row">
                                                    <label for="BatteryType" class="col-sm-2 col-form-label">Battery Type</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBatteryType" type="text" class="form-control" id="BatteryType" placeholder="Non-removable Li-Ion">
                                                    </div>
                                                </div>
                                           
                                                <!--Battery Technology-->
                                                <div class="form-group row">
                                                    <label for="BatteryTechnology" class="col-sm-2 col-form-label">Battery Technology</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBatteryTechnology" type="text" class="form-control" id="BatteryTechnology" placeholder="Fast charging 18W, 50% in 30 min (advertised)">
                                                    </div>
                                                </div>
                                                
                                                
                                                <!------------------CONNECTION------------------>
                                           
                                                <!--SIM-->
                                                <div class="form-group row">
                                                    <label for="SIM" class="col-sm-2 col-form-label">SIM</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtSIM" type="text" class="form-control" id="SIM" placeholder="Nano-SIM and/or eSIM">
                                                    </div>
                                                </div>
                                           
                                                <!--Mobile Network-->
                                                <div class="form-group row">
                                                    <label for="MobileNetwork" class="col-sm-2 col-form-label">Mobile Network</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtMobileNetwork" type="text" class="form-control" id="MobileNetwork" placeholder="GSM/CDMA/HSPA/EVDO/LTE">
                                                    </div>
                                                </div>
                                           
                                                <!--WLAN-->
                                                <div class="form-group row">
                                                    <label for="WLAN" class="col-sm-2 col-form-label">WLAN</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtWLAN" type="text" class="form-control" id="WLAN" placeholder="Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot">
                                                    </div>
                                                </div>
                                           
                                                <!--Bluetooth-->
                                                <div class="form-group row">
                                                    <label for="Bluetooth" class="col-sm-2 col-form-label">Bluetooth</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtBluetooth" type="text" class="form-control" id="Bluetooth" placeholder="5.0, A2DP, LE">
                                                    </div>
                                                </div>
                                           
                                                <!--GPS-->
                                                <div class="form-group row">
                                                    <label for="GPS" class="col-sm-2 col-form-label">GPS</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtGPS" type="text" class="form-control" id="GPS" placeholder="Yes, with A-GPS, GLONASS">
                                                    </div>
                                                </div>
                                                
                                                 <!--USB-->
                                                <div class="form-group row">
                                                    <label for="USB" class="col-sm-2 col-form-label">USB</label>
                                                    <div class="col-sm-10">
                                                    <input required name="txtUSB" type="text" class="form-control" id="USB" placeholder="2.0, proprietary reversible connector">
                                                    </div>
                                                </div>
                                                
                                           
                                                <!--NFC-->
                                                <div class="form-group row">
                                                    <label for="NFC" class="col-sm-2 col-form-label">NFC</label>
                                                    <div class="col-sm-10">
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radNFC" value="1" type="radio" class="custom-control-input" id="NFCYes" checked>
                                                            <label class="custom-control-label" for="NFCYes">Yes</label>
                                                        </div>
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radNFC" value="0" type="radio" class="custom-control-input" id="NFCNo">
                                                            <label class="custom-control-label" for="NFCNo">No</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <!--Radio-->
                                                <div class="form-group row">
                                                    <label for="Radio" class="col-sm-2 col-form-label">Radio</label>
                                                    <div class="col-sm-10">
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radRadio" value="1" type="radio" class="custom-control-input" id="RadioYes">
                                                            <label class="custom-control-label" for="RadioYes">Yes</label>
                                                        </div>
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radRadio" value="0" type="radio" class="custom-control-input" id="RadioNo" checked>
                                                            <label class="custom-control-label" for="RadioNo">No</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                               
                                                 <!--Jack-->
                                                <div class="form-group row">
                                                    <label for="Jack" class="col-sm-2 col-form-label">Jack</label>
                                                    <div class="col-sm-10">
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radJack" value="1" type="radio" class="custom-control-input" id="JackYes">
                                                            <label class="custom-control-label" for="JackYes">Yes</label>
                                                        </div>
                                                        <div class="custom-control custom-radio custom-control-inline">
                                                            <input name="radJack" value="0" type="radio" class="custom-control-input" id="JackNo" checked>
                                                            <label class="custom-control-label" for="JackNo">No</label>
                                                        </div>
                                                    </div>
                                                </div>
                                           
                                                
                                           
                                                <!--Button Add-->
                                                <div class="form-group row">
                                                    <div class="col-sm-10">
                                                      <button type="submit" class="btn btn-primary btn-md">Add</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <!-- Default horizontal form -->




                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
    </body>
</html>
