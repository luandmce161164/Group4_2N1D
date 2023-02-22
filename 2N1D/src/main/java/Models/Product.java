/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;

/**
 *
 * @author User
 */
public class Product {
    private int product_id;
    private String name;
    private float product_price;
    private String image;
    private int category_id;
    private Date publish_date;
    private String size;
    private int status;
    private String detail_product;

    public Product() {
    }

    public Product(int product_id, String name, float product_price, String image, int category_id, Date publish_date, String size, int status, String detail_product) {
        this.product_id = product_id;
        this.name = name;
        this.product_price = product_price;
        this.image = image;
        this.category_id = category_id;
        this.publish_date = publish_date;
        this.size = size;
        this.status = status;
        this.detail_product = detail_product;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getProduct_price() {
        return product_price;
    }

    public void setProduct_price(float product_price) {
        this.product_price = product_price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Date getPublish_date() {
        return publish_date;
    }

    public void setPublish_date(Date publish_date) {
        this.publish_date = publish_date;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDetail_product() {
        return detail_product;
    }

    public void setDetail_product(String detail_product) {
        this.detail_product = detail_product;
    }
    
}
