/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.DBConnection;
import java.sql.Connection;

/**
 *
 * @author User
 */
public class AccountDAO {
    private Connection conn = null;

    public AccountDAO() {
        conn = DBConnection.getConnection();
    }
}
