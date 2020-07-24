/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entites;

import java.io.Serializable;

/**
 *
 * @author TangMinhTin - CE130438 - tintmce130438@fpt.edu.vn
 */
public class Connection implements Serializable {
    private int connectionId;
    private String connectionSIM;
    private String connectionMobileNetwork;
    private String connectionWLAN;
    private String connectionBluetooth;
    private String connectionGPS;
    private int connectionNFC;
    private int connectionRadio;
    private String connectionUSB;
    private int connectionJack;

    /**
     *
     */
    public Connection() {
    }

    /**
     *
     * @param connectionId
     * @param connectionSIM
     * @param connectionMobileNetwork
     * @param connectionWLAN
     * @param connectionBluetooth
     * @param connectionGPS
     * @param connectionNFC
     * @param connectionRadio
     * @param connectionUSB
     * @param connectionJack
     */
    public Connection(int connectionId, String connectionSIM, String connectionMobileNetwork, String connectionWLAN, String connectionBluetooth, String connectionGPS, int connectionNFC, int connectionRadio, String connectionUSB, int connectionJack) {
        this.connectionId = connectionId;
        this.connectionSIM = connectionSIM;
        this.connectionMobileNetwork = connectionMobileNetwork;
        this.connectionWLAN = connectionWLAN;
        this.connectionBluetooth = connectionBluetooth;
        this.connectionGPS = connectionGPS;
        this.connectionNFC = connectionNFC;
        this.connectionRadio = connectionRadio;
        this.connectionUSB = connectionUSB;
        this.connectionJack = connectionJack;
    }

    /**
     *
     * @return
     */
    public int getConnectionId() {
        return connectionId;
    }

    /**
     *
     * @param connectionId
     */
    public void setConnectionId(int connectionId) {
        this.connectionId = connectionId;
    }

    /**
     *
     * @return
     */
    public String getConnectionSIM() {
        return connectionSIM;
    }

    /**
     *
     * @param connectionSIM
     */
    public void setConnectionSIM(String connectionSIM) {
        this.connectionSIM = connectionSIM;
    }

    /**
     *
     * @return
     */
    public String getConnectionMobileNetwork() {
        return connectionMobileNetwork;
    }

    /**
     *
     * @param connectionMobileNetwork
     */
    public void setConnectionMobileNetwork(String connectionMobileNetwork) {
        this.connectionMobileNetwork = connectionMobileNetwork;
    }

    /**
     *
     * @return
     */
    public String getConnectionWLAN() {
        return connectionWLAN;
    }

    /**
     *
     * @param connectionWLAN
     */
    public void setConnectionWLAN(String connectionWLAN) {
        this.connectionWLAN = connectionWLAN;
    }

    /**
     *
     * @return
     */
    public String getConnectionBluetooth() {
        return connectionBluetooth;
    }

    /**
     *
     * @param connectionBluetooth
     */
    public void setConnectionBluetooth(String connectionBluetooth) {
        this.connectionBluetooth = connectionBluetooth;
    }

    /**
     *
     * @return
     */
    public String getConnectionGPS() {
        return connectionGPS;
    }

    /**
     *
     * @param connectionGPS
     */
    public void setConnectionGPS(String connectionGPS) {
        this.connectionGPS = connectionGPS;
    }

    /**
     *
     * @return
     */
    public int getConnectionNFC() {
        return connectionNFC;
    }

    /**
     *
     * @param connectionNFC
     */
    public void setConnectionNFC(int connectionNFC) {
        this.connectionNFC = connectionNFC;
    }

    /**
     *
     * @return
     */
    public int getConnectionRadio() {
        return connectionRadio;
    }

    /**
     *
     * @param connectionRadio
     */
    public void setConnectionRadio(int connectionRadio) {
        this.connectionRadio = connectionRadio;
    }

    /**
     *
     * @return
     */
    public String getConnectionUSB() {
        return connectionUSB;
    }

    /**
     *
     * @param connectionUSB
     */
    public void setConnectionUSB(String connectionUSB) {
        this.connectionUSB = connectionUSB;
    }

    /**
     *
     * @return
     */
    public int getConnectionJack() {
        return connectionJack;
    }

    /**
     *
     * @param connectionJack
     */
    public void setConnectionJack(int connectionJack) {
        this.connectionJack = connectionJack;
    }

    @Override
    public String toString() {
        return "Connection{" + "connectionId=" + connectionId + ", connectionSIM=" + connectionSIM + ", connectionMobileNetwork=" + connectionMobileNetwork + ", connectionWLAN=" + connectionWLAN + ", connectionBluetooth=" + connectionBluetooth + ", connectionGPS=" + connectionGPS + ", connectionNFC=" + connectionNFC + ", connectionRadio=" + connectionRadio + ", connectionUSB=" + connectionUSB + ", connectionJack=" + connectionJack + '}';
    }
    
}
