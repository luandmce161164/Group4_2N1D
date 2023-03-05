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

    public Product getProduct(String id) {
        Product pt = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select p.product_id, p.name, p.product_price, p.image, c.category_id, p.publish_date, p.status, p.detail_product, p.size, p.quantity from Product p \n"
                    + "join Category c on p.category_id = c.category_id where p.product_id = ? \n");
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                pt = new Product(rs.getString("product_id"), rs.getString("name"), rs.getInt("product_price"), rs.getString("image"), rs.getInt("category_id"), rs.getDate("publish_date"), rs.getInt("status"), rs.getString("detail_product"), rs.getString("size"), rs.getInt("quantity"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pt;
    }

    public int AddProduct(Product pt) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Product values(?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, pt.getProduct_id());
            pst.setString(2, pt.getName());
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

    public int updateProduct(Product pt) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Product set name=?, product_price=?, image=?, category_id=?, publish_date=?, status=?, detail_product=?, size=?, quantity=?  where product_id=?");
            pst.setString(1, pt.getName());
            pst.setInt(2, pt.getProduct_price());
            pst.setString(3, pt.getImage());
            pst.setInt(4, pt.getCategory_id());
            pst.setDate(5, pt.getPublish_date());
            pst.setInt(6, pt.getStatus());
            pst.setString(7, pt.getDetail_product());
            pst.setString(8, pt.getSize());
            pst.setInt(9, pt.getQuantity());
            pst.setString(10, pt.getProduct_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int delete(String id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Product where product_id=?");
            pst.setString(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
