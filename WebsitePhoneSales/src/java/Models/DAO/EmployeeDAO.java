/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entites.Employee;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tangminhtin
 */
public class EmployeeDAO {

    private Connection connection = null;
    private ResultSet rs = null;
    private PreparedStatement ps = null;
    private ArrayList<Employee> employees;
    private String sql = "";

    public EmployeeDAO() {
        DBConnection dbc = new DBConnection();
        connection = dbc.getConnection();
        employees = new ArrayList<>();
        load();
    }

    public void load() {
        try {
            sql = "SELECT * FROM `employee`";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            employees.clear();
            while (rs.next()) {
                employees.add(new Employee(rs.getInt("employeeId"),
                        rs.getString("employeeFullName"), rs.getString("employeeAddress"),
                        rs.getString("employeePhone"), rs.getString("employeeEmail"),
                        rs.getString("employeeImage"), rs.getInt("userId")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Employee> getEmployees() {
        return employees;
    }
    
//    public ArrayList<Employee> getEmployeeUser(ArrayList<User> users) {
//        ArrayList<Employee> matchUser = new ArrayList<>();
//        for(Employee e: employees) {
//            for(User u: users) {
//                if(e.getUserId() == u.getUserId()) {
//                    matchUser.add(e);
//                }
//            }
//        }
//        return matchUser;
//    }

   
}
