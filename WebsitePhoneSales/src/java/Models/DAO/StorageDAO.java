/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Storage;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phuct
 */
public class StorageDAO {

    private Connection connection;
    DBConnection dBConnection;
    ResultSet rs;
    ArrayList<Storage> storage;

    /**
     *
     */
    public StorageDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        storage = new ArrayList<>();
        load();
    }

    /**
     *
     */
    public void load() {
        try {
            String sql = "SELECT * FROM `storage`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            storage.clear();
            while (rs.next()) {
                int storageId = rs.getInt("storageId");
                int storageRAM = rs.getInt("storageRAM");
                int storageInternal = rs.getInt("storageInternal");
                int storageExternal = rs.getInt("storageExternal");

                storage.add(new Storage(storageId, storageRAM, storageInternal, storageExternal));
            }
        } catch (SQLException ex) {
            Logger.getLogger(StorageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @return
     */
    public ArrayList<Storage> getAllPhone() {
        return storage;
    }

    /**
     *
     * @param storageId
     * @return
     */
    public Storage getStorage(int storageId) {
        for (Storage s : storage) {
            if (s.getStorageId() == storageId) {
                return s;
            }
        }
        return null;
    }

    /**
     *
     * @param storageId
     * @param RAM
     * @param internal
     * @param external
     * @return
     */
    public int insert(int storageId, int RAM, int internal, int external) {
        try {
            String sql = "INSERT INTO `storage`(`storageId`, `storageRAM`, `storageInternal`, `storageExternal`) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, storageId);
            pst.setInt(2, RAM);
            pst.setInt(3, internal);
            pst.setInt(4, external);
            pst.execute();
            load();
            rs = pst.executeQuery("SELECT * FROM `storage`");
            if (rs.last()) {
                return rs.getInt("storageId");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StorageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    /**
     *
     * @param RAM
     * @param internal
     * @param external
     * @param storageId
     * @return
     */
    public boolean update(int RAM, int internal, int external, int storageId) {
        try {
            String sql = "UPDATE `storage` SET `storageRAM`=?,`storageInternal`=?,`storageExternal`=? WHERE `storageId`=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, RAM);
            pst.setInt(2, internal);
            pst.setInt(3, external);
            pst.setInt(4, storageId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(StorageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     *
     * @param storageId
     * @return
     */
    public boolean delete(int storageId) {
        try {
            String sql = "DELETE FROM `storage` WHERE storageId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, storageId);
            pst.execute();
            load();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(StorageDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
