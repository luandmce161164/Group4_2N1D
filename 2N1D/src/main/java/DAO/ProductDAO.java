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
public class ProductDAO {

    private Connection conn = null;

    public ProductDAO() {
        conn = DBConnection.getConnection();
    }

    public ResultSet ListAllProduct() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select p.product_id, p.name, p.product_price, p.image, c.category_name, p.publish_date, p.size, p.status, p.detail_product from Product p join Category c on p.category_id = c.category_id");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }        
}
