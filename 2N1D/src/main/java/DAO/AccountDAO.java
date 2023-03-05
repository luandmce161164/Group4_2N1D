/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class AccountDAO {
    private Connection conn = null;

    public AccountDAO() {
        conn = DBConnection.getConnection();
    }
    
    public ResultSet ListAllAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select * from Account");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
