/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.DBConnection;
import Models.Account;
import Models.Product;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

    public ResultSet ListTopAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT TOP(5) account_id, [name], date_of_birth, phone_number FROM Account \n"
                    + "where [status] > 0 \n"
                    + "Order by account_id desc");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Account getAccount(String id) {
        Account ac = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select * from Account where account_id = ? \n");
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getInt("account_id"), rs.getString("username"), rs.getString("name"), rs.getInt("sex"), rs.getDate("date_of_birth"), rs.getString("email"), rs.getString("phone_number"), rs.getString("password"), rs.getInt("status"), rs.getString("address"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ac;
    }

    public int AddNewCustomer(Account ac) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Account values(?,?,?,?,?,?,?,?,?,?)");
            pst.setInt(1, ac.getAccount_id());
            pst.setString(2, ac.getUsername());
            pst.setString(3, ac.getName());
            pst.setInt(4, ac.getSex());
            pst.setDate(5, ac.getDate_of_birth());
            pst.setString(6, ac.getEmail());
            pst.setString(7, ac.getPhone_number());
            pst.setString(8, ac.getPassword());
            pst.setInt(9, 1);
            pst.setString(10, ac.getAddress());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int UpdateCustomer(Account ac) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Account set username=?, name=?, sex=?, date_of_birth=?, email=?, phone_number=?, password=?, address=?  where account_id=?");
            pst.setString(1, ac.getUsername());
            pst.setString(2, ac.getName());
            pst.setInt(3, ac.getSex());
            pst.setDate(4, ac.getDate_of_birth());
            pst.setString(5, ac.getEmail());
            pst.setString(6, ac.getPhone_number());
            pst.setString(7, ac.getPassword());
            pst.setString(8, ac.getAddress());
            pst.setInt(9, ac.getAccount_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int DeleteCustomer(String id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Account where account_id =?");
            pst.setString(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int getNumberOfCustomers() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select Count(account_id) as nid from Account");
            if (rs.next()) {
                n = rs.getInt("nid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }        
}

