/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Body;
import Models.Entites.Display;
import Models.Entites.Phone;
import Models.Entites.PhoneDetail;
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

    public StorageDAO() {
        dBConnection = new DBConnection();
        connection = dBConnection.getConnection();
        storage = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            String sql = "SELECT * FROM `storage`";
            PreparedStatement pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                int storageId = rs.getInt("storageId");
                int storageRAM = rs.getInt("storageRAM");
                int storageInternal = rs.getInt("storageInternal");
                int storageExternal = rs.getInt("storageExternal");

                storage.add(new Storage(storageId, storageRAM, storageInternal, storageExternal));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhoneDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Storage> getAllPhone() {
        return storage;
    }

    public Storage getPhoneById(int storageId) {
        for (Storage s : storage) {
            if (s.getStorageId() == storageId) {
                return s;
            }
        }
        return null;
    }
}
