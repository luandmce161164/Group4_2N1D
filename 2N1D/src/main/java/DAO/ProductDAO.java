/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.DBConnection;
import Models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
            rs = st.executeQuery("select p.product_id, p.name, p.product_price, p.image, c.category_name, p.publish_date, p.status, p.detail_product, p.size, p.quantity from Product p \n"
                    + "join Category c on p.category_id = c.category_id \n");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
     public int AddProduct(Product pt) {
        int count = 0;
        try {            
            PreparedStatement pst = conn.prepareStatement("insert into Product values(?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, pt.getProduct_id());
            pst.setString(1, pt.getName());
            pst.setInt(3, pt.getProduct_price());
            pst.setString(4, pt.getImage());           
            pst.setInt(5, pt.getCategory_id());           
            pst.setDate(6, pt.getPublish_date());
            pst.setInt(7, 1);
            pst.setString(8, pt.getDetail_product());
            pst.setString(9, pt.getSize());
            pst.setInt(10, pt.getQuantity());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
