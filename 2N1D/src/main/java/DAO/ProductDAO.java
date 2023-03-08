/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.DBConnection;
import Models.Product;
import Models.Order;
import Models.Order_detail;
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
            rs = st.executeQuery("select p.product_id, p.product_name, p.product_price, p.image, c.category_name, p.publish_date, p.status, p.detail_product, p.size, p.quantity from Product p \n"
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
            PreparedStatement pst = conn.prepareStatement("select p.product_id, p.product_name, p.product_price, p.image, c.category_id, p.publish_date, p.status, p.detail_product, p.size, p.quantity from Product p \n"
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

    public int UpdateProduct(Product pt) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("update Product set product_name=?, product_price=?, image=?, category_id=?, publish_date=?, status=?, detail_product=?, size=?, quantity=?  where product_id=?");
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

    public int DeleteProduct(String id) {
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

    public int getNumberOfProduct() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count(product_id) as nid from Product ");
            if (rs.next()) {
                n = rs.getInt("nid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int getOutofStock() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count(quantity) as nq from Product where quantity =0 ");
            if (rs.next()) {
                n = rs.getInt("nq");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public ResultSet ListAllOrder() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("Select o.order_id, o.order_date, a.[name], p.product_name, od.quantity, od.order_price, o.[status]"
                    + "from [Order] o join Order_detail od on o.order_id = od.order_id "
                    + "join Account a on o.account_id = a.account_id "
                    + "join Product p on od.product_id = p.product_id");
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public Order getOrder(String id) {
        Order or = null;
        try {
            PreparedStatement pst = conn.prepareStatement("select p.product_id, p.product_name, p.product_price, p.image, c.category_id, p.publish_date, p.status, p.detail_product, p.size, p.quantity from Product p \n"
                    + "join Category c on p.category_id = c.category_id where p.product_id = ? \n");
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
//            if (rs.next()) {
//                or = new Product(rs.getString("product_id"), rs.getString("name"), rs.getInt("product_price"), rs.getString("image"), rs.getInt("category_id"), rs.getDate("publish_date"), rs.getInt("status"), rs.getString("detail_product"), rs.getString("size"), rs.getInt("quantity"));
//            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return or;
    }
    
    public int getNumberOfOrders() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count(order_id) as oid from [Order] ");
            if (rs.next()) {
                n = rs.getInt("oid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public int AddOrder(Order or) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into [Order] values(?,?,?,?)");
            pst.setInt(1, or.getOrder_id());
            pst.setDate(2, or.getOrder_date());
            pst.setInt(3, or.getAccount_id());
            pst.setInt(4, or.getStatus());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public int DeleteOrder(String id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("delete from Order where Order_id=?");
            pst.setString(1, id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int AddOrderDetail(Order_detail ol) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareStatement("insert into Order_detail values(?,?,?,?,?)");
            pst.setInt(1, ol.getOrder_detail_id());
            pst.setInt(2, ol.getOrder_id());
            pst.setString(3, ol.getProduct_id());
            pst.setInt(4, ol.getQuantity());
            pst.setInt(5, ol.getOrder_price());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public int getMaxIDOrder() {
        int m = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select MAX(order_id) as [max] from [Order]");
            if (rs.next()) {
                m = rs.getInt("max");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return m;
    }
    public int getMaxIDOrderDetail() {
        int m = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select MAX(order_detail_id) as [max] from [Order_detail]");
            if (rs.next()) {
                m = rs.getInt("max");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return m;
    }
    
    public int checkIdExist(int oid) {
        int m = 0;
        int check = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select order_id from [Order]");
            while (rs.next()) {
                m = rs.getInt("order_id");
                if(oid == m){
                   check = 1;    
                   break;
                }
                else {
                    check = 0;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }
    
    public int getTotalIncome() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select sum(order_price) as nq from Order_detail");
            if (rs.next()) {
                n = rs.getInt("nq");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }
    
    public int getTotalCancelOrder() {
        int n = 0;
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("select count([status]) as nq from [Order] where [status] = 0");
            if (rs.next()) {
                n = rs.getInt("nq");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

}
